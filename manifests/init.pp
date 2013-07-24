# Public: Installs cairo via homebrew
#
# Examples
#
#   include cairo
#
class cairo {

  require homebrew
  require pkgconfig
  require xz
  require pixman

  package { 'cairo': }

}
