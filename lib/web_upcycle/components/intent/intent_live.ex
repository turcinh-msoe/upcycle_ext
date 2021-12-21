defmodule Bonfire.UI.Upcycle.IntentLive do
  use Bonfire.Web, :stateless_component

  prop name, :string, default: "ExampleResource"
  prop resourceQuantity, :integer, default: "0"
  prop intent, :any

end
