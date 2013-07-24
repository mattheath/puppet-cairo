# Public: Installs cairo via homebrew
#
# Examples
#
#   include cairo
#
class cairo {

  include homebrew
  include pkgconfig
  include xz
  include pixman
  include libpng

  homebrew::formula { 'cairo':
    source => 'puppet:///modules/cairo/brews/cairo.rb',
  }

  package { 'boxen/brews/cairo':
    ensure  => '1.12.14-boxen1',
    require => [
      Package['pkg-config'],
      Package['xz'],
      Package['pixman'],
      Package['libpng'],
    ]
  }

}
