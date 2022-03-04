# md-table-oven

[Markdown table](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables) makes it easier to create table but a pain to edit directly.

So I gathered tools and created some scripts that allow me to do these following:
- initialize a csv file from simple list (as a text)
- transform `csv` to `yaml`
- transform `yaml` to `markdown`
- transform `markdown` to `yaml`
- transform `yaml` to `csv`

So weather you want `csv` file type to be a single source of truth or `yaml`, it can be.

This repository itself is not a tool in a traditional sense.
It's rather a starting point or a crafting room if you will.

## Tools
> these are what [example](./example) use and you can use any other tool that suits your needs actually.

- [dasel](https://github.com/TomWright/dasel)
- [jq](https://stedolan.github.io/jq/)
- [yq](https://mikefarah.gitbook.io/yq/)
- [markdown-table-cli](https://github.com/raine/markdown-table-cli)
- [parse-markdown-table-cli](https://www.npmjs.com/package/parse-markdown-table-cli)

These should gets installed if you use [direnv](https://direnv.net/) + [nix](https://github.com/NixOS/nix).

## Quick Look
`make gen-md` will start from csv all the way to md

### Others useful commands
```bash
make initialize-csv
make csv2yaml
make yaml2csv
make yaml2md
make md2yaml
make csv2md
make md2csv
```

These commands not only print results but also it saves to files in `out/` (by default)

## Customize
[Visit here and follow instructions there](./yours/README.md#start-crafting)
