# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.ThreadContainerFactory do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :pulsarClientMemoryLimit,
    :threadGroupName
  ]

  @type t :: %__MODULE__{
    :pulsarClientMemoryLimit => PulsarAdmin.Model.MemoryLimit.t | nil,
    :threadGroupName => String.t | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:pulsarClientMemoryLimit, :struct, PulsarAdmin.Model.MemoryLimit)
  end
end
