pkgname=xpad-beitong-dkms
pkgver=1.0
pkgrel=1
pkgdesc="Xbox gamepad driver with Beitong controller support using DKMS"
arch=('x86_64' 'aarch64')
url="https://github.com/torvalds/linux"
license=('GPL2')
depends=('dkms' 'linux-headers')
optdepends=('linux-lts-headers: for LTS kernel support')
source=("xpad.c"
        "dkms.conf"
        "Makefile")
sha256sums=('SKIP'
            'SKIP'
            'SKIP')

package() {
    install -dm755 "${pkgdir}/usr/src/xpad-${pkgver}"
    
    # Install source files
    install -m644 "${srcdir}/xpad.c" "${pkgdir}/usr/src/xpad-${pkgver}/"
    install -m644 "${srcdir}/Makefile" "${pkgdir}/usr/src/xpad-${pkgver}/"
    install -m644 "${srcdir}/dkms.conf" "${pkgdir}/usr/src/xpad-${pkgver}/"
}

post_install() {
    dkms add -m xpad -v ${pkgver}
    dkms build -m xpad -v ${pkgver}
    dkms install -m xpad -v ${pkgver}
}

post_upgrade() {
    dkms remove -m xpad -v ${pkgver} --all || true
    dkms add -m xpad -v ${pkgver}
    dkms build -m xpad -v ${pkgver}
    dkms install -m xpad -v ${pkgver}
}

pre_remove() {
    dkms remove -m xpad -v ${pkgver} --all || true
}
