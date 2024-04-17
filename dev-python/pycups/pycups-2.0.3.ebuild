# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python bindings for libcups"
HOMEPAGE="https://github.com/OpenPrinting/pycups https://pypi.org/project/pycups/"
SRC_URI="https://files.pythonhosted.org/packages/12/26/e28ff62af728743f696269f1092fe1be9b2bdb9c9c33f8051f8eccede92f/pycups-2.0.3.tar.gz -> pycups-2.0.3.tar.gz"

DEPEND=""
RDEPEND="net-print/cups"
IUSE="examples"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pycups-2.0.3"

python_install_all() {
	distutils-r1_python_install_all
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}
	fi
}
