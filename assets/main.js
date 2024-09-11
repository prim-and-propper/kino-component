import { Socket } from "phoenix";
import { LiveSocket } from "phoenix_live_view";

export function init(ctx, html) {
    let liveSocket = new LiveSocket("/__kino_component_live__", Socket);

    liveSocket.connect();
    liveSocket.disconnect();

    ctx.root.innerHTML = html;
}
