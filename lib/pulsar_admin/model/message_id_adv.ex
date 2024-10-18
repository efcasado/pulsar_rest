# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.MessageIdAdv do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :ackSet,
    :batchIndex,
    :batchSize,
    :entryId,
    :firstChunkMessageId,
    :ledgerId,
    :partitionIndex
  ]

  @type t :: %__MODULE__{
    :ackSet => PulsarAdmin.Model.BitSet.t | nil,
    :batchIndex => integer() | nil,
    :batchSize => integer() | nil,
    :entryId => integer() | nil,
    :firstChunkMessageId => PulsarAdmin.Model.MessageIdAdv.t | nil,
    :ledgerId => integer() | nil,
    :partitionIndex => integer() | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ackSet, :struct, PulsarAdmin.Model.BitSet)
     |> Deserializer.deserialize(:firstChunkMessageId, :struct, PulsarAdmin.Model.MessageIdAdv)
  end
end

