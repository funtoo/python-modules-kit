# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
PYTHON_REQ_USE="xml(+)"

inherit distutils-r1

DESCRIPTION="WSDL parsing services package for Web Services for Python"
HOMEPAGE="https://github.com/pycontribs/wstools https://pypi.org/project/wstools/"
SRC_URI="https://files.pythonhosted.org/packages/8d/d0/0e48ae89e4b2a9aa3a1a088782ae183dc09ca1f3545b29051c46d9efbc0f/wstools-0.4.8.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="
	${RDEPEND}
	dev-python/pbr[${PYTHON_USEDEP}]
"

src_prepare() {
	default
	sed -i -e "s/, 'pytest-runner'//" ${S}/setup.py || die
}

distutils_enable_tests pytest