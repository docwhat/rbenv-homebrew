# Have homebrew automatically use Homebrew packages

This plugin causes [rbenv][] to automatically use the following homebrew
packages when building with [ruby-build][].

If you don't have a homebrew package installed then ruby-build
won't use it.

Packages:

* `openssl`
* `kerberose`
* `readline`
* `zlib`

It is recommended that at minimum you install `openssl` and `readline`.

Ruby 2.x needs the newer OpenSSL library. And the [readline
replacement][editline] that ships with OS X is
horrible.

## Installation

    git clone git://github.com/docwhat/rbenv-homebrew.git \
      "$(rbenv root)/plugins/rbenv-homebrew"

## Note

This is not compatible with Tim Pope's
[rbenv-readline][]
plugin.  This plugin does that and more.

[rbenv]:          https://github.com/sstephenson/rbenv        "Rbenv"
[ruby-build]:     https://github.com/sstephenson/ruby-build   "Ruby-build"
[rbenv-readline]: https://www.github.com/tpope/rbenv-readline "Tim Pope's rbenv-readline"
[editline]:       http://www.thrysoee.dk/editline/            "Editline"
