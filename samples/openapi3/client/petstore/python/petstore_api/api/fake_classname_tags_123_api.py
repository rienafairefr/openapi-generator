# coding: utf-8

"""
    OpenAPI Petstore

    This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\  # noqa: E501

    OpenAPI spec version: 1.0.0
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from petstore_api.api_client import ApiClient


class FakeClassnameTags123Api(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def test_classname(self, client, **kwargs):  # noqa: E501
        """To test class name in snake case  # noqa: E501

        To test class name in snake case  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.test_classname(client, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Client client: client model (required)
        :return: Client
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.test_classname_with_http_info(client, **kwargs)  # noqa: E501
        else:
            (data) = self.test_classname_with_http_info(client, **kwargs)  # noqa: E501
            return data

    def test_classname_with_http_info(self, client, **kwargs):  # noqa: E501
        """To test class name in snake case  # noqa: E501

        To test class name in snake case  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.test_classname_with_http_info(client, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Client client: client model (required)
        :return: Client
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['client']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method test_classname" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'client' is set
        if ('client' not in local_var_params or
                local_var_params['client'] is None):
            raise ValueError("Missing the required parameter `client` when calling `test_classname`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'client' in local_var_params:
            body_params = local_var_params['client']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key_query']  # noqa: E501

        # multiple potential response types
        response_types = {
            200: 'Client'
        }

        return self.api_client.call_api(
            '/fake_classname_test', 'PATCH',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_types=response_types,
            response_type='Client',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
