# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.RawBookieInfo do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :bookieId
  ]

  @type t :: %__MODULE__{
    :bookieId => String.t | nil
  }

  def decode(value) do
    value
  end
end

