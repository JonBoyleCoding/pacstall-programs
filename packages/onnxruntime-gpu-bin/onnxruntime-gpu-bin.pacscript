name="onnxruntime-gpu-bin"
gives="onnxruntime-gpu"
pkgname="onnxruntime-gpu"
_pkgname="onnxruntime"
repology=("project: onnxruntime")
pkgver="1.15.1"
url="https://github.com/microsoft/onnxruntime/releases/download/v${pkgver}/onnxruntime-linux-x64-gpu-${pkgver}.tgz"
pkgdesc="Cross-platform inference and training machine-learning accelerator with gpu support"
hash="eab891393025edd5818d1aa26a42860e5739fcc49e3ca3f876110ec8736fe7f1"
maintainer="Zahrun <Zahrun@github.com>"
replace=("onnxruntime")
breaks=("onnxruntime-bin" "onnxruntime-1-7-0-bin")

package() {
  sudo install -Dm755 "lib/lib${_pkgname}.so.${pkgver}" -t "${pkgdir}/usr/local/lib"
  sudo install -Dm755 "lib/lib${_pkgname}_"* -t "${pkgdir}/usr/local/lib"
  sudo install -Dm644 include/* -t "${pkgdir}/usr/local/include"
  sudo install -Dm644 LICENSE -t "${pkgdir}/usr/share/licenses/${name}"
}

post_install() {
  sudo rm -f "/usr/local/lib/lib${_pkgname}.so"
  sudo ln -sf "/usr/local/lib/lib${_pkgname}.so.${pkgver}" "/usr/local/lib/lib${_pkgname}.so"
}

post_remove() {
  sudo rm -f "/usr/local/lib/lib${_pkgname}.so"
}
