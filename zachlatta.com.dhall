let servers = ./servers.dhall
let google-workspace = ./google-workspace.dhall
in
servers //
google-workspace // {
  act-practice =
  { octodns.cloudflare.proxied = True
  , type = "CNAME"
  , value = "zachlatta.github.io."
  }
, kv =
  { type = "CNAME"
  , value = "flexible-ceratosaurus-qsubhltjib65dmq2j8qa44i8.herokudns.com."
  }
, monitor = { type = "CNAME", value = "zachlatta.com." }
, search = { type = "A", value = "100.77.1.14" }
, sshtron = { type = "A", value = "149.28.243.27" }
, words = { type = "CNAME", value = "svbtle.com." }
, www =
  { octodns.cloudflare.proxied = True
  , type = "CNAME"
  , value = "zachlatta.com."
  }
}
