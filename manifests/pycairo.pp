# Public: Installs cairo via homebrew
#
# Examples
#
#   include cairo::pycairo
#
class cairo::pycairo {

  include homebrew
  include python
  include cairo

  homebrew::formula { 'py2cairo':
    source => 'puppet:///modules/cairo/brews/py2cairo.rb',
  }

  package { 'boxen/brews/py2cairo':
    ensure  => '1.10.0-boxen1',
    require => [
      Package['cairo'],
      Class['python'],
    ]
  }

}