# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenAPIPetstore.Model.InlineResponseDefault do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"string"
  ]

  @type t :: %__MODULE__{
    :"string" => Foo | nil
  }
end

defimpl Poison.Decoder, for: OpenAPIPetstore.Model.InlineResponseDefault do
  import OpenAPIPetstore.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"string", :struct, OpenAPIPetstore.Model.Foo, options)
  end
end

