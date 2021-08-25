# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Python web framework and asynchronous networking library"
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/e6/78/6e7b5af12c12bdf38ca9bfe863fcaf53dc10430a312d0324e76c1e5ca426/tornado-5.1.1.tar.gz
"

DEPEND=""
RDEPEND="!<www-servers/tornado-6 
	$(python_gen_cond_dep '
	dev-python/certifi[${PYTHON_USEDEP}]
	' -2
	)
	>=dev-python/pycurl-7.19.3.1[${PYTHON_USEDEP}]
	>=dev-python/twisted-16.0.0[${PYTHON_USEDEP}]"
IUSE="examples"
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/tornado-5.1.1"

python_install_all() {
	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins -r demos/.
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}


post_src_install() {
	rm -rf ${D}/usr/bin
}