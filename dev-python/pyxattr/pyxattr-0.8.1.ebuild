# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to xattr"
HOMEPAGE="https://pyxattr.k1024.org"
SRC_URI="https://files.pythonhosted.org/packages/97/d1/7b85f2712168dfa26df6471082403013f3f815f3239aee3def17b6fd69ee/pyxattr-0.8.1.tar.gz -> pyxattr-0.8.1.tar.gz"

DEPEND="sys-apps/attr:="
RDEPEND="
	python_targets_python2_7? ( dev-python/pyxattr-compat )
	sys-apps/attr:="
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pyxattr-0.8.1"

distutils_enable_tests pytest
distutils_enable_sphinx doc dev-python/recommonmark

python_prepare_all() {
	sed -i -e 's:, "-Werror"::' setup.py || die
	# Bug 548486
	sed -e "s:html_theme = 'default':html_theme = 'classic':" -i doc/conf.py || die
	distutils-r1_python_prepare_all
}
