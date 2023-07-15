# show this list
default:
    just --list

export: refresh
    mkdir dist || true
    packwiz modrinth export --cache cache
    mv *.mrpack dist/

refresh:
    packwiz refresh

update: update-lock update-mods

update-lock:
    nix flake update
    nix flake check

update-mods:
    packwiz update --all
