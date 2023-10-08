# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Markdown and reStructuredText in a single file."
HOMEPAGE="https://github.com/miyakogi/m2r https://pypi.org/project/m2r/"
SRC_URI="https://files.pythonhosted.org/packages/94/65/fd40fbdc608298e760affb95869c3baed237dfe5649d62da1eaa1deca8f3/m2r-0.3.1.tar.gz -> m2r-0.3.1.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="!<=dev-python/m2r-0.2.1 
	dev-python/mistune[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/m2r-0.3.1"

python_prepare_all() {
	sed -e "s/packages=\['tests'\],/packages=[],/" -i setup.py
	distutils-r1_python_prepare_all
}


post_src_install() {
	rm -rf ${D}/usr/bin
}