# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.scons.org/ https://pypi.org/project/SCons/"
SRC_URI="https://files.pythonhosted.org/packages/c6/63/3a87df61a5d8e1b2ba116f4889f3dbc2717ebe2e34c77b2d34e4e6b9deef/SCons-4.4.0.tar.gz -> SCons-4.4.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-util/scons-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/SCons-4.4.0"

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