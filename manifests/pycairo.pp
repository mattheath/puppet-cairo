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
      Package['boxen/brews/cairo'],
      Class['python'],
    ]
  }

  # Link cairo into the correct package directory, there is probably a better way

  file { "${homebrew::config::libdir}/python2.7/site-packages/cairo":
    ensure  => link,
    target  => "${homebrew::config::installdir}/Cellar/py2cairo/1.10.0-boxen1/lib/python2.7/site-packages/cairo",
    require => Package['boxen/brews/py2cairo'],
  }

}