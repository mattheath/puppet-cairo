# Cairo Puppet Module for Boxen

Installs the [Cairo](http://cairographics.org/) graphics library.

[![Build Status](https://travis-ci.org/mattheath/puppet-cairo.png?branch=master)](https://travis-ci.org/mattheath/puppet-cairo)

## Usage

```puppet
include cairo
```

## Required Puppet Modules

* `boxen`
* `homebrew`
* `pkgconfig`
* `xz`
* `pixman`
* `libpng`

If using the python bindings, then the `python` module (and therefore `xquartz`) is also required
