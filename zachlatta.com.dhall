let servers = ./servers.dhall

in      { `` =
          [ { octodns = Some { cloudflare.proxied = True }
            , type = "ALIAS"
            , value = Some "relay.servers.zachlatta.com."
            , values =
                None
                  ( List
                      ( Type ->
                        { array : List _ -> _@1
                        , bool : Bool -> _@1
                        , double : Double -> _@1
                        , integer : Integer -> _@1
                        , null : _
                        , object : List { mapKey : Text, mapValue : _ } -> _@1
                        , string : Text -> _@1
                        } ->
                          _@1
                      )
                  )
            }
          , { octodns = None { cloudflare : { proxied : Bool } }
            , type = "MX"
            , value = None Text
            , values = Some
              [ \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.object
                    ( toMap
                        { exchange = json.string "aspmx.l.google.com."
                        , preference = json.integer +1
                        }
                    )
              , \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.object
                    ( toMap
                        { exchange = json.string "alt1.aspmx.l.google.com."
                        , preference = json.integer +5
                        }
                    )
              , \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.object
                    ( toMap
                        { exchange = json.string "alt2.aspmx.l.google.com."
                        , preference = json.integer +5
                        }
                    )
              , \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.object
                    ( toMap
                        { exchange = json.string "alt3.aspmx.l.google.com."
                        , preference = json.integer +10
                        }
                    )
              , \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.object
                    ( toMap
                        { exchange = json.string "alt4.aspmx.l.google.com."
                        , preference = json.integer +10
                        }
                    )
              ]
            }
          , { octodns = None { cloudflare : { proxied : Bool } }
            , type = "SPF"
            , value = Some "v=spf1 include:_spf.google.com ~all"
            , values =
                None
                  ( List
                      ( Type ->
                        { array : List _ -> _@1
                        , bool : Bool -> _@1
                        , double : Double -> _@1
                        , integer : Integer -> _@1
                        , null : _
                        , object : List { mapKey : Text, mapValue : _ } -> _@1
                        , string : Text -> _@1
                        } ->
                          _@1
                      )
                  )
            }
          , { octodns = None { cloudflare : { proxied : Bool } }
            , type = "TXT"
            , value = None Text
            , values = Some
              [ \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.string
                    "google-site-verification=7-5zgja0eaToN8KZRjMilCnFQf3XJPZ13Ac-l8VQMw0"
              , \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.string
                    "google-site-verification=Njx6ebmx5SzOQev7JHDUahyGNd1f4CANIXJXnud0SZw"
              , \(JSON : Type) ->
                \ ( json
                  : { array : List JSON -> JSON
                    , bool : Bool -> JSON
                    , double : Double -> JSON
                    , integer : Integer -> JSON
                    , null : JSON
                    , object : List { mapKey : Text, mapValue : JSON } -> JSON
                    , string : Text -> JSON
                    }
                  ) ->
                  json.string "v=spf1 include:_spf.google.com ~all"
              ]
            }
          ]
        , _dmarc = { type = "TXT", value = "v=DMARC1\\; p=none" }
        , act-practice =
          { octodns.cloudflare.proxied = True
          , type = "CNAME"
          , value = "zachlatta.github.io."
          }
        , kv =
          { type = "CNAME"
          , value =
              "flexible-ceratosaurus-qsubhltjib65dmq2j8qa44i8.herokudns.com."
          }
        , mail = { type = "CNAME", value = "ghs.googlehosted.com." }
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
    //  servers
