require 'formula'

# Adapted from https://trac.macports.org/browser/trunk/dports/www/webkit-gtk
# Tested with newer glib and libsoup than currently in homebrew (also in tap).
class Webkitgtk < Formula
  homepage 'https://mason-larobina.github.io/luakit/'
  url 'https://github.com/mason-larobina/luakit/tarball/master'
  sha1 '97821c2435528071655d5d0f585aab180b4cb18b'

  depends_on 'pkg-config' => :build
  depends_on 'autoconf' => :build
  depends_on 'automake' => :build
  depends_on 'libtool' => :build

  depends_on :x11
  depends_on 'xz'
  depends_on 'zlib'
  depends_on 'libsoup'
  depends_on 'gtk-engines'
  depends_on 'lua'
  depends_on 'luajit'
  depends_on 'webkitgtk'
  depends_on 'sqlite3'


  fails_with :clang do
    build 421
  end

  def install
    system " make install USE_UNIQUE=0 USE_LUAJIT=1"
  end

  def patches
    DATA
  end

end

__END__
