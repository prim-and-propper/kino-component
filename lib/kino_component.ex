defmodule KinoComponent do
  @moduledoc """
  A kino for rendering a Phoenix function component.

  ## Example

      import Phoenix.Component, only: [link: 1, sigil_H: 2]

      assigns = %{text: "I'm a link!"}

      ~H\"\"\"
      <.link><%= @text %></.link>
      \"\"\"
      |> KinoComponent.new()
  """

  use Kino.JS, assets_path: Path.expand("./lib/assets")

  @doc """
  Creates a new kino displaying the given HEEx template.
  """
  def new(heex) do
    Kino.JS.new(__MODULE__, to_html(heex))
  end

  @doc """
  Renders an HEEx template and returns the resulting HTML as a string.
  """
  def to_html(heex) do
    heex
    |> Phoenix.HTML.html_escape()
    |> Phoenix.HTML.safe_to_string()
  end
end
