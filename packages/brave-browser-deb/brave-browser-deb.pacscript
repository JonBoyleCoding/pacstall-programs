name="brave-browser-deb"
gives="brave-browser"
pkgver="1.57.53"
breaks=("${gives}-bin" "${gives}-git" "${gives}-app")
url="https://github.com/brave/${gives}/releases/download/v${pkgver}/${gives}_${pkgver}_amd64.deb"
homepage='https://brave.com/'
pkgdesc="Release version of world's most unique, privacy friendly web browser"
hash="bf24b39cb0a312aa25dc53991ef0e963d2d8d541b61313aefec86ef2cb8aba83"
arch=('amd64')
pacdeps=("brave-keyring-deb")
repology=("project: brave")
maintainer="Elsie19 <elsie19@pm.me>"
