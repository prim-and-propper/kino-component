defmodule KinoComponentTest do
  use ExUnit.Case, async: true

  import Phoenix.Component

  test "to_html/1" do
    assigns = %{}

    heex = ~H"""
    <.link href="/">I'm a link!</.link>
    """

    html = KinoComponent.to_html(heex)

    assert html =~ "<a"
    assert html =~ "I'm a link!"
    assert html =~ "</a>"
  end
end
