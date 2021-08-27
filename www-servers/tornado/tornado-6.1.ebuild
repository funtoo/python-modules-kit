# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python web framework and asynchronous networking library"
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/cf/44/cc9590db23758ee7906d40cacff06c02a21c2a6166602e095a56cbf2f6f6/tornado-6.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( www-servers/tornado-compat )
	>=dev-python/pycurl-7.19.3.1[${PYTHON_USEDEP}]
	>=dev-python/twisted-16.0.0[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	virtual/python-backports_abc[${PYTHON_USEDEP}]
	virtual/python-futures[${PYTHON_USEDEP}]
	virtual/python-singledispatch[${PYTHON_USEDEP}]
	' -3 pypy3
	)"
IUSE="examples python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/tornado-6.1"

python_install_all() {
	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins -r demos/.
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}
