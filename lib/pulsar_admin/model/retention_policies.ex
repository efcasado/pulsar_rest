# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.RetentionPolicies do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :retentionSizeInMB,
    :retentionTimeInMinutes
  ]

  @type t :: %__MODULE__{
    :retentionSizeInMB => integer() | nil,
    :retentionTimeInMinutes => integer() | nil
  }

  def decode(value) do
    value
  end
end

