# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python library for working with RDF, a simple powerful language to represent information"
HOMEPAGE="https://pypi.org/project/rdflib/"
SRC_URI="https://github.com/RDFLib/rdflib/tarball/6ed2ef48ed38679bcdafe7cae250a2ef4b315e7b -> rdflib-6.1.1-6ed2ef4.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/html5lib[${PYTHON_USEDEP}]
	dev-python/isodate[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/RDFLib-rdflib* "$S" || die
	fi
}