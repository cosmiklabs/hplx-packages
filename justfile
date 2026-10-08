set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

# Uses the consumer's parser; both repositories must be checked out side by side.
check:
    just --justfile ../hplx-launcher/justfile --working-directory ../hplx-launcher validate-catalog ../hplx-packages/catalog.toml
