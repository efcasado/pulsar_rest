# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule PulsarAdmin.Api.Bookies do
  @moduledoc """
  API calls for all endpoints tagged `Bookies`.
  """

  alias PulsarAdmin.Connection
  import PulsarAdmin.RequestBuilder

  @doc """
  Removed the rack placement information for a specific bookie in the cluster

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `bookie` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookies_delete_bookie_rack_info(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def bookies_delete_bookie_rack_info(connection, bookie, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/bookies/racks-info/#{bookie}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false}
    ])
  end

  @doc """
  Gets raw information for all the bookies in the cluster

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.BookiesClusterInfo.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookies_get_all_bookies(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.BookiesClusterInfo.t} | {:error, Tesla.Env.t}
  def bookies_get_all_bookies(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/bookies/all")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.BookiesClusterInfo},
      {403, false}
    ])
  end

  @doc """
  Gets the rack placement information for a specific bookie in the cluster

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `bookie` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, PulsarAdmin.Model.BookieInfo.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookies_get_bookie_rack_info(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, PulsarAdmin.Model.BookieInfo.t} | {:error, Tesla.Env.t}
  def bookies_get_bookie_rack_info(connection, bookie, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/bookies/racks-info/#{bookie}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, PulsarAdmin.Model.BookieInfo},
      {403, false}
    ])
  end

  @doc """
  Gets the rack placement information for all the bookies in the cluster

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookies_get_bookies_rack_info(Tesla.Env.client, keyword()) :: {:ok, map()} | {:ok, nil} | {:error, Tesla.Env.t}
  def bookies_get_bookies_rack_info(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/bookies/racks-info")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {403, false}
    ])
  end

  @doc """
  Updates the rack placement information for a specific bookie in the cluster (note. bookie address format:`address:port`)

  ### Parameters

  - `connection` (PulsarAdmin.Connection): Connection to server
  - `bookie` (String.t): The bookie address
  - `group` (String.t): The group
  - `body` (BookieInfo): The bookie info
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bookies_update_bookie_rack_info(Tesla.Env.client, String.t, String.t, PulsarAdmin.Model.BookieInfo.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def bookies_update_bookie_rack_info(connection, bookie, group, body, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/bookies/racks-info/#{bookie}")
      |> add_param(:query, :group, group)
      |> add_param(:body, :body, body)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {403, false}
    ])
  end
end
