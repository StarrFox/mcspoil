# show this list
default:
    just --list

export:
    mkdir dist || true
    packwiz modrinth export
    mv *.mrpack dist/

update: update-lock update-mods

update-lock:
    nix flake update
    nix flake check

update-mods:
    packwiz update --all
