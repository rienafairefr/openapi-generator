/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 4.0.0-SNAPSHOT
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/ApiResponse', 'model/Pet'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/ApiResponse'), require('../model/Pet'));
  } else {
    // Browser globals (root is window)
    if (!root.OpenApiPetstore) {
      root.OpenApiPetstore = {};
    }
    root.OpenApiPetstore.PetApi = factory(root.OpenApiPetstore.ApiClient, root.OpenApiPetstore.ApiResponse, root.OpenApiPetstore.Pet);
  }
}(this, function(ApiClient, ApiResponse, Pet) {
  'use strict';

  /**
   * Pet service.
   * @module api/PetApi
   * @version 1.0.0
   */

  /**
   * Constructs a new PetApi. 
   * @alias module:api/PetApi
   * @class
   * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;



    /**
     * Add a new pet to the store
     * @param {module:model/Pet} body Pet object that needs to be added to the store
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.addPetWithHttpInfo = function(body) {
      var postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling addPet");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['petstore_auth'];
      var contentTypes = ['application/json', 'application/xml'];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/pet', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Add a new pet to the store
     * @param {module:model/Pet} body Pet object that needs to be added to the store
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.addPet = function(body) {
      return this.addPetWithHttpInfo(body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Deletes a pet
     * @param {Number} petId Pet id to delete
     * @param {Object} opts Optional parameters
     * @param {String} opts.apiKey 
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.deletePetWithHttpInfo = function(petId, opts) {
      opts = opts || {};
      var postBody = null;
      // verify the required parameter 'petId' is set
      if (petId === undefined || petId === null) {
        throw new Error("Missing the required parameter 'petId' when calling deletePet");
      }

      var pathParams = {
        'petId': petId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'api_key': opts['apiKey']
      };
      var formParams = {
      };

      var authNames = ['petstore_auth'];
      var contentTypes = [];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/pet/{petId}', 'DELETE',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Deletes a pet
     * @param {Number} petId Pet id to delete
     * @param {Object} opts Optional parameters
     * @param {String} opts.apiKey 
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.deletePet = function(petId, opts) {
      return this.deletePetWithHttpInfo(petId, opts)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Finds Pets by status
     * Multiple status values can be provided with comma separated strings
     * @param {Array.<module:model/String>} status Status values that need to be considered for filter
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link Array.<module:model/Pet>} and HTTP response
     */
    this.findPetsByStatusWithHttpInfo = function(status) {
      var postBody = null;
      // verify the required parameter 'status' is set
      if (status === undefined || status === null) {
        throw new Error("Missing the required parameter 'status' when calling findPetsByStatus");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
        'status': {
          value: status,
          collectionFormat: 'csv'
        },
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['petstore_auth'];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = [Pet];
      return this.apiClient.callApi(
        '/pet/findByStatus', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Finds Pets by status
     * Multiple status values can be provided with comma separated strings
     * @param {Array.<module:model/String>} status Status values that need to be considered for filter
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:model/Pet>}
     */
    this.findPetsByStatus = function(status) {
      return this.findPetsByStatusWithHttpInfo(status)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Finds Pets by tags
     * Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     * @param {Array.<String>} tags Tags to filter by
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link Array.<module:model/Pet>} and HTTP response
     */
    this.findPetsByTagsWithHttpInfo = function(tags) {
      var postBody = null;
      // verify the required parameter 'tags' is set
      if (tags === undefined || tags === null) {
        throw new Error("Missing the required parameter 'tags' when calling findPetsByTags");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
        'tags': {
          value: tags,
          collectionFormat: 'csv'
        },
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['petstore_auth'];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = [Pet];
      return this.apiClient.callApi(
        '/pet/findByTags', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Finds Pets by tags
     * Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     * @param {Array.<String>} tags Tags to filter by
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:model/Pet>}
     */
    this.findPetsByTags = function(tags) {
      return this.findPetsByTagsWithHttpInfo(tags)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Find pet by ID
     * Returns a single pet
     * @param {Number} petId ID of pet to return
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link module:model/Pet} and HTTP response
     */
    this.getPetByIdWithHttpInfo = function(petId) {
      var postBody = null;
      // verify the required parameter 'petId' is set
      if (petId === undefined || petId === null) {
        throw new Error("Missing the required parameter 'petId' when calling getPetById");
      }

      var pathParams = {
        'petId': petId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = [];
      var accepts = ['application/xml', 'application/json'];
      var returnType = Pet;
      return this.apiClient.callApi(
        '/pet/{petId}', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Find pet by ID
     * Returns a single pet
     * @param {Number} petId ID of pet to return
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:model/Pet}
     */
    this.getPetById = function(petId) {
      return this.getPetByIdWithHttpInfo(petId)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Update an existing pet
     * @param {module:model/Pet} body Pet object that needs to be added to the store
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.updatePetWithHttpInfo = function(body) {
      var postBody = body;
      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling updatePet");
      }

      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['petstore_auth'];
      var contentTypes = ['application/json', 'application/xml'];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/pet', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Update an existing pet
     * @param {module:model/Pet} body Pet object that needs to be added to the store
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.updatePet = function(body) {
      return this.updatePetWithHttpInfo(body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * Updates a pet in the store with form data
     * @param {Number} petId ID of pet that needs to be updated
     * @param {Object} opts Optional parameters
     * @param {String} opts.name Updated name of the pet
     * @param {String} opts.status Updated status of the pet
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing HTTP response
     */
    this.updatePetWithFormWithHttpInfo = function(petId, opts) {
      opts = opts || {};
      var postBody = null;
      // verify the required parameter 'petId' is set
      if (petId === undefined || petId === null) {
        throw new Error("Missing the required parameter 'petId' when calling updatePetWithForm");
      }

      var pathParams = {
        'petId': petId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'name': opts['name'],
        'status': opts['status']
      };

      var authNames = ['petstore_auth'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = [];
      var returnType = null;
      return this.apiClient.callApi(
        '/pet/{petId}', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * Updates a pet in the store with form data
     * @param {Number} petId ID of pet that needs to be updated
     * @param {Object} opts Optional parameters
     * @param {String} opts.name Updated name of the pet
     * @param {String} opts.status Updated status of the pet
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}
     */
    this.updatePetWithForm = function(petId, opts) {
      return this.updatePetWithFormWithHttpInfo(petId, opts)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * uploads an image
     * @param {Number} petId ID of pet to update
     * @param {Object} opts Optional parameters
     * @param {String} opts.additionalMetadata Additional data to pass to server
     * @param {File} opts.file file to upload
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link module:model/ApiResponse} and HTTP response
     */
    this.uploadFileWithHttpInfo = function(petId, opts) {
      opts = opts || {};
      var postBody = null;
      // verify the required parameter 'petId' is set
      if (petId === undefined || petId === null) {
        throw new Error("Missing the required parameter 'petId' when calling uploadFile");
      }

      var pathParams = {
        'petId': petId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'additionalMetadata': opts['additionalMetadata'],
        'file': opts['file']
      };

      var authNames = ['petstore_auth'];
      var contentTypes = ['multipart/form-data'];
      var accepts = ['application/json'];
      var returnType = ApiResponse;
      return this.apiClient.callApi(
        '/pet/{petId}/uploadImage', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * uploads an image
     * @param {Number} petId ID of pet to update
     * @param {Object} opts Optional parameters
     * @param {String} opts.additionalMetadata Additional data to pass to server
     * @param {File} opts.file file to upload
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:model/ApiResponse}
     */
    this.uploadFile = function(petId, opts) {
      return this.uploadFileWithHttpInfo(petId, opts)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


    /**
     * uploads an image (required)
     * @param {Number} petId ID of pet to update
     * @param {File} requiredFile file to upload
     * @param {Object} opts Optional parameters
     * @param {String} opts.additionalMetadata Additional data to pass to server
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link module:model/ApiResponse} and HTTP response
     */
    this.uploadFileWithRequiredFileWithHttpInfo = function(petId, requiredFile, opts) {
      opts = opts || {};
      var postBody = null;
      // verify the required parameter 'petId' is set
      if (petId === undefined || petId === null) {
        throw new Error("Missing the required parameter 'petId' when calling uploadFileWithRequiredFile");
      }
      // verify the required parameter 'requiredFile' is set
      if (requiredFile === undefined || requiredFile === null) {
        throw new Error("Missing the required parameter 'requiredFile' when calling uploadFileWithRequiredFile");
      }

      var pathParams = {
        'petId': petId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'additionalMetadata': opts['additionalMetadata'],
        'requiredFile': requiredFile
      };

      var authNames = ['petstore_auth'];
      var contentTypes = ['multipart/form-data'];
      var accepts = ['application/json'];
      var returnType = ApiResponse;
      return this.apiClient.callApi(
        '/fake/{petId}/uploadImageWithRequiredFile', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null
      );
    }

    /**
     * uploads an image (required)
     * @param {Number} petId ID of pet to update
     * @param {File} requiredFile file to upload
     * @param {Object} opts Optional parameters
     * @param {String} opts.additionalMetadata Additional data to pass to server
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:model/ApiResponse}
     */
    this.uploadFileWithRequiredFile = function(petId, requiredFile, opts) {
      return this.uploadFileWithRequiredFileWithHttpInfo(petId, requiredFile, opts)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }
  };

  return exports;
}));
