# show this list
default:
    just --list

# export mrpack
export: refresh
    mkdir dist || true
    packwiz modrinth export --cache cache
    mv *.mrpack dist/

# refresh packwiz index
refresh:
    packwiz refresh

# update everything
update: update-lock update-mods

# update flake lock
update-lock:
    nix flake update
    nix flake check

# update all mods
update-mods:
    packwiz update --all

# format
format:
    alejandra .
