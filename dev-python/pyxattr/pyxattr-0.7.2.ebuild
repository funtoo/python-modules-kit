# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://pyxattr.k1024.org/ https://pypi.org/project/pyxattr/"
SRC_URI="https://files.pythonhosted.org/packages/31/9a/5211b7345c70b0ae3d164a1d0004b9642baf26c5ddd6cc3af04cf2c45ee4/pyxattr-0.7.2.tar.gz
"

DEPEND="sys-apps/attr:="
RDEPEND="
	python_targets_python2_7? ( dev-python/pyxattr-compat )
	sys-apps/attr:="
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pyxattr-0.7.2"

distutils_enable_tests pytest
distutils_enable_sphinx doc dev-python/recommonmark

python_prepare_all() {
	sed -i -e 's:, "-Werror"::' setup.py || die
	# Bug 548486
	sed -e "s:html_theme = 'default':html_theme = 'classic':" -i doc/conf.py || die
	distutils-r1_python_prepare_all
}
