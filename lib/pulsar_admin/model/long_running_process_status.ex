# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.LongRunningProcessStatus do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :lastError,
    :status
  ]

  @type t :: %__MODULE__{
    :lastError => String.t | nil,
    :status => String.t | nil
  }

  def decode(value) do
    value
  end
end

