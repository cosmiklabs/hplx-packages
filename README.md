# HPLX packages

The local index the [HPLX launcher](../hplx-launcher) reads. Remote catalog delivery is not implemented yet.

Run `just check` before committing a catalog change, with the launcher checked out beside this repository. It uses the launcher's parser and fails for missing or invalid input. Fields are described in `catalog.toml`; validation rules live in `hplx-launcher/src/catalog.rs` and its tests.

The current format is TOML schema 1. Optional additions that old launchers can safely ignore need no schema bump; incompatible structures or required behavior do. Unknown schemas are rejected with an update message. Explicit package versions and source provenance will be settled before the first published package.

- [`catalog.toml`](catalog.toml): every HPL-family game the launcher lists (names, engine generation, the game an add-on lives in) and what HPLX can do with each: whether a Redux version exists, and the package id its `hplx-game.toml` declares. The launcher knows no game in its code; everything it shows about a game comes from here or from the game's own command line.

Each available Redux may name its package's download per platform (a zip and its SHA-256), which the launcher installs. None does yet: the repositories have private remotes, but no packages have been published. The launcher already offers updates when a catalog download's SHA-256 differs from the installed one. Explicit package versions remain planned.

A Cosmik project. Licensed under the GNU General Public License, version 3 or (at your option) any later version — see [LICENSE](LICENSE). Game names are their owners' trademarks; this index claims no affiliation.
