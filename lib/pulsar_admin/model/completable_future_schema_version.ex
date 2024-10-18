# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.CompletableFutureSchemaVersion do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cancelled,
    :completedExceptionally,
    :done,
    :numberOfDependents
  ]

  @type t :: %__MODULE__{
    :cancelled => boolean() | nil,
    :completedExceptionally => boolean() | nil,
    :done => boolean() | nil,
    :numberOfDependents => integer() | nil
  }

  def decode(value) do
    value
  end
end

