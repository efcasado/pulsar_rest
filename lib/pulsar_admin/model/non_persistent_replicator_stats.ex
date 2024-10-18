# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.NonPersistentReplicatorStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :connected,
    :inboundConnectedSince,
    :inboundConnection,
    :msgDropRate,
    :msgRateExpired,
    :msgRateIn,
    :msgRateOut,
    :msgThroughputIn,
    :msgThroughputOut,
    :outboundConnectedSince,
    :outboundConnection,
    :replicationBacklog,
    :replicationDelayInSeconds
  ]

  @type t :: %__MODULE__{
    :connected => boolean() | nil,
    :inboundConnectedSince => String.t | nil,
    :inboundConnection => String.t | nil,
    :msgDropRate => float() | nil,
    :msgRateExpired => float() | nil,
    :msgRateIn => float() | nil,
    :msgRateOut => float() | nil,
    :msgThroughputIn => float() | nil,
    :msgThroughputOut => float() | nil,
    :outboundConnectedSince => String.t | nil,
    :outboundConnection => String.t | nil,
    :replicationBacklog => integer() | nil,
    :replicationDelayInSeconds => integer() | nil
  }

  def decode(value) do
    value
  end
end

