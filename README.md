[![Build Status](https://travis-ci.org/csdms/homebrew-models.svg?branch=master)](https://travis-ci.org/csdms/homebrew-models)

homebrew-models
===============

CSDMS model formulae for the Homebrew package manager http://brew.sh

To install Homebrew,

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

How do I install these formulae?
--------------------------------
Just `brew tap csdms/models` and then `brew install <formula>`.

If the formula conflicts with one from mxcl/master or another tap, you can `brew install csdms/models/<formula>`.

You can also install via URL:

    brew install https://raw.github.com/csdms/homebrew-models/master/<formula>.rb

Docs
----
`brew help`, `man brew`, or the Homebrew [wiki][].

[wiki]:http://wiki.github.com/mxcl/homebrew
