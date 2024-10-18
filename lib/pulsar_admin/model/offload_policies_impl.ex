# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Model.OffloadPoliciesImpl do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :fileSystemDriver,
    :fileSystemProfilePath,
    :fileSystemURI,
    :gcsDriver,
    :gcsManagedLedgerOffloadBucket,
    :gcsManagedLedgerOffloadMaxBlockSizeInBytes,
    :gcsManagedLedgerOffloadReadBufferSizeInBytes,
    :gcsManagedLedgerOffloadRegion,
    :gcsManagedLedgerOffloadServiceAccountKeyFile,
    :managedLedgerExtraConfigurations,
    :managedLedgerOffloadBucket,
    :managedLedgerOffloadDeletionLagInMillis,
    :managedLedgerOffloadDriver,
    :managedLedgerOffloadMaxBlockSizeInBytes,
    :managedLedgerOffloadMaxThreads,
    :managedLedgerOffloadPrefetchRounds,
    :managedLedgerOffloadReadBufferSizeInBytes,
    :managedLedgerOffloadRegion,
    :managedLedgerOffloadServiceEndpoint,
    :managedLedgerOffloadThresholdInBytes,
    :managedLedgerOffloadThresholdInSeconds,
    :managedLedgerOffloadedReadPriority,
    :offloadersDirectory,
    :s3Driver,
    :s3ManagedLedgerOffloadBucket,
    :s3ManagedLedgerOffloadCredentialId,
    :s3ManagedLedgerOffloadCredentialSecret,
    :s3ManagedLedgerOffloadMaxBlockSizeInBytes,
    :s3ManagedLedgerOffloadReadBufferSizeInBytes,
    :s3ManagedLedgerOffloadRegion,
    :s3ManagedLedgerOffloadRole,
    :s3ManagedLedgerOffloadRoleSessionName,
    :s3ManagedLedgerOffloadServiceEndpoint
  ]

  @type t :: %__MODULE__{
    :fileSystemDriver => boolean() | nil,
    :fileSystemProfilePath => String.t | nil,
    :fileSystemURI => String.t | nil,
    :gcsDriver => boolean() | nil,
    :gcsManagedLedgerOffloadBucket => String.t | nil,
    :gcsManagedLedgerOffloadMaxBlockSizeInBytes => integer() | nil,
    :gcsManagedLedgerOffloadReadBufferSizeInBytes => integer() | nil,
    :gcsManagedLedgerOffloadRegion => String.t | nil,
    :gcsManagedLedgerOffloadServiceAccountKeyFile => String.t | nil,
    :managedLedgerExtraConfigurations => %{optional(String.t) => String.t} | nil,
    :managedLedgerOffloadBucket => String.t | nil,
    :managedLedgerOffloadDeletionLagInMillis => integer() | nil,
    :managedLedgerOffloadDriver => String.t | nil,
    :managedLedgerOffloadMaxBlockSizeInBytes => integer() | nil,
    :managedLedgerOffloadMaxThreads => integer() | nil,
    :managedLedgerOffloadPrefetchRounds => integer() | nil,
    :managedLedgerOffloadReadBufferSizeInBytes => integer() | nil,
    :managedLedgerOffloadRegion => String.t | nil,
    :managedLedgerOffloadServiceEndpoint => String.t | nil,
    :managedLedgerOffloadThresholdInBytes => integer() | nil,
    :managedLedgerOffloadThresholdInSeconds => integer() | nil,
    :managedLedgerOffloadedReadPriority => String.t | nil,
    :offloadersDirectory => String.t | nil,
    :s3Driver => boolean() | nil,
    :s3ManagedLedgerOffloadBucket => String.t | nil,
    :s3ManagedLedgerOffloadCredentialId => String.t | nil,
    :s3ManagedLedgerOffloadCredentialSecret => String.t | nil,
    :s3ManagedLedgerOffloadMaxBlockSizeInBytes => integer() | nil,
    :s3ManagedLedgerOffloadReadBufferSizeInBytes => integer() | nil,
    :s3ManagedLedgerOffloadRegion => String.t | nil,
    :s3ManagedLedgerOffloadRole => String.t | nil,
    :s3ManagedLedgerOffloadRoleSessionName => String.t | nil,
    :s3ManagedLedgerOffloadServiceEndpoint => String.t | nil
  }

  def decode(value) do
    value
  end
end

