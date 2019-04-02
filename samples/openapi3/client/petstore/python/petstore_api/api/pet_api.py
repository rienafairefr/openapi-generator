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
from petstore_api.exceptions import (
    ApiTypeError,
    ApiValueError
)


class PetApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def add_pet(self, pet, **kwargs):  # noqa: E501
        """Add a new pet to the store  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.add_pet(pet, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Pet pet: Pet object that needs to be added to the store (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.add_pet_with_http_info(pet, **kwargs)  # noqa: E501
        else:
            (data) = self.add_pet_with_http_info(pet, **kwargs)  # noqa: E501
            return data

    def add_pet_with_http_info(self, pet, **kwargs):  # noqa: E501
        """Add a new pet to the store  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.add_pet_with_http_info(pet, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Pet pet: Pet object that needs to be added to the store (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_hosts = ['http://petstore.swagger.io/v2', 'http://path-server-test.petstore.local/v2']  # noqa: E501
        local_var_host = local_var_hosts[0]
        if kwargs.get('_host_index'):
            if int(kwags.get('_host_index')) < 0 or int(kawgs.get('_host_index')) >= len(local_var_hosts):
                raise ApiValueError("Invalid host index. Must be 0 <= index < %s" % len(local_var_host))
            local_var_host = local_var_hosts[int(kwargs.get('_host_index'))]
        local_var_params = locals()

        all_params = ['pet']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params and key != "_host_index":
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method add_pet" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet' is set
        if ('pet' not in local_var_params or
                local_var_params['pet'] is None):
            raise ApiValueError("Missing the required parameter `pet` when calling `add_pet`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'pet' in local_var_params:
            body_params = local_var_params['pet']
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json', 'application/xml'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            _host=local_var_host,
            collection_formats=collection_formats)

    def delete_pet(self, pet_id, **kwargs):  # noqa: E501
        """Deletes a pet  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_pet(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: Pet id to delete (required)
        :param str api_key:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.delete_pet_with_http_info(pet_id, **kwargs)  # noqa: E501
        else:
            (data) = self.delete_pet_with_http_info(pet_id, **kwargs)  # noqa: E501
            return data

    def delete_pet_with_http_info(self, pet_id, **kwargs):  # noqa: E501
        """Deletes a pet  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_pet_with_http_info(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: Pet id to delete (required)
        :param str api_key:
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['pet_id', 'api_key']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method delete_pet" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet_id' is set
        if ('pet_id' not in local_var_params or
                local_var_params['pet_id'] is None):
            raise ApiValueError("Missing the required parameter `pet_id` when calling `delete_pet`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'pet_id' in local_var_params:
            path_params['petId'] = local_var_params['pet_id']  # noqa: E501

        query_params = []

        header_params = {}
        if 'api_key' in local_var_params:
            header_params['api_key'] = local_var_params['api_key']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet/{petId}', 'DELETE',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def find_pets_by_status(self, status, **kwargs):  # noqa: E501
        """Finds Pets by status  # noqa: E501

        Multiple status values can be provided with comma separated strings  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.find_pets_by_status(status, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[str] status: Status values that need to be considered for filter (required)
        :return: list[Pet]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.find_pets_by_status_with_http_info(status, **kwargs)  # noqa: E501
        else:
            (data) = self.find_pets_by_status_with_http_info(status, **kwargs)  # noqa: E501
            return data

    def find_pets_by_status_with_http_info(self, status, **kwargs):  # noqa: E501
        """Finds Pets by status  # noqa: E501

        Multiple status values can be provided with comma separated strings  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.find_pets_by_status_with_http_info(status, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[str] status: Status values that need to be considered for filter (required)
        :return: list[Pet]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['status']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method find_pets_by_status" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'status' is set
        if ('status' not in local_var_params or
                local_var_params['status'] is None):
            raise ApiValueError("Missing the required parameter `status` when calling `find_pets_by_status`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'status' in local_var_params:
            query_params.append(('status', local_var_params['status']))  # noqa: E501
            collection_formats['status'] = 'csv'  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/xml', 'application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet/findByStatus', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[Pet]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def find_pets_by_tags(self, tags, **kwargs):  # noqa: E501
        """Finds Pets by tags  # noqa: E501

        Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.find_pets_by_tags(tags, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[str] tags: Tags to filter by (required)
        :return: list[Pet]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.find_pets_by_tags_with_http_info(tags, **kwargs)  # noqa: E501
        else:
            (data) = self.find_pets_by_tags_with_http_info(tags, **kwargs)  # noqa: E501
            return data

    def find_pets_by_tags_with_http_info(self, tags, **kwargs):  # noqa: E501
        """Finds Pets by tags  # noqa: E501

        Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.find_pets_by_tags_with_http_info(tags, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param list[str] tags: Tags to filter by (required)
        :return: list[Pet]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['tags']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method find_pets_by_tags" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'tags' is set
        if ('tags' not in local_var_params or
                local_var_params['tags'] is None):
            raise ApiValueError("Missing the required parameter `tags` when calling `find_pets_by_tags`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'tags' in local_var_params:
            query_params.append(('tags', local_var_params['tags']))  # noqa: E501
            collection_formats['tags'] = 'csv'  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/xml', 'application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet/findByTags', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[Pet]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_pet_by_id(self, pet_id, **kwargs):  # noqa: E501
        """Find pet by ID  # noqa: E501

        Returns a single pet  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_pet_by_id(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet to return (required)
        :return: Pet
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_pet_by_id_with_http_info(pet_id, **kwargs)  # noqa: E501
        else:
            (data) = self.get_pet_by_id_with_http_info(pet_id, **kwargs)  # noqa: E501
            return data

    def get_pet_by_id_with_http_info(self, pet_id, **kwargs):  # noqa: E501
        """Find pet by ID  # noqa: E501

        Returns a single pet  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_pet_by_id_with_http_info(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet to return (required)
        :return: Pet
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['pet_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_pet_by_id" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet_id' is set
        if ('pet_id' not in local_var_params or
                local_var_params['pet_id'] is None):
            raise ApiValueError("Missing the required parameter `pet_id` when calling `get_pet_by_id`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'pet_id' in local_var_params:
            path_params['petId'] = local_var_params['pet_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/xml', 'application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/pet/{petId}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Pet',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def update_pet(self, pet, **kwargs):  # noqa: E501
        """Update an existing pet  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_pet(pet, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Pet pet: Pet object that needs to be added to the store (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.update_pet_with_http_info(pet, **kwargs)  # noqa: E501
        else:
            (data) = self.update_pet_with_http_info(pet, **kwargs)  # noqa: E501
            return data

    def update_pet_with_http_info(self, pet, **kwargs):  # noqa: E501
        """Update an existing pet  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_pet_with_http_info(pet, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Pet pet: Pet object that needs to be added to the store (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_hosts = ['http://petstore.swagger.io/v2', 'http://path-server-test.petstore.local/v2']  # noqa: E501
        local_var_host = local_var_hosts[0]
        if kwargs.get('_host_index'):
            if int(kwags.get('_host_index')) < 0 or int(kawgs.get('_host_index')) >= len(local_var_hosts):
                raise ApiValueError("Invalid host index. Must be 0 <= index < %s" % len(local_var_host))
            local_var_host = local_var_hosts[int(kwargs.get('_host_index'))]
        local_var_params = locals()

        all_params = ['pet']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params and key != "_host_index":
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method update_pet" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet' is set
        if ('pet' not in local_var_params or
                local_var_params['pet'] is None):
            raise ApiValueError("Missing the required parameter `pet` when calling `update_pet`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'pet' in local_var_params:
            body_params = local_var_params['pet']
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json', 'application/xml'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet', 'PUT',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            _host=local_var_host,
            collection_formats=collection_formats)

    def update_pet_with_form(self, pet_id, **kwargs):  # noqa: E501
        """Updates a pet in the store with form data  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_pet_with_form(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet that needs to be updated (required)
        :param str name: Updated name of the pet
        :param str status: Updated status of the pet
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.update_pet_with_form_with_http_info(pet_id, **kwargs)  # noqa: E501
        else:
            (data) = self.update_pet_with_form_with_http_info(pet_id, **kwargs)  # noqa: E501
            return data

    def update_pet_with_form_with_http_info(self, pet_id, **kwargs):  # noqa: E501
        """Updates a pet in the store with form data  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_pet_with_form_with_http_info(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet that needs to be updated (required)
        :param str name: Updated name of the pet
        :param str status: Updated status of the pet
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['pet_id', 'name', 'status']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method update_pet_with_form" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet_id' is set
        if ('pet_id' not in local_var_params or
                local_var_params['pet_id'] is None):
            raise ApiValueError("Missing the required parameter `pet_id` when calling `update_pet_with_form`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'pet_id' in local_var_params:
            path_params['petId'] = local_var_params['pet_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'name' in local_var_params:
            form_params.append(('name', local_var_params['name']))  # noqa: E501
        if 'status' in local_var_params:
            form_params.append(('status', local_var_params['status']))  # noqa: E501

        body_params = None
        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/x-www-form-urlencoded'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet/{petId}', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def upload_file(self, pet_id, **kwargs):  # noqa: E501
        """uploads an image  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.upload_file(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet to update (required)
        :param str additional_metadata: Additional data to pass to server
        :param file file: file to upload
        :return: ApiResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.upload_file_with_http_info(pet_id, **kwargs)  # noqa: E501
        else:
            (data) = self.upload_file_with_http_info(pet_id, **kwargs)  # noqa: E501
            return data

    def upload_file_with_http_info(self, pet_id, **kwargs):  # noqa: E501
        """uploads an image  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.upload_file_with_http_info(pet_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet to update (required)
        :param str additional_metadata: Additional data to pass to server
        :param file file: file to upload
        :return: ApiResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['pet_id', 'additional_metadata', 'file']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method upload_file" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet_id' is set
        if ('pet_id' not in local_var_params or
                local_var_params['pet_id'] is None):
            raise ApiValueError("Missing the required parameter `pet_id` when calling `upload_file`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'pet_id' in local_var_params:
            path_params['petId'] = local_var_params['pet_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'additional_metadata' in local_var_params:
            form_params.append(('additionalMetadata', local_var_params['additional_metadata']))  # noqa: E501
        if 'file' in local_var_params:
            local_var_files['file'] = local_var_params['file']  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/pet/{petId}/uploadImage', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='ApiResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)

    def upload_file_with_required_file(self, pet_id, required_file, **kwargs):  # noqa: E501
        """uploads an image (required)  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.upload_file_with_required_file(pet_id, required_file, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet to update (required)
        :param file required_file: file to upload (required)
        :param str additional_metadata: Additional data to pass to server
        :return: ApiResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.upload_file_with_required_file_with_http_info(pet_id, required_file, **kwargs)  # noqa: E501
        else:
            (data) = self.upload_file_with_required_file_with_http_info(pet_id, required_file, **kwargs)  # noqa: E501
            return data

    def upload_file_with_required_file_with_http_info(self, pet_id, required_file, **kwargs):  # noqa: E501
        """uploads an image (required)  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.upload_file_with_required_file_with_http_info(pet_id, required_file, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int pet_id: ID of pet to update (required)
        :param file required_file: file to upload (required)
        :param str additional_metadata: Additional data to pass to server
        :return: ApiResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        local_var_params = locals()

        all_params = ['pet_id', 'required_file', 'additional_metadata']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        for key, val in six.iteritems(local_var_params['kwargs']):
            if key not in all_params:
                raise ApiTypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method upload_file_with_required_file" % key
                )
            local_var_params[key] = val
        del local_var_params['kwargs']
        # verify the required parameter 'pet_id' is set
        if ('pet_id' not in local_var_params or
                local_var_params['pet_id'] is None):
            raise ApiValueError("Missing the required parameter `pet_id` when calling `upload_file_with_required_file`")  # noqa: E501
        # verify the required parameter 'required_file' is set
        if ('required_file' not in local_var_params or
                local_var_params['required_file'] is None):
            raise ApiValueError("Missing the required parameter `required_file` when calling `upload_file_with_required_file`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'pet_id' in local_var_params:
            path_params['petId'] = local_var_params['pet_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'additional_metadata' in local_var_params:
            form_params.append(('additionalMetadata', local_var_params['additional_metadata']))  # noqa: E501
        if 'required_file' in local_var_params:
            local_var_files['requiredFile'] = local_var_params['required_file']  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = ['petstore_auth']  # noqa: E501

        return self.api_client.call_api(
            '/fake/{petId}/uploadImageWithRequiredFile', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='ApiResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=local_var_params.get('async_req'),
            _return_http_data_only=local_var_params.get('_return_http_data_only'),  # noqa: E501
            _preload_content=local_var_params.get('_preload_content', True),
            _request_timeout=local_var_params.get('_request_timeout'),
            collection_formats=collection_formats)
