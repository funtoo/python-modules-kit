# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Python web framework and asynchronous networking library"
HOMEPAGE="http://www.tornadoweb.org/"
SRC_URI="https://files.pythonhosted.org/packages/59/4b/2c992ec4feb904471125702ed1dd3c912de1630c03bd555c3b05a41da93e/tornado-5.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="examples test"
RESTRICT="!test? ( test )"
S="${WORKDIR}/tornado-${PV}"

CDEPEND="
	dev-python/certifi[${PYTHON_USEDEP}]
	>=dev-python/pycurl-7.19.3.1[${PYTHON_USEDEP}]
	>=dev-python/twisted-16.0.0[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		${CDEPEND}
		dev-python/mock[${PYTHON_USEDEP}]
	)
"

# Block against older version for safety
RDEPEND="${CDEPEND}
	!<www-servers/tornado-6.0.4
"

distutils_enable_sphinx docs \
	dev-python/sphinx_rtd_theme

# doc without intersphinx does not build (asyncio error)
#PATCHES=(
#	"${FILESDIR}"/4.5.1-drop-intersphinx.patch
#)

python_test() {
	"${PYTHON}" -m tornado.test.runtests || die "tests failed under ${EPYTHON}"
}

python_install_all() {
	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins -r demos/.
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}