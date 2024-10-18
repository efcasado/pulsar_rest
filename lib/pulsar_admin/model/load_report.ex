# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.LoadReport do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :allocatedBandwidthIn,
    :allocatedBandwidthOut,
    :allocatedCPU,
    :allocatedMemory,
    :allocatedMsgRateIn,
    :allocatedMsgRateOut,
    :bandwidthIn,
    :bandwidthOut,
    :brokerVersionString,
    :bundleGains,
    :bundleLosses,
    :bundleStats,
    :cpu,
    :directMemory,
    :lastUpdate,
    :loadManagerClassName,
    :loadReportType,
    :memory,
    :msgRateIn,
    :msgRateOut,
    :msgThroughputIn,
    :msgThroughputOut,
    :name,
    :nonPersistentTopicsEnabled,
    :numBundles,
    :numConsumers,
    :numProducers,
    :numTopics,
    :overLoaded,
    :persistentTopicsEnabled,
    :preAllocatedBandwidthIn,
    :preAllocatedBandwidthOut,
    :preAllocatedCPU,
    :preAllocatedMemory,
    :preAllocatedMsgRateIn,
    :preAllocatedMsgRateOut,
    :protocols,
    :pulsarServiceUrl,
    :pulsarServiceUrlTls,
    :startTimestamp,
    :systemResourceUsage,
    :timestamp,
    :underLoaded,
    :webServiceUrl,
    :webServiceUrlTls
  ]

  @type t :: %__MODULE__{
    :allocatedBandwidthIn => float() | nil,
    :allocatedBandwidthOut => float() | nil,
    :allocatedCPU => float() | nil,
    :allocatedMemory => float() | nil,
    :allocatedMsgRateIn => float() | nil,
    :allocatedMsgRateOut => float() | nil,
    :bandwidthIn => PulsarAdmin.Model.ResourceUsage.t | nil,
    :bandwidthOut => PulsarAdmin.Model.ResourceUsage.t | nil,
    :brokerVersionString => String.t | nil,
    :bundleGains => [String.t] | nil,
    :bundleLosses => [String.t] | nil,
    :bundleStats => %{optional(String.t) => PulsarAdmin.Model.NamespaceBundleStats.t} | nil,
    :cpu => PulsarAdmin.Model.ResourceUsage.t | nil,
    :directMemory => PulsarAdmin.Model.ResourceUsage.t | nil,
    :lastUpdate => integer() | nil,
    :loadManagerClassName => String.t | nil,
    :loadReportType => String.t | nil,
    :memory => PulsarAdmin.Model.ResourceUsage.t | nil,
    :msgRateIn => float() | nil,
    :msgRateOut => float() | nil,
    :msgThroughputIn => float() | nil,
    :msgThroughputOut => float() | nil,
    :name => String.t | nil,
    :nonPersistentTopicsEnabled => boolean() | nil,
    :numBundles => integer() | nil,
    :numConsumers => integer() | nil,
    :numProducers => integer() | nil,
    :numTopics => integer() | nil,
    :overLoaded => boolean() | nil,
    :persistentTopicsEnabled => boolean() | nil,
    :preAllocatedBandwidthIn => float() | nil,
    :preAllocatedBandwidthOut => float() | nil,
    :preAllocatedCPU => float() | nil,
    :preAllocatedMemory => float() | nil,
    :preAllocatedMsgRateIn => float() | nil,
    :preAllocatedMsgRateOut => float() | nil,
    :protocols => %{optional(String.t) => String.t} | nil,
    :pulsarServiceUrl => String.t | nil,
    :pulsarServiceUrlTls => String.t | nil,
    :startTimestamp => integer() | nil,
    :systemResourceUsage => PulsarAdmin.Model.SystemResourceUsage.t | nil,
    :timestamp => integer() | nil,
    :underLoaded => boolean() | nil,
    :webServiceUrl => String.t | nil,
    :webServiceUrlTls => String.t | nil
  }

  alias PulsarAdmin.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:bandwidthIn, :struct, PulsarAdmin.Model.ResourceUsage)
     |> Deserializer.deserialize(:bandwidthOut, :struct, PulsarAdmin.Model.ResourceUsage)
     |> Deserializer.deserialize(:bundleStats, :map, PulsarAdmin.Model.NamespaceBundleStats)
     |> Deserializer.deserialize(:cpu, :struct, PulsarAdmin.Model.ResourceUsage)
     |> Deserializer.deserialize(:directMemory, :struct, PulsarAdmin.Model.ResourceUsage)
     |> Deserializer.deserialize(:memory, :struct, PulsarAdmin.Model.ResourceUsage)
     |> Deserializer.deserialize(:systemResourceUsage, :struct, PulsarAdmin.Model.SystemResourceUsage)
  end
end
