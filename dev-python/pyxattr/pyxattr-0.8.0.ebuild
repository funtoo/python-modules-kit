# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://pyxattr.k1024.org/ https://pypi.org/project/pyxattr/"
SRC_URI="https://files.pythonhosted.org/packages/8f/27/f9072922b73e35bdea86ec684fa754271181dc8e95507c8becd4fbcbd191/pyxattr-0.8.0.tar.gz -> pyxattr-0.8.0.tar.gz
"

DEPEND="sys-apps/attr:="
RDEPEND="
	python_targets_python2_7? ( dev-python/pyxattr-compat )
	sys-apps/attr:="
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pyxattr-0.8.0"

distutils_enable_tests pytest
distutils_enable_sphinx doc dev-python/recommonmark

python_prepare_all() {
	sed -i -e 's:, "-Werror"::' setup.py || die
	# Bug 548486
	sed -e "s:html_theme = 'default':html_theme = 'classic':" -i doc/conf.py || die
	distutils-r1_python_prepare_all
}
