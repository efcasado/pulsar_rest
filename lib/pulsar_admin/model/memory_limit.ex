# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.MemoryLimit do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :absoluteValue,
    :percentOfMaxDirectMemory
  ]

  @type t :: %__MODULE__{
    :absoluteValue => integer() | nil,
    :percentOfMaxDirectMemory => float() | nil
  }

  def decode(value) do
    value
  end
end
