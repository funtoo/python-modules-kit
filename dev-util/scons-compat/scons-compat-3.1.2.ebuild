# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://www.scons.org/ https://pypi.org/project/SCons/"
SRC_URI="https://files.pythonhosted.org/packages/de/95/29892f46a6da11e90154147b96a18695c8562e94119e8084352f71e61d24/scons-3.1.2.tar.gz
"

DEPEND=""
RDEPEND="!<dev-util/scons-4.0.0 "
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/SCons-3.1.2"

if [ "$PN"  == 'scons-compat' ]; then
	S="${WORKDIR}/scons-${PV}"
fi
python_install() {
	distutils-r1_python_install
	rm "${D}"/usr/*.1
	doman *.1

	if [ "$PN"  == 'scons-compat' ]; then
		rm -rf "${D}"/usr/bin
		find "${D}" -type d -name "man" -exec rm -rf \{\} \;

	fi

}


post_src_install() {
	rm -rf ${D}/usr/bin
}