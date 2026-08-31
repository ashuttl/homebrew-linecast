# homebrew-linecast

linecast is in [homebrew/core](https://formulae.brew.sh/formula/linecast), so this tap no longer carries a formula:

```sh
brew install linecast
```

If you installed linecast from this tap, `brew update` moves the installation over to the core formula on its own — there is nothing to do. Afterwards the tap can go:

```sh
brew untap ashuttl/linecast
```

The repository stays put so `tap_migrations.json` can keep doing that work for anyone who updates later. The formula it used to hold is in the git history.
