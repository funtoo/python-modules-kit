# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pyxattr.k1024.org"
SRC_URI="https://files.pythonhosted.org/packages/36/1d/1a5f3165f330e1a0427636f2bd995dbcc02d0f7660e89458d64806a2ed1e/pyxattr-0.6.1.tar.gz -> pyxattr-0.6.1.tar.gz"

DEPEND="sys-apps/attr:="
RDEPEND="sys-apps/attr:= !<dev-python/pyxattr-0.7.1"

BDEPEND=""
IUSE=""
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"

S="${WORKDIR}/pyxattr-${PV}"

# Convert 2-space indents to tabs in the ebuild:
distutils_enable_tests pytest
distutils_enable_sphinx doc dev-python/recommonmark

python_prepare_all() {
	sed -i -e 's:, "-Werror"::' setup.py || die
	# Bug 548486
	sed -e "s:html_theme = 'default':html_theme = 'classic':" -i doc/conf.py || die
	distutils-r1_python_prepare_all
}
