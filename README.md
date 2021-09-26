# DNS for zachlatta.com

Declarative DNS for zachlatta.com and all my personal projects. Following [Hack Club's model](https://github.com/hackclub/dns).

## To-Do

Figure out how to make the Google Workspace config way less complicated.

Figure out how to "merge" records across multiple files. `//` works fine when there's no conflicts, but if there's a conflict: ex. an MX record and an A record at the root, they should combine and OctoDNS should have to deal with the resolution.

## Usage

`CLOUDFLARE_TOKEN` must be exported.

First you need to enter the `nix-shell`:

    $ nix-shell

Then test to see what changes will be made:

    $ ./bin/test

Then apply the changes:

    $ ./bin/sync

## Websites I'm interested in that used to be online, but aren't anymore

- brain.zachlatta.com (to apps.zachlatta.com)
- captive.zachlatta.com (http captive portal)
- scrapbook.zachlatta.com
- zachinto2020.zachlatta.com

Server:

- charmander.zachlatta.com
