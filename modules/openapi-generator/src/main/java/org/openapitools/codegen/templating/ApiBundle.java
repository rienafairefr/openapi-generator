package org.openapitools.codegen.templating;

import java.util.*;

import org.openapitools.codegen.CodegenSecurity;

public class ApiBundle extends BaseBundle {

    private OperationsBundle operations;
    private String _package;
    private List<Map<String, String>> imports = new ArrayList<>();
    private String basePath;
    private String basePathWithoutHost;
    private String contextPath;
    private String baseName;
    private String apiPackage;
    private String modelPackage;
    private String classname;
    private String classVarName;
    private String importPath;
    private String classFilename;
    private Map<String, Object> vendorExtensions = new HashMap<>();
    private boolean sortParamsByRequiredFlag;
    private Set<String> modelImports = new HashSet<>();
    private String commonPath;
    private Collection<CodegenSecurity> authMethods = new ArrayList<>();
    private boolean hasMore;

    public ApiBundle() {
        super();
    }

    public ApiBundle(Map<String, Object> objs) {
        super(objs);
    }


    // hacky workaround for the templating engine to fetch truly dynamic values
    @Override
    public Object get(Object k){
        switch((String) k) {
            case "hasImport" : return !imports.isEmpty();
            case "hasAuthMethods" : return !authMethods.isEmpty();
        }
        return super.get(k);
    }

    @Override
    public boolean containsKey(Object k){
        if ("hasImport".equals(k)) {
            return true;
        } else if ("hasAuthMethods".equals(k)) {
            return true;
        }
        return super.containsKey(k);
    }

    // getters and setters. Each setter puts the value in the underlying Map

    public String getPackage() {
        return _package;
    }

    public void setPackage(String _package) {
        this._package = _package;
        put("package", _package);
    }


    public List<Map<String, String>> getImports() {
        return imports;
    }

    public void setImports(List<Map<String, String>> imports) {
        this.imports = imports;
        put("imports", imports);
    }


    public String getBasePath() {
        return basePath;
    }

    public void setBasePath(String basePath) {
        this.basePath = basePath;
        put("basePath", basePath);
    }


    public String getBasePathWithoutHost() {
        return basePathWithoutHost;
    }

    public void setBasePathWithoutHost(String basePathWithoutHost) {
        this.basePathWithoutHost = basePathWithoutHost;
        put("basePathWithoutHost", basePathWithoutHost);
    }


    public String getContextPath() {
        return contextPath;
    }

    public void setContextPath(String contextPath) {
        this.contextPath = contextPath;
        put("contextPath", contextPath);
    }


    public String getBaseName() {
        return baseName;
    }

    public void setBaseName(String baseName) {
        this.baseName = baseName;
        put("baseName", baseName);
    }


    public String getApiPackage() {
        return apiPackage;
    }

    public void setApiPackage(String apiPackage) {
        this.apiPackage = apiPackage;
        put("apiPackage", apiPackage);
    }


    public String getModelPackage() {
        return modelPackage;
    }

    public void setModelPackage(String modelPackage) {
        this.modelPackage = modelPackage;
        put("modelPackage", modelPackage);
    }


    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
        put("classname", classname);
    }


    public String getClassVarName() {
        return classVarName;
    }

    public void setClassVarName(String classVarName) {
        this.classVarName = classVarName;
        put("classVarName", classVarName);
    }


    public String getImportPath() {
        return importPath;
    }

    public void setImportPath(String importPath) {
        this.importPath = importPath;
        put("importPath", importPath);
    }


    public String getClassFilename() {
        return classFilename;
    }

    public void setClassFilename(String classFilename) {
        this.classFilename = classFilename;
        put("classFilename", classFilename);
    }


    public Map<String, Object> getVendorExtensions() {
        return vendorExtensions;
    }

    public void setVendorExtensions(Map<String, Object> vendorExtensions) {
        this.vendorExtensions = vendorExtensions;
        put("vendorExtensions", vendorExtensions);
    }


    public boolean isSortParamsByRequiredFlag() {
        return sortParamsByRequiredFlag;
    }

    public void setSortParamsByRequiredFlag(boolean sortParamsByRequiredFlag) {
        this.sortParamsByRequiredFlag = sortParamsByRequiredFlag;
        put("sortParamsByRequiredFlag", sortParamsByRequiredFlag);
    }


    public OperationsBundle getOperations() {
        return this.operations;
    }

    public void setOperations(OperationsBundle operations) {
        this.operations = operations;
        put("operations", operations);
    }


    public Set<String> getModelImports() {
        return modelImports;
    }

    public void setModelImports(Set<String> modelImports) {
        this.modelImports = modelImports;
        put("modelImports", modelImports);
    }


    public String getCommonPath() {
        return commonPath;
    }

    public void setCommonPath(String commonPath) {
        this.commonPath = commonPath;
        put("commonPath", commonPath);
    }


    public Collection<CodegenSecurity> getAuthMethods() {
        return authMethods;
    }

    public void setAuthMethods(Collection<CodegenSecurity> authMethods) {
        this.authMethods = authMethods;
        put("authMethods", authMethods);
    }


    public boolean getHasMore() {
        return hasMore;
    }

    public void setHasMore(boolean hasMore) {
        this.hasMore = hasMore;
        put("hasMore", hasMore);
    }
}
