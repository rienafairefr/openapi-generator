/**
* OpenAPI Petstore
* This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
*
* OpenAPI spec version: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models


import com.squareup.moshi.Json

/**
* 
* Values: placed,approved,delivered
*/
enum class OuterEnumDefaultValue(val value: kotlin.String){

    @Json(name = "placed") placed("placed"),

    @Json(name = "approved") approved("approved"),

    @Json(name = "delivered") delivered("delivered");

}

