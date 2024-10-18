# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.CompactionStatsImpl do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :lastCompactionDurationTimeInMills,
    :lastCompactionFailedTimestamp,
    :lastCompactionRemovedEventCount,
    :lastCompactionSucceedTimestamp
  ]

  @type t :: %__MODULE__{
    :lastCompactionDurationTimeInMills => integer() | nil,
    :lastCompactionFailedTimestamp => integer() | nil,
    :lastCompactionRemovedEventCount => integer() | nil,
    :lastCompactionSucceedTimestamp => integer() | nil
  }

  def decode(value) do
    value
  end
end

