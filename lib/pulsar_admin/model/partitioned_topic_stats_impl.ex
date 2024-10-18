# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.PartitionedTopicStatsImpl do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :abortedTxnCount,
    :averageMsgSize,
    :backlogQuotaLimitSize,
    :backlogQuotaLimitTime,
    :backlogSize,
    :bytesInCounter,
    :bytesOutCounter,
    :committedTxnCount,
    :compaction,
    :deduplicationStatus,
    :delayedMessageIndexSizeInBytes,
    :earliestMsgPublishTimeInBacklogs,
    :lastOffloadFailureTimeStamp,
    :lastOffloadLedgerId,
    :lastOffloadSuccessTimeStamp,
    :metadata,
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
    :ongoingTxnCount,
    :ownerBroker,
    :partitions,
    :publishRateLimitedTimes,
    :publishers,
    :replication,
    :storageSize,
    :subscriptions,
    :topicEpoch,
    :waitingPublishers
  ]

  @type t :: %__MODULE__{
    :abortedTxnCount => integer() | nil,
    :averageMsgSize => float() | nil,
    :backlogQuotaLimitSize => integer() | nil,
    :backlogQuotaLimitTime => integer() | nil,
    :backlogSize => integer() | nil,
    :bytesInCounter => integer() | nil,
    :bytesOutCounter => integer() | nil,
    :committedTxnCount => integer() | nil,
    :compaction => PulsarAdmin.Model.CompactionStatsImpl.t | nil,
    :deduplicationStatus => String.t | nil,
    :delayedMessageIndexSizeInBytes => integer() | nil,
    :earliestMsgPublishTimeInBacklogs => integer() | nil,
    :lastOffloadFailureTimeStamp => integer() | nil,
    :lastOffloadLedgerId => integer() | nil,
    :lastOffloadSuccessTimeStamp => integer() | nil,
    :metadata => PulsarAdmin.Model.PartitionedTopicMetadata.t | nil,
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
    :ongoingTxnCount => integer() | nil,
    :ownerBroker => String.t | nil,
    :partitions => %{optional(String.t) => PulsarAdmin.Model.TopicStats.t} | nil,
    :publishRateLimitedTimes => integer() | nil,
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
     |> Deserializer.deserialize(:compaction, :struct, PulsarAdmin.Model.CompactionStatsImpl)
     |> Deserializer.deserialize(:metadata, :struct, PulsarAdmin.Model.PartitionedTopicMetadata)
     |> Deserializer.deserialize(:partitions, :map, PulsarAdmin.Model.TopicStats)
     |> Deserializer.deserialize(:publishers, :list, PulsarAdmin.Model.PublisherStats)
     |> Deserializer.deserialize(:replication, :map, PulsarAdmin.Model.ReplicatorStats)
     |> Deserializer.deserialize(:subscriptions, :map, PulsarAdmin.Model.SubscriptionStats)
  end
end

