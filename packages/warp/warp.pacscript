name="warp"
gives="warp"
pkgver="0.5.4"
pkgdesc="Fast and secure file transfer"
repology=("project: warp-share-files")
makedepends=("meson" "ninja-build" "libgtk-4-dev" "libadwaita-1-dev" "libappstream-glib-dev" "gir1.2-appstreamglib-1.0" "libappstream-glib8" "libadwaita-1-0" "gettext" "desktop-file-utils" "rustc" "cargo" "itstool" "cmake")
depends=("libgtk-4-dev" "gir1.2-appstreamglib-1.0" "libappstream-glib8" "libadwaita-1-0" "gettext" "desktop-file-utils" "rustc" "cargo")
url="https://gitlab.gnome.org/World/${name}/-/archive/v${pkgver}/${name}-v${pkgver}.tar.gz"
hash="e90e4b3329961277aa228e6c0b4ceed640e97f848d520607f8f651212516e4d3"
maintainer="Oren Klopfer <oren@taumoda.com>"
incompatible=("ubuntu:20.04" "ubuntu:20.10" "ubuntu:21.04" "ubuntu:21.10" "ubuntu:22.04" "debian:*")

build() {
  sudo meson setup build
}

package() {
  sudo DESTDIR="${pkgdir}" ninja -C build install
}
