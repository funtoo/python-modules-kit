# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A UFO font library"
HOMEPAGE="https://github.com/fonttools/ufoLib2"
SRC_URI="https://files.pythonhosted.org/packages/fb/4a/45e392757bd28148d954c7418b99afbed4b45c334b52f42daaceed885aa5/ufolib2-0.17.1.tar.gz -> ufolib2-0.17.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/fonttools[${PYTHON_USEDEP}]
	dev-python/fs[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]"
BDEPEND="
	app-arch/unzip"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ufoLib2-0.17.1"

python_prepare_all() {
	sed -e '/\<wheel\>/d' -i setup.cfg || die
	distutils-r1_python_prepare_all
}
