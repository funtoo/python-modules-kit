# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Extensible Python-based build utility"
HOMEPAGE="https://www.scons.org/"
SRC_URI="https://files.pythonhosted.org/packages/64/a1/9dc5c5e43b3d1b1832da34c8ae7b239a8f2847c33509fa0eb011fd8bc1ad/SCons-4.3.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-util/scons-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/SCons-4.3.0"

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
