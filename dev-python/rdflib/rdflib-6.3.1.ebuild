# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python library for working with RDF, a simple powerful language to represent information"
HOMEPAGE="https://pypi.org/project/rdflib/"
SRC_URI="https://github.com/RDFLib/rdflib/tarball/f3d31b002dda6d20247619b9606eff07039099df -> rdflib-6.3.1-f3d31b0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/html5lib[${PYTHON_USEDEP}]
	dev-python/isodate[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]
	dev-python/poetry-core[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/RDFLib-rdflib* "$S" || die
	fi
}