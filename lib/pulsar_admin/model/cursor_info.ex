# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.CursorInfo do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :creationDate,
    :cursorsLedgerId,
    :individualDeletedMessages,
    :markDelete,
    :modificationDate,
    :properties,
    :version
  ]

  @type t :: %__MODULE__{
    :creationDate => String.t | nil,
    :cursorsLedgerId => integer() | nil,
    :individualDeletedMessages => [PulsarAdmin.Model.MessageRangeInfo.t] | nil,
    :markDelete => PulsarAdmin.Model.PositionInfo.t | nil,
    :modificationDate => String.t | nil,
    :properties => %{optional(String.t) => integer()} | nil,
    :version => integer() | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:individualDeletedMessages, :list, PulsarAdmin.Model.MessageRangeInfo)
     |> Deserializer.deserialize(:markDelete, :struct, PulsarAdmin.Model.PositionInfo)
  end
end

