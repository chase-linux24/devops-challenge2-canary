
const express = require("express");
const os = require("os");
const app = express();

const PORT = 3000;
const VERSION = process.env.APP_VERSION || "1.0.0";
const FAIL_MODE = process.env.FAIL_MODE === "true";

app.get("/", (req, res) => {
  if (FAIL_MODE && Math.random() < 0.5) {
    return res.status(500).json({ error: "Kitchen fire!", version: VERSION });
  }
  res.json({
    message: "Hello from the food truck v1!",
    version: VERSION,
    truck: os.hostname(),
  });
});

app.get("/healthz", (req, res) => res.status(200).send("OK"));

app.listen(PORT, () => console.log(`v${VERSION} listening on ${PORT}`));// canary demo build
// rebuild after teardown

