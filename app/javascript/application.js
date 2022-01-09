// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import { cable } from "@hotwired/turbo-rails";

import CableReady from "cable_ready";
import "@minthesize/cubism";

(async () => {
  const consumer = await cable.getConsumer()
  CableReady.initialize({ consumer });
})()
