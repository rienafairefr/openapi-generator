package org.openapitools.codegen.languages;

import com.google.common.collect.Iterables;
import com.samskivert.mustache.Mustache;
import io.swagger.models.HttpMethod;
import io.swagger.v3.oas.models.Operation;
import org.openapitools.codegen.CodegenOperation;
import org.openapitools.codegen.CodegenParameter;
import org.openapitools.codegen.SupportingFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;
import java.util.regex.Pattern;

class CommandNode {
    public String name;
    public String fullName;
    public CodegenOperation operation;
    public String cliName;
    public Map<String, CommandNode> children = new TreeMap<>();
    public CommandNode parent;
    public boolean isSingleCommandGroup = false;
    public boolean isGroup = false;


    private static final Map<HttpMethod, String> map = new HashMap<>();
    static{
        map.put(HttpMethod.GET, "get");
        map.put(HttpMethod.POST, "create");
        map.put( HttpMethod.PUT, "update");
        map.put( HttpMethod.DELETE, "delete");
        map.put( HttpMethod.OPTIONS, "options");
        map.put( HttpMethod.HEAD, "fetch");
        map.put( HttpMethod.PATCH, "modify");
    }

    private static final Pattern FORWARD_SLASH = Pattern.compile("\\/");

    public CommandNode(CodegenOperation operation, String name, CommandNode parent) {
        this.operation = operation;
        this.name = name;
        this.parent = parent;

        try {
            HttpMethod httpMethod = HttpMethod.valueOf(name);
            this.cliName = map.get(httpMethod);
        } catch(IllegalArgumentException ignored) {
            this.cliName = FORWARD_SLASH.split(name)[0];
        }

        if (this.parent != null ) {
            if (this.parent.parent == null) {
                // parent is main
                this.fullName = this.cliName;
            } else {
                this.fullName = this.parent.fullName + "_" + this.cliName;
            }
        } else {
            this.fullName = this.operation.operationId;
        }
    }

    public CommandNode() {
        this.fullName = "main";
    }

    public CommandNode getChild(String name, CodegenOperation operation) {
        if (children.containsKey(name)) {
            return children.get(name);
        }

        CommandNode result = new CommandNode(operation, name, this);
        children.put(name, result);
        return result;
    }

    @Override
    public String toString() {
        return name + " " + cliName + " " + operation + " " + isGroup;
    }

    public void print() {
        print("", true);
    }

    private void print(String prefix, boolean isTail) {
        System.out.println(prefix + (isTail ? "└── " : "├── ") + this.fullName);

        List<CommandNode> childrenNodes = new ArrayList<>(children.values());
        for (int i = 0; i < childrenNodes.size() - 1; i++) {
            childrenNodes.get(i).print(prefix + (isTail ? "    " : "│   "), false);
        }
        if (childrenNodes.size() > 0) {
            childrenNodes.get(children.size() - 1)
                    .print(prefix + (isTail ?"    " : "│   "), true);
        }
    }

    public Map<String, CommandNode> getChildren() {
        return Collections.unmodifiableMap(children);
    }
}

class TreeWalker {

    CommandNode root = new CommandNode();

    private static final Pattern SEPARATOR = Pattern.compile("\\/(?!\\{)");

    public void addOperation(String path, CodegenOperation operation) {
        List<String> names = new ArrayList<>(Arrays.asList(SEPARATOR.split(path)));
        names.remove(0);

        CommandNode commandNode = root;

        for (String name : names) {
            try {
                HttpMethod httpMethod = HttpMethod.valueOf(name);
                commandNode = commandNode.getChild(name, operation);
            } catch (IllegalArgumentException ignored) {
                commandNode = commandNode.getChild(name, null);
            }
        }
    }

    public List<CommandNode> walk() {
        return walk(root, new ArrayList<>());
    }

    private List<CommandNode> walk(CommandNode commandNode, List<CommandNode> current){
        current.add(commandNode);
        if (commandNode.children.size() > 0) {
            commandNode.isGroup = true;
            if (commandNode.children.size() == 1) {
                if (commandNode.children.containsKey("GET")) {
                    CommandNode child = commandNode.children.get("GET");
                    current.remove(child);
                    commandNode.isSingleCommandGroup = true;
                    commandNode.operation = child.operation;
                }
            }
            for (CommandNode child: commandNode.children.values()) {
                walk(child, current);
            }
        }
        if (commandNode.operation != null) {
            if (!commandNode.operation.returnTypeIsPrimitive) {
                commandNode.isGroup = true;
            }
        }
        return current;
    }
}

public class PythonClickClientCodegen extends PythonClientCodegen {
    private static final Logger LOGGER = LoggerFactory.getLogger(PythonClickClientCodegen.class);;

    @Override
    public String getName() {
        return "python-click";
    }

    @Override
    public void processOpts(){
        super.processOpts();
        supportingFiles.add(new SupportingFile("cli.mustache", packageName, "cli.py"));
        modelTemplateFiles.put("model_cli.mustache", "_cli.py");
    }

    private static final Pattern FORWARD_SLASH = Pattern.compile("\\/");

    @Override
    public Map<String, Object> postProcessSupportingFileData(Map<String, Object> objs) {
        objs = super.postProcessSupportingFileData(objs);

        Map<String, Object> apiInfo = (Map<String, Object>) objs.get("apiInfo");
        List<Map<String, Object>> apis = (List<Map<String, Object>>) apiInfo.get("apis");

        List<CodegenOperation> operations = new ArrayList<>();

        for (Map<String, Object> api: apis) {
            List<CodegenOperation> apiOperations = (List<CodegenOperation>) ((Map<String, Object>) api.get("operations")).get("operation");
            operations.addAll(apiOperations);
        }

        TreeWalker walker = new TreeWalker();

        for (CodegenOperation co: operations) {
            walker.addOperation(co.path+ "/" + co.httpMethod, co);
        }

        objs.put("click", true);

        @SuppressWarnings("unchecked")
        Map<String, CodegenParameter> cliPathParamsMap = new HashMap<>();
        for (CodegenOperation codegenOperation: operations) {
            for (CodegenParameter param: codegenOperation.pathParams) {
                CodegenParameter codegenParameter = param.copy();
                codegenParameter.hasMore = true;
                cliPathParamsMap.put(codegenParameter.paramName, codegenParameter);
            }
        }

        List<CodegenParameter> cliPathParams = new ArrayList<>(cliPathParamsMap.values());
        try {
            CodegenParameter codegenParameter = Iterables.getLast(cliPathParams);
            codegenParameter.hasMore = false;
        } catch (NoSuchElementException ignored) {
        }

        walker.root.print();

        List<CommandNode> cliCommands = walker.walk();

        for (CommandNode node: cliCommands) {
            if (node.name != null && node.name.contains("/")){
                node.children
                String pathParams = node.name.replace(node.cliName + "/", "");

            }
        }

        objs.put("cliCommands", cliCommands);
        objs.put("cliPathParams", cliPathParams);

        return objs;
    }

    TreeWalker walker = new TreeWalker();

    @Override
    public void addOperationToGroup(String tag, String resourcePath, Operation operation, CodegenOperation co, Map<String, List<CodegenOperation>> operations) {
        super.addOperationToGroup(tag, resourcePath, operation, co, operations);
        walker.addOperation(co.path + "/" + co.httpMethod, co);
    }

    @Override
    public Mustache.Compiler processCompiler(Mustache.Compiler compiler) {
        return super.processCompiler(compiler);
    }
}
