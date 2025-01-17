# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.PublisherStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :accessMode,
    :address,
    :averageMsgSize,
    :chunkedMessageRate,
    :clientVersion,
    :connectedSince,
    :metadata,
    :msgRateIn,
    :msgThroughputIn,
    :producerId,
    :producerName,
    :supportsPartialProducer
  ]

  @type t :: %__MODULE__{
    :accessMode => String.t | nil,
    :address => String.t | nil,
    :averageMsgSize => float() | nil,
    :chunkedMessageRate => float() | nil,
    :clientVersion => String.t | nil,
    :connectedSince => String.t | nil,
    :metadata => %{optional(String.t) => String.t} | nil,
    :msgRateIn => float() | nil,
    :msgThroughputIn => float() | nil,
    :producerId => integer() | nil,
    :producerName => String.t | nil,
    :supportsPartialProducer => boolean() | nil
  }

  def decode(value) do
    value
  end
end

