# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.Functions do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :listOfConnectors
  ]

  @type t :: %__MODULE__{
    :listOfConnectors => [PulsarAdmin.Model.ConnectorDefinition.t] | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:listOfConnectors, :list, PulsarAdmin.Model.ConnectorDefinition)
  end
end
