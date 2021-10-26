# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python Documentation Utilities"
HOMEPAGE="http://docutils.sourceforge.net/ https://pypi.org/project/docutils/"
#SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
SRC_URI="https://files.pythonhosted.org/packages/61/d7/8b2786f10b73e546aa9a85c2791393a6f475a16771b8028c7fb93d6ac8ce/docutils-0.18.tar.gz"

LICENSE="BSD-2 GPL-3 public-domain"
SLOT="0"
KEYWORDS="*"
IUSE=""

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

python_compile_all() {
	# Generate html docs from reStructured text sources.

	# Place html4css1.css in base directory to ensure that the generated reference to it is correct.
	cp docutils/writers/html4css1/html4css1.css . || die

	cd tools || die
	"${EPYTHON}" buildhtml.py --input-encoding=utf-8 \
		--stylesheet-path=../html4css1.css, --traceback ../docs || die
}

src_test() {
	cd test || die
	distutils-r1_src_test
}

python_test() {
	"${EPYTHON}" alltests.py -v || die "Testing failed with ${EPYTHON}"
}

python_install() {
	distutils-r1_python_install

	# Install tools.
	python_doscript tools/{buildhtml,quicktest}.py
}

install_txt_doc() {
	local doc="${1}"
	local dir="txt/$(dirname ${doc})"
	docinto "${dir}"
	dodoc "${doc}"
}

python_install_all() {
	local DOCS=( *.txt )
	local HTML_DOCS=( docs tools docutils/writers/html4css1/html4css1.css )

	distutils-r1_python_install_all

	local doc
	while IFS= read -r -d '' doc; do
		install_txt_doc "${doc}"
	done < <(find docs tools -name '*.txt' -print0)
}