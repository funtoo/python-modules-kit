# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/"
SRC_URI="https://files.pythonhosted.org/packages/fe/db/68d856066c59bd9f05e827c3cf80164d870b8b6af37dc5ad6c87a71d20f2/setuptools-67.0.0.tar.gz -> setuptools-67.0.0.tar.gz
"

DEPEND="
	app-arch/unzip"
RDEPEND="python_targets_python2_7? ( dev-python/setuptools-compat )"
PDEPEND=">=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools-67.0.0"

SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
	# Remove any wrapper
	if [ "$PN"  == 'setuptools-compat' ]; then
		rm -rf ${D}/usr/bin
	fi

}
