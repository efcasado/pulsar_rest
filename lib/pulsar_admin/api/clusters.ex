# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Api.Clusters do
  @moduledoc """
  API calls for all endpoints tagged `Clusters`.
  """

  alias PulsarAdmin.Connection
  import PulsarAdmin.RequestBuilder

  @doc """
  Create a new cluster.
  This operation requires Pulsar superuser privileges, and the name cannot contain the '/' characters.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `body` (ClusterData): The cluster data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_create_cluster(Tesla.Env.client, String.t, PulsarAdmin.Model.ClusterData.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_create_cluster(connection, cluster, body, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/clusters/#{cluster}")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {403, false},
      {409, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Delete an existing cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_delete_cluster(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_delete_cluster(connection, cluster, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/clusters/#{cluster}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Delete the failure domain of the cluster
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `domain_name` (String.t): The failure domain name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_delete_failure_domain(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_delete_failure_domain(connection, cluster, domain_name, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/clusters/#{cluster}/failureDomains/#{domain_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Delete namespace isolation policy.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `policy_name` (String.t): The namespace isolation policy name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_delete_namespace_isolation_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_delete_namespace_isolation_policy(connection, cluster, policy_name, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/clusters/#{cluster}/namespaceIsolationPolicies/#{policy_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Get a broker with namespace-isolation policies attached to it.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `broker` (String.t): The broker name (<broker-hostname>:<web-service-port>)
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.BrokerNamespaceIsolationData.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_broker_with_namespace_isolation_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.BrokerNamespaceIsolationData.t} | {:error, Tesla.Env.t}
  def clusters_base_get_broker_with_namespace_isolation_policy(connection, cluster, broker, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/namespaceIsolationPolicies/brokers/#{broker}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.BrokerNamespaceIsolationData},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Get list of brokers with namespace-isolation policies attached to them.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%BrokerNamespaceIsolationData{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_brokers_with_namespace_isolation_policy(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, [PulsarAdmin.Model.BrokerNamespaceIsolationData.t]} | {:error, Tesla.Env.t}
  def clusters_base_get_brokers_with_namespace_isolation_policy(connection, cluster, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/namespaceIsolationPolicies/brokers")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.BrokerNamespaceIsolationData},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Get the configuration for the specified cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.ClusterData.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_cluster(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.ClusterData.t} | {:error, Tesla.Env.t}
  def clusters_base_get_cluster(connection, cluster, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.ClusterData},
      {403, false},
      {404, false},
      {500, false}
    ])
  end

  @doc """
  Get the list of all the Pulsar clusters.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%String{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_clusters(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, [String.t]} | {:error, Tesla.Env.t}
  def clusters_base_get_clusters(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {500, false}
    ])
  end

  @doc """
  Get a domain in a cluster
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `domain_name` (String.t): The failure domain name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.FailureDomain.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_domain(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.FailureDomain.t} | {:error, Tesla.Env.t}
  def clusters_base_get_domain(connection, cluster, domain_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/failureDomains/#{domain_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.FailureDomain},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Get the cluster failure domains.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_failure_domains(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_get_failure_domains(connection, cluster, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/failureDomains")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {403, false},
      {500, false}
    ])
  end

  @doc """
  Get the namespace isolation policies assigned to the cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_namespace_isolation_policies(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_get_namespace_isolation_policies(connection, cluster, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/namespaceIsolationPolicies")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {403, false},
      {404, false},
      {500, false}
    ])
  end

  @doc """
  Get the single namespace isolation policy assigned to the cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `policy_name` (String.t): The name of the namespace isolation policy
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.NamespaceIsolationData.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_namespace_isolation_policy(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.NamespaceIsolationData.t} | {:error, Tesla.Env.t}
  def clusters_base_get_namespace_isolation_policy(connection, cluster, policy_name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/namespaceIsolationPolicies/#{policy_name}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.NamespaceIsolationData},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Get the peer-cluster data for the specified cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%String{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_get_peer_cluster(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, [String.t]} | {:error, Tesla.Env.t}
  def clusters_base_get_peer_cluster(connection, cluster, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/clusters/#{cluster}/peers")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {403, false},
      {404, false},
      {500, false}
    ])
  end

  @doc """
  Set the failure domain of the cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `domain_name` (String.t): The failure domain name
  - `body` (FailureDomain): The configuration data of a failure domain
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_set_failure_domain(Tesla.Env.client, String.t, String.t, PulsarAdmin.Model.FailureDomain.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_set_failure_domain(connection, cluster, domain_name, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/clusters/#{cluster}/failureDomains/#{domain_name}")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false},
      {404, false},
      {409, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Set namespace isolation policy.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `policy_name` (String.t): The namespace isolation policy name
  - `body` (NamespaceIsolationData): The namespace isolation policy data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_set_namespace_isolation_policy(Tesla.Env.client, String.t, String.t, PulsarAdmin.Model.NamespaceIsolationData.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_set_namespace_isolation_policy(connection, cluster, policy_name, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/clusters/#{cluster}/namespaceIsolationPolicies/#{policy_name}")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, false},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Update peer-cluster-list for a cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `body` ([String.t]): The list of peer cluster names
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_set_peer_cluster_names(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_set_peer_cluster_names(connection, cluster, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/clusters/#{cluster}/peers")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false},
      {404, false},
      {412, false},
      {500, false}
    ])
  end

  @doc """
  Update the configuration for a cluster.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `body` (ClusterData): The cluster data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_update_cluster(Tesla.Env.client, String.t, PulsarAdmin.Model.ClusterData.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_update_cluster(connection, cluster, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/clusters/#{cluster}")
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {403, false},
      {404, false},
      {500, false}
    ])
  end

  @doc """
  Update the configuration for a cluster migration.
  This operation requires Pulsar superuser privileges.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `cluster` (String.t): The cluster name
  - `migrated` (boolean()): Is cluster migrated
  - `body` (ClusterUrl): The cluster url data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec clusters_base_update_cluster_migration(Tesla.Env.client, String.t, boolean(), PulsarAdmin.Model.ClusterUrl.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def clusters_base_update_cluster_migration(connection, cluster, migrated, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/clusters/#{cluster}/migrate")
      |> add_param(:query, :migrated, migrated)
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {403, false},
      {404, false},
      {500, false}
    ])
  end
end
