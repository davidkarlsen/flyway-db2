# flyway-db2

[Flyway](https://hub.docker.com/r/flyway/flyway) image with the IBM DB2 JDBC driver, published to `ghcr.io/davidkarlsen/flyway-db2`.

## Tagging scheme

Image tags follow the upstream `flyway/flyway` version. Every upstream patch release `X.Y.Z` gets three git tags (each tag push builds and pushes the image of the same name):

| Tag     | Points at                                  | Moves? |
|---------|--------------------------------------------|--------|
| `X.Y.Z` | that exact release                         | never  |
| `X.Y`   | the highest `X.Y.z` released               | forward only |
| `X`     | the highest `X.y.z` released               | forward only |

`X` and `X.Y` are force-pushed when a newer version in their series lands, but never move to a lower version. A late release in an older series (e.g. `13.8.1` after `13.10.3`) gets `13.8.1` and moves `13.8`, but leaves `13` on the newest release.

`latest` is the `main` build, which always carries the newest release.

Each `X.Y.Z` is built from a commit with `FROM flyway/flyway:X.Y.Z`. Releases older than `main` are built on a short-lived `release-X.Y` branch cut from the previous `X.Y` tag, so `main` never goes backwards; the branch is deleted once the release is tagged.
