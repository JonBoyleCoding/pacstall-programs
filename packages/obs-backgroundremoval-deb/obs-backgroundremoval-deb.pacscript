name="obs-backgroundremoval-deb"
gives="obs-backgroundremoval"
repology=("project: ${gives}")
breaks=("${gives}" "${gives}-git")
pkgver="1.1.3"
url="https://github.com/royshil/obs-backgroundremoval/releases/download/${pkgver}/obs-backgroundremoval-${pkgver}-x86_64-linux-gnu.deb"
pkgdesc="OBS plugin to replace the background in portrait images and video"
hash="25e64f0df7223e506b306f556207b195b03dc3fda5cce677155fc4176c3b67d9"
arch=('amd64')
maintainer="Zahrun <Zahrun@github.com>"
incompatible=("debian:bullseye")
