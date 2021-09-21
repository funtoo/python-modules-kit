# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A UFO font library"
HOMEPAGE="https://github.com/fonttools/ufoLib2"
SRC_URI="https://files.pythonhosted.org/packages/34/e2/c8289814de5588f11ab3ee7b06896a75dfc99db8bfc2e1f3d094fc74cf13/ufoLib2-0.11.3.zip
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

S="${WORKDIR}/ufoLib2-0.11.3"

python_prepare_all() {
	sed -e '/\<wheel\>/d' -i setup.cfg || die
	distutils-r1_python_prepare_all
}
