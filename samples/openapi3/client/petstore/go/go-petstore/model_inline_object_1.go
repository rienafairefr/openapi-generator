/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package petstore
import (
	"os"
)

type InlineObject1 struct {
	// Additional data to pass to server
	AdditionalMetadata string `json:"additionalMetadata,omitempty"`
	// file to upload
	File *os.File `json:"file,omitempty"`
}
