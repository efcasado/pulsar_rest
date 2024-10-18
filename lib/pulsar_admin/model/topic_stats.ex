# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.TopicStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :averageMsgSize,
    :backlogQuotaLimitSize,
    :backlogQuotaLimitTime,
    :backlogSize,
    :bytesInCounter,
    :bytesOutCounter,
    :compaction,
    :deduplicationStatus,
    :delayedMessageIndexSizeInBytes,
    :earliestMsgPublishTimeInBacklogs,
    :msgChunkPublished,
    :msgInCounter,
    :msgOutCounter,
    :msgRateIn,
    :msgRateOut,
    :msgThroughputIn,
    :msgThroughputOut,
    :nonContiguousDeletedMessagesRanges,
    :nonContiguousDeletedMessagesRangesSerializedSize,
    :offloadedStorageSize,
    :oldestBacklogMessageAgeSeconds,
    :oldestBacklogMessageSubscriptionName,
    :ownerBroker,
    :publishers,
    :replication,
    :storageSize,
    :subscriptions,
    :topicEpoch,
    :waitingPublishers
  ]

  @type t :: %__MODULE__{
    :averageMsgSize => float() | nil,
    :backlogQuotaLimitSize => integer() | nil,
    :backlogQuotaLimitTime => integer() | nil,
    :backlogSize => integer() | nil,
    :bytesInCounter => integer() | nil,
    :bytesOutCounter => integer() | nil,
    :compaction => PulsarAdmin.Model.CompactionStats.t | nil,
    :deduplicationStatus => String.t | nil,
    :delayedMessageIndexSizeInBytes => integer() | nil,
    :earliestMsgPublishTimeInBacklogs => integer() | nil,
    :msgChunkPublished => boolean() | nil,
    :msgInCounter => integer() | nil,
    :msgOutCounter => integer() | nil,
    :msgRateIn => float() | nil,
    :msgRateOut => float() | nil,
    :msgThroughputIn => float() | nil,
    :msgThroughputOut => float() | nil,
    :nonContiguousDeletedMessagesRanges => integer() | nil,
    :nonContiguousDeletedMessagesRangesSerializedSize => integer() | nil,
    :offloadedStorageSize => integer() | nil,
    :oldestBacklogMessageAgeSeconds => integer() | nil,
    :oldestBacklogMessageSubscriptionName => String.t | nil,
    :ownerBroker => String.t | nil,
    :publishers => [PulsarAdmin.Model.PublisherStats.t] | nil,
    :replication => %{optional(String.t) => PulsarAdmin.Model.ReplicatorStats.t} | nil,
    :storageSize => integer() | nil,
    :subscriptions => %{optional(String.t) => PulsarAdmin.Model.SubscriptionStats.t} | nil,
    :topicEpoch => integer() | nil,
    :waitingPublishers => integer() | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:compaction, :struct, PulsarAdmin.Model.CompactionStats)
     |> Deserializer.deserialize(:publishers, :list, PulsarAdmin.Model.PublisherStats)
     |> Deserializer.deserialize(:replication, :map, PulsarAdmin.Model.ReplicatorStats)
     |> Deserializer.deserialize(:subscriptions, :map, PulsarAdmin.Model.SubscriptionStats)
  end
end

