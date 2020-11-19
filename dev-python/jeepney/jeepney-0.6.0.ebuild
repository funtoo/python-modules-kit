# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=no
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Low-level, pure Python DBus protocol wrapper"
HOMEPAGE="https://gitlab.com/takluyver/jeepney"
SRC_URI="https://files.pythonhosted.org/packages/bb/4f/06017fbbe94eeaf1e7852c2dd7a065ca7d813e17b4500f4e842531d72593/jeepney-0.6.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

BDEPEND="
	test? ( dev-python/testpath[${PYTHON_USEDEP}] )
"

distutils_enable_tests pytest

distutils_enable_sphinx docs \
	dev-python/sphinx_rtd_theme

python_install_all() {
	if use examples; then
		docompress -x "/usr/share/doc/${PF}/examples"
		dodoc -r examples
	fi
	distutils-r1_python_install_all
}