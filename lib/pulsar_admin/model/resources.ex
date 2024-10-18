# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.Resources do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cpu,
    :disk,
    :ram
  ]

  @type t :: %__MODULE__{
    :cpu => float() | nil,
    :disk => integer() | nil,
    :ram => integer() | nil
  }

  def decode(value) do
    value
  end
end
