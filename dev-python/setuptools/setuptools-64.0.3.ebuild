# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/"
SRC_URI="https://files.pythonhosted.org/packages/c1/9c/67d1cb3ede2b167ee271ff22c398e7067715f294994fb18164f40ac981e4/setuptools-64.0.3.tar.gz -> setuptools-64.0.3.tar.gz
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
S="${WORKDIR}/setuptools-64.0.3"

SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
	# Remove any wrapper
	if [ "$PN"  == 'setuptools-compat' ]; then
		rm -rf ${D}/usr/bin
	fi

}
