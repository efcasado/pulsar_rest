# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.ProcessContainerFactory do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :extraFunctionDependenciesDir,
    :javaInstanceJarLocation,
    :logDirectory,
    :pythonInstanceLocation
  ]

  @type t :: %__MODULE__{
    :extraFunctionDependenciesDir => String.t | nil,
    :javaInstanceJarLocation => String.t | nil,
    :logDirectory => String.t | nil,
    :pythonInstanceLocation => String.t | nil
  }

  def decode(value) do
    value
  end
end

