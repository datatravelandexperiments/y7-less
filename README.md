# y7 less

Setup for [`less`](http://www.greenwoodsoftware.com/less/)
in [y7](https://codeberg.org/datatravelandexperiments/y7).

If `less` is installed, sets `$PAGER` to `less`.

If an `options` configuration file is present
(typically under `$XDG_CONFIG_HOME/less`),
sets the `$LESS` environment variable from its contents.

If a compiled `lesskeys` file is present
(typically in a platform-specific subdirectory under `$XDG_CONFIG_HOME/less`),
sets `$LESS` to point to it.

Sets `$LESSCHARSET` to `utf-8`.

If `lesspipe` is installed, sets `$LESSOPEN` and `$LESSCLOSE` to use it.
