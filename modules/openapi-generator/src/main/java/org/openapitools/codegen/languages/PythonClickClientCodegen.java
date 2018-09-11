package org.openapitools.codegen.languages;

import com.samskivert.mustache.DefaultCollector;
import com.samskivert.mustache.Escapers;
import com.samskivert.mustache.Mustache;
import io.swagger.v3.oas.models.Operation;
import org.openapitools.codegen.CodegenOperation;
import org.openapitools.codegen.SupportingFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sun.reflect.generics.tree.Tree;

import java.util.*;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

class Node {
    public CodegenOperation operation;
    public String cliName;
    public Map<String, Node> children = new TreeMap<>();
    public boolean hasChildren = false;

    private static final Pattern SEPARATOR = Pattern.compile("\\|");

    public Node(CodegenOperation operation, String cliName) {
        this.operation = operation;
        this.cliName = cliName;
    }

    public Node() {
    }

    public Node getChild(String name, CodegenOperation operation) {
        if (children.containsKey(name)) {
            return children.get(name);
        }

        hasChildren = true;
        Node result = new Node(operation, name);
        children.put(name, result);
        return result;
    }

    public Map<String, Node> getChildren() {
        return Collections.unmodifiableMap(children);
    }
}

class TreeWalker {

    Node root = new Node();

    private static final Pattern SEPARATOR = Pattern.compile("\\/(?!\\{)");

    public void addPath(String path, CodegenOperation operation) {
        List<String> names = new ArrayList<>(Arrays.asList(SEPARATOR.split(path)));
        names.remove(0);

        Node node = root;

        for (String name : names)
            node = node.getChild(name, operation);
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

    TreeWalker walker = new TreeWalker();

    @Override
    public void addOperationToGroup(String tag, String resourcePath, Operation operation, CodegenOperation co, Map<String, List<CodegenOperation>> operations) {
        super.addOperationToGroup(tag, resourcePath, operation, co, operations);
        walker.addPath(co.path+ "/" + co.httpMethod, co);
    }

    @Override
    public Map<String, Object> postProcessSupportingFileData(Map<String, Object> objs) {
        objs.put("cliRoot", walker.root);
        return objs;
    }

    @Override
    public Mustache.Compiler processCompiler(Mustache.Compiler compiler) {
        return super.processCompiler(compiler);
    }
}
