# Description

Simple [Campfire][campfire_app] notifier for the [Pomodoro app][pomodoro_app],
based off [xiplias][xiplias]'s [gist][parent_gist].

The script reads a JSON file to match a leading pomodoro tag with a Campfire
account. In the example file there is a campfire account with tag called
"wco". Any pomodoros starting with "wco-", "wco\_", "wco," will use the "wco"
campfire account. If no campfire account exists with the leading tag, nothing
will be broadcast.

# Installation

First, clone down the repo and install the gem dependencies ([tinder][tinder] and
[json][json]):

```sh
git clone git://gist.github.com/1383177.git ~/Dropbox/esca
sudo gem install json tinder --no-ri --no-rdoc
```

On the Mac, the system installed Ruby will be used (hence the sudo).

Now modify `campfire.json` with your campfire account (or accounts). Finally,
open **Preferences** in *Pomodoro*, go to the **Scripts** tab, and paste the
contents of `start.scpt` in the **Start** textarea (and `stop.scpt` **Stop**).

[campfire_app]: http://campfirenow.com/
[json]: http://rubygems.org/gems/json
[parent_gist]: https://gist.github.com/1280962
[pomodoro_app]: http://pomodoro.ugolandini.com/
[tinder]: http://rubygems.org/gems/tinder
[xiplias]: https://github.com/xiplias
