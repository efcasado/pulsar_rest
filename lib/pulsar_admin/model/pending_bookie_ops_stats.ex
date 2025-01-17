# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.PendingBookieOpsStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cursorLedgerCloseOp,
    :cursorLedgerCreateOp,
    :cursorLedgerDeleteOp,
    :cursorLedgerOpenOp,
    :dataLedgerCloseOp,
    :dataLedgerCreateOp,
    :dataLedgerDeleteOp,
    :dataLedgerOpenOp
  ]

  @type t :: %__MODULE__{
    :cursorLedgerCloseOp => integer() | nil,
    :cursorLedgerCreateOp => integer() | nil,
    :cursorLedgerDeleteOp => integer() | nil,
    :cursorLedgerOpenOp => integer() | nil,
    :dataLedgerCloseOp => integer() | nil,
    :dataLedgerCreateOp => integer() | nil,
    :dataLedgerDeleteOp => integer() | nil,
    :dataLedgerOpenOp => integer() | nil
  }

  def decode(value) do
    value
  end
end

