# HPLX packages

The index the [HPLX launcher](../hplx-launcher) reads locally or fetches from this repository. Anonymous remote delivery requires making this repository public; it remains private for now.

Run `just check` before committing a catalog change, with the launcher checked out beside this repository. It uses the launcher's parser and fails for missing or invalid input. Fields are described in `catalog.toml`; validation rules live in `hplx-launcher/src/catalog.rs` and its tests.

To contribute, edit the field descriptions and entries in `catalog.toml`: add a game with a unique id; mark a package available only with the id from its `hplx-game.toml`; add a download URL, SHA-256 and optional byte size for a zip containing that manifest and executable at its root; add retail shortcuts only after verifying them on that OS. Run `just check`, then commit as `chore(catalog): summary`. The workflow runs the same check on pushes and pull requests after both repositories become public; Actions stays disabled while private.

The current format is TOML schema 1. Optional additions that old launchers can safely ignore need no schema bump; incompatible structures or required behavior do. Unknown schemas are rejected with an update message. The SHA-256 identifies the installed artifact; display versions and source tags belong to GitHub Releases. See [ADR 0046](../hplx/docs/decisions/0046-catalog-delivery-uses-toml-schema-1.md) for the publication contract.

- [`catalog.toml`](catalog.toml): every HPL-family game the launcher lists (names, engine generation, the game an add-on lives in) and what HPLX can do with each: whether a Redux version exists, and the package id its `hplx-game.toml` declares. The launcher knows no game in its code; everything it shows about a game comes from here or from the game's own command line.

Each available Redux may name its package's download per platform (a zip and its SHA-256), which the launcher installs. None does yet: the repositories have private remotes, but no packages have been published. The launcher already offers updates when a catalog download's SHA-256 differs from the installed one.

A Cosmik project. Licensed under the GNU General Public License, version 3 or (at your option) any later version — see [LICENSE](LICENSE). Game names are their owners' trademarks; this index claims no affiliation.
