# HPLX packages

The index the [HPLX launcher](../hplx-launcher) reads. It is data only, so publishing a change is a commit here.

- [`catalog.toml`](catalog.toml): every HPL-family game the launcher lists (names, engine generation, the game an add-on lives in) and what HPLX can do with each: whether a Redux version exists, and the package id its `hplx-game.toml` declares. The launcher knows no game in its code; everything it shows about a game comes from here or from the game's own command line.

Each available Redux may name its package's download per platform (a zip and its SHA-256), which the launcher installs. None does yet: the repositories have private remotes, but no packages have been published. The launcher already offers updates when a catalog download's SHA-256 differs from the installed one. Explicit package versions remain planned.

A Cosmik project. Licensed under the GNU General Public License, version 3 or (at your option) any later version — see [LICENSE](LICENSE). Game names are their owners' trademarks; this index claims no affiliation.
