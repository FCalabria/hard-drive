# Paqui's hard drive

## Deps

- [Hugo](https://gohugo.io/getting-started/installing/)
- The theme is listed as a submodule, after `git clone` you need to run `git submodule init` and `git submodule update`

## How to change things and deploy

_This will be a Github action at some point._

The editable files are in `src`. The files at the same level of this readme are automatically generated. Refer to [Hugo](https://gohugo.io/) docs if you have doubts.

To run the development server do `cd src && hugo server`.

To deploy run the `deploy.sh` script