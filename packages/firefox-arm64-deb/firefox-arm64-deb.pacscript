name="firefox-arm64-deb"
gives="firefox"
pkgver="117.0+build2"
ubversion="23.10"
arch=("arm64")
repology=("project: ${gives}")
incompatible=("ubuntu:bionic" "ubuntu:focal" "ubuntu:jammy" "ubuntu:kinetic" "debian:stretch" "debian:buster" "debian:bullseye" "debian:sid")
url="https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu/pool/main/f/${gives}/${gives}_${pkgver}-0ubuntu0.${ubversion}.1~mt1_arm64.deb"
homepage='https://www.mozilla.org/en-US/firefox'
pkgdesc="Free and open-source web browser developed by the Mozilla Foundation"
maintainer="Oren Klopfer <oren@taumoda.com>"
hash="dfcb9cf2af9695029729e32410e5f760a3c75f2acb47fade5b62919e1509f8b8"
