# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.BrokerInfo do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :brokerId,
    :serviceUrl
  ]

  @type t :: %__MODULE__{
    :brokerId => String.t | nil,
    :serviceUrl => String.t | nil
  }

  def decode(value) do
    value
  end
end

