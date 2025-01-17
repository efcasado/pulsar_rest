# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.PersistentTopicInternalStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :compactedLedger,
    :currentLedgerEntries,
    :currentLedgerSize,
    :cursors,
    :entriesAddedCounter,
    :lastConfirmedEntry,
    :lastLedgerCreatedTimestamp,
    :lastLedgerCreationFailureTimestamp,
    :ledgers,
    :numberOfEntries,
    :pendingAddEntriesCount,
    :schemaLedgers,
    :state,
    :totalSize,
    :waitingCursorsCount
  ]

  @type t :: %__MODULE__{
    :compactedLedger => PulsarAdmin.Model.LedgerInfo.t | nil,
    :currentLedgerEntries => integer() | nil,
    :currentLedgerSize => integer() | nil,
    :cursors => %{optional(String.t) => PulsarAdmin.Model.CursorStats.t} | nil,
    :entriesAddedCounter => integer() | nil,
    :lastConfirmedEntry => String.t | nil,
    :lastLedgerCreatedTimestamp => String.t | nil,
    :lastLedgerCreationFailureTimestamp => String.t | nil,
    :ledgers => [PulsarAdmin.Model.LedgerInfo.t] | nil,
    :numberOfEntries => integer() | nil,
    :pendingAddEntriesCount => integer() | nil,
    :schemaLedgers => [PulsarAdmin.Model.LedgerInfo.t] | nil,
    :state => String.t | nil,
    :totalSize => integer() | nil,
    :waitingCursorsCount => integer() | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:compactedLedger, :struct, PulsarAdmin.Model.LedgerInfo)
     |> Deserializer.deserialize(:cursors, :map, PulsarAdmin.Model.CursorStats)
     |> Deserializer.deserialize(:ledgers, :list, PulsarAdmin.Model.LedgerInfo)
     |> Deserializer.deserialize(:schemaLedgers, :list, PulsarAdmin.Model.LedgerInfo)
  end
end

