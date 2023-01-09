# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="News Feed extension for Sphinx"
HOMEPAGE="https://bitbucket.org/prometheus/sphinxcontrib-newsfeed"
SRC_URI="https://files.pythonhosted.org/packages/2b/5e/8bc839b5c4ef030bf26eede24208a49f25d00033cbd4969b3895264f14db/sphinxcontrib-newsfeed-0.1.4.tar.gz -> sphinxcontrib-newsfeed-0.1.4.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins -r demo/.
		docompress -x /usr/share/doc/${PF}/examples
	fi
}