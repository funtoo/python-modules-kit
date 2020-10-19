# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Python interface to xattr"
HOMEPAGE="https://pyxattr.k1024.org"
SRC_URI="https://files.pythonhosted.org/packages/cf/b1/7ed931d98b5a91a59b69fcc2860e5b720a22ed1ddb85268415181c9b0986/pyxattr-0.7.1.tar.gz"

DEPEND="sys-apps/attr:="
RDEPEND="
	python_targets_python2_7? ( dev-python/pyxattr-compat )
	sys-apps/attr:="
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"

S="${WORKDIR}/pyxattr-${PV}"

distutils_enable_tests pytest
distutils_enable_sphinx doc dev-python/recommonmark

python_prepare_all() {
	sed -i -e 's:, "-Werror"::' setup.py || die
	# Bug 548486
	sed -e "s:html_theme = 'default':html_theme = 'classic':" -i doc/conf.py || die
	distutils-r1_python_prepare_all
}
