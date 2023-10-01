# Introduction to Marine Engineering


Introductory textbook for use at Massachusetts Maritime Academy.

June 2023  Status: Work in progress


## Authoring and deployment instructions

### Asset management

The source for several assets may be found at `source/resources`. These output files must have unique names, and must be copied into the gitignored `assets`  where they can be seen by PreTeXt, using the `update_assets.py` script:

```bash
python scripts/update_assets.py
```

This process must be done once when the project is cloned from Git, and repeated
each time an asset in `source/resources` is updated.

### Building

To build HTML and PDF versions of the book using the CLI after managing assets
(see above):

```bash
pretext build web --clean
pretext build print --clean
```

### Deploying

To preview how this book will appear upon a deploy to [https://whaynes.github.io/IME/]():

```bash
rm -rf output/stage # to remove cached files
pretext deploy --stage-only
pretext view # open /output/stage in your browser
```

To deploy updates to `engineeringstatics.org`:

```bash
## after adding/commiting everything with Git
rm -rf output/stage # to remove cached files
pretext deploy
```