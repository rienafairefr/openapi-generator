=begin
#OpenAPI Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'uri'

module Petstore
  class FakeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # creates an XmlItem
    # this route creates an XmlItem
    # @param xml_item [XmlItem] XmlItem Body
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_xml_item(xml_item, opts = {})
      create_xml_item_with_http_info(xml_item, opts)
      nil
    end

    # creates an XmlItem
    # this route creates an XmlItem
    # @param xml_item [XmlItem] XmlItem Body
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_xml_item_with_http_info(xml_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.create_xml_item ...'
      end
      # verify the required parameter 'xml_item' is set
      if @api_client.config.client_side_validation && xml_item.nil?
        fail ArgumentError, "Missing the required parameter 'xml_item' when calling FakeApi.create_xml_item"
      end
      # resource path
      local_var_path = '/fake/create_xml_item'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/xml; charset=utf-8', 'application/xml; charset=utf-16', 'text/xml', 'text/xml; charset=utf-8', 'text/xml; charset=utf-16'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(xml_item)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#create_xml_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test serialization of outer boolean types
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :body Input boolean as post body
    # @return [Boolean]
    def fake_outer_boolean_serialize(opts = {})
      data, _status_code, _headers = fake_outer_boolean_serialize_with_http_info(opts)
      data
    end

    # Test serialization of outer boolean types
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :body Input boolean as post body
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def fake_outer_boolean_serialize_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.fake_outer_boolean_serialize ...'
      end
      # resource path
      local_var_path = '/fake/outer/boolean'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Boolean')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#fake_outer_boolean_serialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test serialization of object with outer number type
    # @param [Hash] opts the optional parameters
    # @option opts [OuterComposite] :body Input composite as post body
    # @return [OuterComposite]
    def fake_outer_composite_serialize(opts = {})
      data, _status_code, _headers = fake_outer_composite_serialize_with_http_info(opts)
      data
    end

    # Test serialization of object with outer number type
    # @param [Hash] opts the optional parameters
    # @option opts [OuterComposite] :body Input composite as post body
    # @return [Array<(OuterComposite, Integer, Hash)>] OuterComposite data, response status code and response headers
    def fake_outer_composite_serialize_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.fake_outer_composite_serialize ...'
      end
      # resource path
      local_var_path = '/fake/outer/composite'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OuterComposite')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#fake_outer_composite_serialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test serialization of outer number types
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :body Input number as post body
    # @return [Float]
    def fake_outer_number_serialize(opts = {})
      data, _status_code, _headers = fake_outer_number_serialize_with_http_info(opts)
      data
    end

    # Test serialization of outer number types
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :body Input number as post body
    # @return [Array<(Float, Integer, Hash)>] Float data, response status code and response headers
    def fake_outer_number_serialize_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.fake_outer_number_serialize ...'
      end
      # resource path
      local_var_path = '/fake/outer/number'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Float')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#fake_outer_number_serialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test serialization of outer string types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body Input string as post body
    # @return [String]
    def fake_outer_string_serialize(opts = {})
      data, _status_code, _headers = fake_outer_string_serialize_with_http_info(opts)
      data
    end

    # Test serialization of outer string types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body Input string as post body
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def fake_outer_string_serialize_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.fake_outer_string_serialize ...'
      end
      # resource path
      local_var_path = '/fake/outer/string'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#fake_outer_string_serialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # For this test, the body for this request much reference a schema named `File`.
    # @param body [FileSchemaTestClass] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def test_body_with_file_schema(body, opts = {})
      test_body_with_file_schema_with_http_info(body, opts)
      nil
    end

    # For this test, the body for this request much reference a schema named &#x60;File&#x60;.
    # @param body [FileSchemaTestClass] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_body_with_file_schema_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_body_with_file_schema ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FakeApi.test_body_with_file_schema"
      end
      # resource path
      local_var_path = '/fake/body-with-file-schema'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_body_with_file_schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param query [String] 
    # @param body [User] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def test_body_with_query_params(query, body, opts = {})
      test_body_with_query_params_with_http_info(query, body, opts)
      nil
    end

    # @param query [String] 
    # @param body [User] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_body_with_query_params_with_http_info(query, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_body_with_query_params ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling FakeApi.test_body_with_query_params"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FakeApi.test_body_with_query_params"
      end
      # resource path
      local_var_path = '/fake/body-with-query-params'

      # query parameters
      query_params = {}
      query_params[:'query'] = query

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_body_with_query_params\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # To test \"client\" model
    # To test \"client\" model
    # @param body [Client] client model
    # @param [Hash] opts the optional parameters
    # @return [Client]
    def test_client_model(body, opts = {})
      data, _status_code, _headers = test_client_model_with_http_info(body, opts)
      data
    end

    # To test \&quot;client\&quot; model
    # To test \&quot;client\&quot; model
    # @param body [Client] client model
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Integer, Hash)>] Client data, response status code and response headers
    def test_client_model_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_client_model ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling FakeApi.test_client_model"
      end
      # resource path
      local_var_path = '/fake'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_client_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # @param number [Float] None
    # @param double [Float] None
    # @param pattern_without_delimiter [String] None
    # @param byte [String] None
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integer None
    # @option opts [Integer] :int32 None
    # @option opts [Integer] :int64 None
    # @option opts [Float] :float None
    # @option opts [String] :string None
    # @option opts [File] :binary None
    # @option opts [Date] :date None
    # @option opts [DateTime] :date_time None
    # @option opts [String] :password None
    # @option opts [String] :callback None
    # @return [nil]
    def test_endpoint_parameters(number, double, pattern_without_delimiter, byte, opts = {})
      test_endpoint_parameters_with_http_info(number, double, pattern_without_delimiter, byte, opts)
      nil
    end

    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
    # @param number [Float] None
    # @param double [Float] None
    # @param pattern_without_delimiter [String] None
    # @param byte [String] None
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :integer None
    # @option opts [Integer] :int32 None
    # @option opts [Integer] :int64 None
    # @option opts [Float] :float None
    # @option opts [String] :string None
    # @option opts [File] :binary None
    # @option opts [Date] :date None
    # @option opts [DateTime] :date_time None
    # @option opts [String] :password None
    # @option opts [String] :callback None
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_endpoint_parameters_with_http_info(number, double, pattern_without_delimiter, byte, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_endpoint_parameters ...'
      end
      # verify the required parameter 'number' is set
      if @api_client.config.client_side_validation && number.nil?
        fail ArgumentError, "Missing the required parameter 'number' when calling FakeApi.test_endpoint_parameters"
      end
      if @api_client.config.client_side_validation && number > 543.2
        fail ArgumentError, 'invalid value for "number" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 543.2.'
      end

      if @api_client.config.client_side_validation && number < 32.1
        fail ArgumentError, 'invalid value for "number" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 32.1.'
      end

      # verify the required parameter 'double' is set
      if @api_client.config.client_side_validation && double.nil?
        fail ArgumentError, "Missing the required parameter 'double' when calling FakeApi.test_endpoint_parameters"
      end
      if @api_client.config.client_side_validation && double > 123.4
        fail ArgumentError, 'invalid value for "double" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 123.4.'
      end

      if @api_client.config.client_side_validation && double < 67.8
        fail ArgumentError, 'invalid value for "double" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 67.8.'
      end

      # verify the required parameter 'pattern_without_delimiter' is set
      if @api_client.config.client_side_validation && pattern_without_delimiter.nil?
        fail ArgumentError, "Missing the required parameter 'pattern_without_delimiter' when calling FakeApi.test_endpoint_parameters"
      end
      pattern = Regexp.new(/^[A-Z].*/)
      if @api_client.config.client_side_validation && pattern_without_delimiter !~ pattern
        fail ArgumentError, "invalid value for 'pattern_without_delimiter' when calling FakeApi.test_endpoint_parameters, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'byte' is set
      if @api_client.config.client_side_validation && byte.nil?
        fail ArgumentError, "Missing the required parameter 'byte' when calling FakeApi.test_endpoint_parameters"
      end
      if @api_client.config.client_side_validation && !opts[:'integer'].nil? && opts[:'integer'] > 100
        fail ArgumentError, 'invalid value for "opts[:"integer"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'integer'].nil? && opts[:'integer'] < 10
        fail ArgumentError, 'invalid value for "opts[:"integer"]" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'int32'].nil? && opts[:'int32'] > 200
        fail ArgumentError, 'invalid value for "opts[:"int32"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'int32'].nil? && opts[:'int32'] < 20
        fail ArgumentError, 'invalid value for "opts[:"int32"]" when calling FakeApi.test_endpoint_parameters, must be greater than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:'float'].nil? && opts[:'float'] > 987.6
        fail ArgumentError, 'invalid value for "opts[:"float"]" when calling FakeApi.test_endpoint_parameters, must be smaller than or equal to 987.6.'
      end

      pattern = Regexp.new(/[a-z]/i)
      if @api_client.config.client_side_validation && !opts[:'string'].nil? && opts[:'string'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"string\"]' when calling FakeApi.test_endpoint_parameters, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'password'].nil? && opts[:'password'].to_s.length > 64
        fail ArgumentError, 'invalid value for "opts[:"password"]" when calling FakeApi.test_endpoint_parameters, the character length must be smaller than or equal to 64.'
      end

      if @api_client.config.client_side_validation && !opts[:'password'].nil? && opts[:'password'].to_s.length < 10
        fail ArgumentError, 'invalid value for "opts[:"password"]" when calling FakeApi.test_endpoint_parameters, the character length must be great than or equal to 10.'
      end

      # resource path
      local_var_path = '/fake'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params['number'] = number
      form_params['double'] = double
      form_params['pattern_without_delimiter'] = pattern_without_delimiter
      form_params['byte'] = byte
      form_params['integer'] = opts[:'integer'] if !opts[:'integer'].nil?
      form_params['int32'] = opts[:'int32'] if !opts[:'int32'].nil?
      form_params['int64'] = opts[:'int64'] if !opts[:'int64'].nil?
      form_params['float'] = opts[:'float'] if !opts[:'float'].nil?
      form_params['string'] = opts[:'string'] if !opts[:'string'].nil?
      form_params['binary'] = opts[:'binary'] if !opts[:'binary'].nil?
      form_params['date'] = opts[:'date'] if !opts[:'date'].nil?
      form_params['dateTime'] = opts[:'date_time'] if !opts[:'date_time'].nil?
      form_params['password'] = opts[:'password'] if !opts[:'password'].nil?
      form_params['callback'] = opts[:'callback'] if !opts[:'callback'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['http_basic_test']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_endpoint_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # To test enum parameters
    # To test enum parameters
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :enum_header_string_array Header parameter enum test (string array)
    # @option opts [String] :enum_header_string Header parameter enum test (string) (default to '-efg')
    # @option opts [Array<String>] :enum_query_string_array Query parameter enum test (string array)
    # @option opts [String] :enum_query_string Query parameter enum test (string) (default to '-efg')
    # @option opts [Integer] :enum_query_integer Query parameter enum test (double)
    # @option opts [Float] :enum_query_double Query parameter enum test (double)
    # @option opts [Array<String>] :enum_form_string_array Form parameter enum test (string array) (default to '$')
    # @option opts [String] :enum_form_string Form parameter enum test (string) (default to '-efg')
    # @return [nil]
    def test_enum_parameters(opts = {})
      test_enum_parameters_with_http_info(opts)
      nil
    end

    # To test enum parameters
    # To test enum parameters
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :enum_header_string_array Header parameter enum test (string array)
    # @option opts [String] :enum_header_string Header parameter enum test (string)
    # @option opts [Array<String>] :enum_query_string_array Query parameter enum test (string array)
    # @option opts [String] :enum_query_string Query parameter enum test (string)
    # @option opts [Integer] :enum_query_integer Query parameter enum test (double)
    # @option opts [Float] :enum_query_double Query parameter enum test (double)
    # @option opts [Array<String>] :enum_form_string_array Form parameter enum test (string array)
    # @option opts [String] :enum_form_string Form parameter enum test (string)
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_enum_parameters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_enum_parameters ...'
      end
      allowable_values = [">", "$"]
      if @api_client.config.client_side_validation && opts[:'enum_header_string_array'] && !opts[:'enum_header_string_array'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"enum_header_string_array\", must include one of #{allowable_values}"
      end
      allowable_values = ["_abc", "-efg", "(xyz)"]
      if @api_client.config.client_side_validation && opts[:'enum_header_string'] && !allowable_values.include?(opts[:'enum_header_string'])
        fail ArgumentError, "invalid value for \"enum_header_string\", must be one of #{allowable_values}"
      end
      allowable_values = [">", "$"]
      if @api_client.config.client_side_validation && opts[:'enum_query_string_array'] && !opts[:'enum_query_string_array'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"enum_query_string_array\", must include one of #{allowable_values}"
      end
      allowable_values = ["_abc", "-efg", "(xyz)"]
      if @api_client.config.client_side_validation && opts[:'enum_query_string'] && !allowable_values.include?(opts[:'enum_query_string'])
        fail ArgumentError, "invalid value for \"enum_query_string\", must be one of #{allowable_values}"
      end
      allowable_values = [1, -2]
      if @api_client.config.client_side_validation && opts[:'enum_query_integer'] && !allowable_values.include?(opts[:'enum_query_integer'])
        fail ArgumentError, "invalid value for \"enum_query_integer\", must be one of #{allowable_values}"
      end
      allowable_values = [1.1, -1.2]
      if @api_client.config.client_side_validation && opts[:'enum_query_double'] && !allowable_values.include?(opts[:'enum_query_double'])
        fail ArgumentError, "invalid value for \"enum_query_double\", must be one of #{allowable_values}"
      end
      allowable_values = [">", "$"]
      if @api_client.config.client_side_validation && opts[:'enum_form_string_array'] && !opts[:'enum_form_string_array'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"enum_form_string_array\", must include one of #{allowable_values}"
      end
      allowable_values = ["_abc", "-efg", "(xyz)"]
      if @api_client.config.client_side_validation && opts[:'enum_form_string'] && !allowable_values.include?(opts[:'enum_form_string'])
        fail ArgumentError, "invalid value for \"enum_form_string\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/fake'

      # query parameters
      query_params = {}
      query_params[:'enum_query_string_array'] = @api_client.build_collection_param(opts[:'enum_query_string_array'], :csv) if !opts[:'enum_query_string_array'].nil?
      query_params[:'enum_query_string'] = opts[:'enum_query_string'] if !opts[:'enum_query_string'].nil?
      query_params[:'enum_query_integer'] = opts[:'enum_query_integer'] if !opts[:'enum_query_integer'].nil?
      query_params[:'enum_query_double'] = opts[:'enum_query_double'] if !opts[:'enum_query_double'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      header_params[:'enum_header_string_array'] = @api_client.build_collection_param(opts[:'enum_header_string_array'], :csv) if !opts[:'enum_header_string_array'].nil?
      header_params[:'enum_header_string'] = opts[:'enum_header_string'] if !opts[:'enum_header_string'].nil?

      # form parameters
      form_params = {}
      form_params['enum_form_string_array'] = @api_client.build_collection_param(opts[:'enum_form_string_array'], :csv) if !opts[:'enum_form_string_array'].nil?
      form_params['enum_form_string'] = opts[:'enum_form_string'] if !opts[:'enum_form_string'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_enum_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fake endpoint to test group parameters (optional)
    # Fake endpoint to test group parameters (optional)
    # @param required_string_group [Integer] Required String in group parameters
    # @param required_boolean_group [Boolean] Required Boolean in group parameters
    # @param required_int64_group [Integer] Required Integer in group parameters
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :string_group String in group parameters
    # @option opts [Boolean] :boolean_group Boolean in group parameters
    # @option opts [Integer] :int64_group Integer in group parameters
    # @return [nil]
    def test_group_parameters(required_string_group, required_boolean_group, required_int64_group, opts = {})
      test_group_parameters_with_http_info(required_string_group, required_boolean_group, required_int64_group, opts)
      nil
    end

    # Fake endpoint to test group parameters (optional)
    # Fake endpoint to test group parameters (optional)
    # @param required_string_group [Integer] Required String in group parameters
    # @param required_boolean_group [Boolean] Required Boolean in group parameters
    # @param required_int64_group [Integer] Required Integer in group parameters
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :string_group String in group parameters
    # @option opts [Boolean] :boolean_group Boolean in group parameters
    # @option opts [Integer] :int64_group Integer in group parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_group_parameters_with_http_info(required_string_group, required_boolean_group, required_int64_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_group_parameters ...'
      end
      # verify the required parameter 'required_string_group' is set
      if @api_client.config.client_side_validation && required_string_group.nil?
        fail ArgumentError, "Missing the required parameter 'required_string_group' when calling FakeApi.test_group_parameters"
      end
      # verify the required parameter 'required_boolean_group' is set
      if @api_client.config.client_side_validation && required_boolean_group.nil?
        fail ArgumentError, "Missing the required parameter 'required_boolean_group' when calling FakeApi.test_group_parameters"
      end
      # verify the required parameter 'required_int64_group' is set
      if @api_client.config.client_side_validation && required_int64_group.nil?
        fail ArgumentError, "Missing the required parameter 'required_int64_group' when calling FakeApi.test_group_parameters"
      end
      # resource path
      local_var_path = '/fake'

      # query parameters
      query_params = {}
      query_params[:'required_string_group'] = required_string_group
      query_params[:'required_int64_group'] = required_int64_group
      query_params[:'string_group'] = opts[:'string_group'] if !opts[:'string_group'].nil?
      query_params[:'int64_group'] = opts[:'int64_group'] if !opts[:'int64_group'].nil?

      # header parameters
      header_params = {}
      header_params[:'required_boolean_group'] = required_boolean_group
      header_params[:'boolean_group'] = opts[:'boolean_group'] if !opts[:'boolean_group'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_group_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # test inline additionalProperties
    # @param param [Hash<String, String>] request body
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def test_inline_additional_properties(param, opts = {})
      test_inline_additional_properties_with_http_info(param, opts)
      nil
    end

    # test inline additionalProperties
    # @param param [Hash<String, String>] request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_inline_additional_properties_with_http_info(param, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_inline_additional_properties ...'
      end
      # verify the required parameter 'param' is set
      if @api_client.config.client_side_validation && param.nil?
        fail ArgumentError, "Missing the required parameter 'param' when calling FakeApi.test_inline_additional_properties"
      end
      # resource path
      local_var_path = '/fake/inline-additionalProperties'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(param)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_inline_additional_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # test json serialization of form data
    # @param param [String] field1
    # @param param2 [String] field2
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def test_json_form_data(param, param2, opts = {})
      test_json_form_data_with_http_info(param, param2, opts)
      nil
    end

    # test json serialization of form data
    # @param param [String] field1
    # @param param2 [String] field2
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_json_form_data_with_http_info(param, param2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FakeApi.test_json_form_data ...'
      end
      # verify the required parameter 'param' is set
      if @api_client.config.client_side_validation && param.nil?
        fail ArgumentError, "Missing the required parameter 'param' when calling FakeApi.test_json_form_data"
      end
      # verify the required parameter 'param2' is set
      if @api_client.config.client_side_validation && param2.nil?
        fail ArgumentError, "Missing the required parameter 'param2' when calling FakeApi.test_json_form_data"
      end
      # resource path
      local_var_path = '/fake/jsonFormData'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params['param'] = param
      form_params['param2'] = param2

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FakeApi#test_json_form_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
