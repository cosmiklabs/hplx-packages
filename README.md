# HPLX packages

The index the [HPLX launcher](../hplx-launcher) reads. It is data only, so publishing a change is a commit here.

- [`catalog.toml`](catalog.toml): every HPL-family game the launcher lists (names, engine generation, the game an add-on lives in) and what HPLX can do with each: whether a Redux version exists, and the package id its `hplx-game.toml` declares. The launcher knows no game in its code; everything it shows about a game comes from here or from the game's own command line.

Planned: Redux package releases (version, download, checksum) and the files that recognise a retail copy of each game.

A Cosmik project. Licensed under the GNU General Public License, version 3 or (at your option) any later version — see [LICENSE](LICENSE). Game names are their owners' trademarks; this index claims no affiliation.
