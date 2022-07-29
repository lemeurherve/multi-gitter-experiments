# multi-gitter-experiments

## Requires `multi-gitter`

* see [`install.sh`](https://github.com/lindell/multi-gitter/blob/master/install.sh) in main repo for general purpose install.
* for [brew install](https://github.com/lindell/homebrew-multi-gitter):
    * `brew tap lindell/multi-gitter`
    * `brew install multi-gitter`

## Script run time setup
### Requires a temporary GH Access token to be loaded as an environment variable
* go to `https://github.com/settings/tokens` and create a personal access token.
* note: it requires (only?) the **repo** right
* to load the token, `export GITHUB_TOKEN=my_token_text`

### Requires an environment variable with the multi-gitter work dir root
* `export MULTI_GITTER_ROOT_PATH=$(pwd)`
