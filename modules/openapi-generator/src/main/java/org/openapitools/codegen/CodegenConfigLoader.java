/*
 * Copyright 2018 OpenAPI-Generator Contributors (https://openapi-generator.tech)
 * Copyright 2018 SmartBear Software
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.openapitools.codegen;

import static java.util.ServiceLoader.load;

import java.util.ArrayList;
import java.util.List;
import java.util.ServiceLoader;

public class CodegenConfigLoader {
    /**
     * Tries to load config class with SPI first, then with class name directly from classpath
     *
     * @param name name of config, or full qualified class name in classpath
     * @return config class
     */
    public static CodegenConfig forName(String name) {
        ServiceLoader<CodegenConfig> loader = load(CodegenConfig.class);

        StringBuilder availableConfigs = new StringBuilder();

        for (CodegenConfig config : loader) {
            if (config.getName().equals(name)) {
                return config;
            }

            availableConfigs.append(config.getName()).append("\n");
        }

        // else try to load directly
        try {
            return (CodegenConfig) Class.forName(name).newInstance();
        } catch (Exception e) {
            throw new GeneratorNotFoundException("Can't load config class with name '".concat(name) + "'\nAvailable:\n" + availableConfigs.toString(), e);
        }
    }

    public static List<CodegenConfig> getAll() {
        ServiceLoader<CodegenConfig> loader = ServiceLoader.load(CodegenConfig.class);
        List<CodegenConfig> output = new ArrayList<CodegenConfig>();
        for (CodegenConfig aLoader : loader) {
            output.add(aLoader);
        }
        return output;
    }

    private static boolean nullOrMatches(Object value, Object configValue){
        if (value == null) return true;
        return value.equals(configValue);
    }

    public static CodegenConfig forKey(String lang, String framework, String type)
            throws GeneratorNotFoundException, AmbiguousGeneratorException {
        ServiceLoader<CodegenConfig> loader = ServiceLoader.load(CodegenConfig.class);
        List<CodegenConfig> output = new ArrayList<>();

        for (CodegenConfig codegenConfig : loader) {
            if (nullOrMatches(lang, codegenConfig.getLanguage()) &&
                    nullOrMatches(framework, codegenConfig.getFramework()) &&
                    nullOrMatches(type, codegenConfig.getTag())) {
                output.add(codegenConfig);
            }
        }
        if (output.size() == 0 ) throw new GeneratorNotFoundException();
        if (output.size() > 1 ) throw new AmbiguousGeneratorException();
        return output.get(0);
    }

    public static CodegenConfig forKey(String generatorName, String lang, String framework, String type) {
        try {
            return forName(generatorName);
        } catch(GeneratorNotFoundException ex) {
            return forKey(lang, framework, type);
        }
    }
}
