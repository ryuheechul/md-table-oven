# yours

Everyfile will be gitignored by default so that you can be creative about your own use case

## Start Crafting

Start with `make touch` and edit the content of `bin/*.sh` to suit your needs.

Every `bin/[any].sh` is an individual pipeline, if you don't need to customize certain pipeline, you can just delete the file if you wish.

The name should match with [scripts in default](../default/bin) though.

### Advanced

Start with `make bring-advanced` and edit the content of `bin/*.sh` to suit your needs.

You can see there is an extra process for markdown file but that becomes reversed when it transform back to yaml to csv.
