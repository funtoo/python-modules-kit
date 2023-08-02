# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python library for working with RDF, a simple powerful language to represent information"
HOMEPAGE="https://pypi.org/project/rdflib/"
SRC_URI="https://github.com/RDFLib/rdflib/tarball/708aecdd7c5c771fb90937e0966ebe20dba66ea2 -> rdflib-7.0.0-708aecd.tar.gz
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