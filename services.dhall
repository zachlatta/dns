{ act-practice =
  { octodns.cloudflare.proxied = True
  , type = "CNAME"
  , value = "zachlatta.github.io."
  }
, kv =
  { type = "CNAME"
  , value = "flexible-ceratosaurus-qsubhltjib65dmq2j8qa44i8.herokudns.com."
  }
, monitor = { type = "CNAME", value = "zachlatta.com." }
, search =
  { type = "CNAME", value = "slowking.servers.tailscale.zachlatta.com." }
, sshtron = { type = "A", value = "149.28.243.27" }
, words = { type = "CNAME", value = "svbtle.com." }
}
