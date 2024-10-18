# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Api.Resourcegroups do
  @moduledoc """
  API calls for all endpoints tagged `Resourcegroups`.
  """

  alias PulsarAdmin.Connection
  import PulsarAdmin.RequestBuilder

  @doc """
  Creates a new resourcegroup with the specified rate limiters

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `resourcegroup` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:body` (ResourceGroup): Rate limiters for the resourcegroup

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec resource_groups_create_or_update_resource_group(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def resource_groups_create_or_update_resource_group(connection, resourcegroup, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/resourcegroups/#{resourcegroup}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Delete a resourcegroup.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `resourcegroup` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec resource_groups_delete_resource_group(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def resource_groups_delete_resource_group(connection, resourcegroup, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/resourcegroups/#{resourcegroup}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false},
      {404, false},
      {409, false}
    ])
  end

  @doc """
  Get the rate limiters specified for a resourcegroup.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `resourcegroup` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.ResourceGroup.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec resource_groups_get_resource_group(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.ResourceGroup.t} | {:error, Tesla.Env.t}
  def resource_groups_get_resource_group(connection, resourcegroup, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/resourcegroups/#{resourcegroup}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.ResourceGroup},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Get the list of all the resourcegroups.

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%String{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec resource_groups_get_resource_groups(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, [String.t]} | {:error, Tesla.Env.t}
  def resource_groups_get_resource_groups(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/resourcegroups")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {403, false}
    ])
  end
end
