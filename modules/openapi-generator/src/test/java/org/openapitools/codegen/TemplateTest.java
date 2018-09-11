package org.openapitools.codegen;

import com.samskivert.mustache.Mustache;
import com.samskivert.mustache.Template;
import org.openapitools.codegen.languages.PythonClickClientCodegen;
import org.testng.annotations.Test;

import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.List;


public class TemplateTest {
    private String template = "{{#children}}i{{> partial_cli }}{{/children}}";

    @Test
    public void RecursivePartialTest() {
        DefaultGenerator generator = new DefaultGenerator();
        CodegenConfig config = new PythonClickClientCodegen();
        Mustache.Compiler compiler = Mustache.compiler();
        Template tmpl = compiler
                .withLoader(name -> generator.getTemplateReader(generator.getFullTemplateFile(config, name + ".mustache")))
                .defaultValue("")
                .compile(template);

        Object bundle = new Object(){
            List<Object> children = Arrays.asList(new Object(){
                List<Object> children = Arrays.asList(new Object(){
                    boolean children = false;
                });
            });
        };


        String value = tmpl.execute(bundle);

        assert value.equals("ii");
    }
}
