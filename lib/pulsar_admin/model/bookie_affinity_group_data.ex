# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.BookieAffinityGroupData do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :bookkeeperAffinityGroupPrimary,
    :bookkeeperAffinityGroupSecondary
  ]

  @type t :: %__MODULE__{
    :bookkeeperAffinityGroupPrimary => String.t | nil,
    :bookkeeperAffinityGroupSecondary => String.t | nil
  }

  def decode(value) do
    value
  end
end

