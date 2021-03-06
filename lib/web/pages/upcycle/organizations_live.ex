defmodule Bonfire.Web.OrganizationsLive do
  use Bonfire.Web, {:live_view, [layout: {Bonfire.UI.Social.Web.LayoutView, "without_sidebar.html"}]}

  alias Bonfire.Web.LivePlugs
  import Bonfire.Web.Gettext

  def mount(params, session, socket) do
    LivePlugs.live_plug params, session, socket, [
      LivePlugs.LoadCurrentAccount,
      LivePlugs.LoadCurrentUser,
      LivePlugs.StaticChanged,
      LivePlugs.Csrf, LivePlugs.Locale,
      &mounted/3,
    ]
  end

  defp mounted(_params, _session, socket) do
    title = "All Organizations"

    {:ok, socket
    |> assign(
      page_title: "All Organizations",
      feed_title: title
    )}
  end

  defdelegate handle_params(params, attrs, socket), to: Bonfire.Common.LiveHandlers
  def handle_event(action, attrs, socket), do: Bonfire.Common.LiveHandlers.handle_event(action, attrs, socket, __MODULE__)
  def handle_info(info, socket), do: Bonfire.Common.LiveHandlers.handle_info(info, socket, __MODULE__)
end
