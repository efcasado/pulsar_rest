# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.ResourceUnit do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :availableResource,
    :resourceId
  ]

  @type t :: %__MODULE__{
    :availableResource => PulsarAdmin.Model.ResourceDescription.t | nil,
    :resourceId => String.t | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:availableResource, :struct, PulsarAdmin.Model.ResourceDescription)
  end
end
