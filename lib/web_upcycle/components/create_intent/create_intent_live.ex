defmodule Bonfire.UI.Upcycle.CreateIntentLive do
  use Bonfire.Web, :stateless_component

  prop intent_url, :string, required: false, default: ""
  prop action_id, :string, required: false, default: "work"
  prop output_of_id, :string, required: false
  prop title, :string, default: "Create an offer"
  prop intent_type, :string, default: "offer"

end
