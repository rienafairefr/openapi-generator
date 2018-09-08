package org.openapitools.codegen.languages;

import io.swagger.v3.oas.models.Operation;
import org.openapitools.codegen.CodegenOperation;
import org.openapitools.codegen.SupportingFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.*;
import java.util.stream.Collectors;

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
        apiTemplateFiles.put("api_cli.mustache", ".py");
        modelTemplateFiles.put("model_cli.mustache", ".py");
    }

    @Override
    public Map<String, Object> postProcessOperationsWithModels(Map<String, Object> objs, List<Object> allModels){
        Map<String, Object> operations = (Map<String, Object>) objs.get("operations");

        List<CodegenOperation> operationList = (List<CodegenOperation>) operations.get("operation");
        List<CodegenOperation> groups = new ArrayList<CodegenOperation>();
        Comparator<CodegenOperation> comparator = (element1, element2) -> {
            int length1 = element1.path.split("/").length;
            int length2 = element2.path.split("/").length;
            if (length1 == length2){
                if (element1.httpMethod!=null && element2.httpMethod !=null) {
                    boolean get1 = element1.httpMethod.equalsIgnoreCase("GET");
                    boolean get2 = element2.httpMethod.equalsIgnoreCase("GET");
                    if (get1)
                        return -1;
                    if (get2)
                        return 1;
                }
                return String.CASE_INSENSITIVE_ORDER.compare(element1.path, element2.path);
            }else{
                return length1 - length2;
            }
        };
        operationList.sort(comparator);

        CodegenOperation root = operationList.get(0);
        groups.add(root);

        operationList.removeIf(o-> o != root && o.path.equals(root.path));

        for (CodegenOperation thisEntry : operationList) {
            if (thisEntry == root) {
                continue;
            }

            search:
            while (true) {
                String current = thisEntry.path;
                int lastSlash = current.lastIndexOf("/");
                if (lastSlash == -1) {
                    break;
                }
                String parentPath = current.substring(0, lastSlash);
                for (CodegenOperation thatEntry : operationList) {
                    if (thatEntry.path.equals(parentPath)) {
                        thisEntry.parent = thatEntry;
                        thatEntry.isGroup = true;
                        break search;
                    }
                }
                CodegenOperation group = new CodegenOperation();
                group.path = parentPath;
                thisEntry.parent = group;

                Operation op = new Operation();
                String operationId = toOperationId(
                        getOrGenerateOperationId(op, parentPath, null));
                group.operationIdLowerCase = operationId.toLowerCase();
                group.isGroup = true;
                groups.add(group);

                thisEntry = group;
            }
        }
        groups = groups.stream().distinct().collect(Collectors.toList());

        for (CodegenOperation entry: operationList){
            LOGGER.debug(entry.toString());
        }

        groups.sort(comparator);
        Map<String, Object> groupsField = new HashMap<>();
        groupsField.put("group", groups);

        objs.put("groups", groups);
        return objs;
    }

}
