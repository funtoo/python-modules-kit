# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Sphinx extension googleanalytics"
HOMEPAGE="https://bitbucket.org/birkenfeld/sphinx-contrib"
SRC_URI="https://files.pythonhosted.org/packages/48/7e/1b383d54276a743ee195f6f97a2a77054fa1f976913923e1e64fe500d975/sphinxcontrib-googleanalytics-0.1.tar.gz -> sphinxcontrib-googleanalytics-0.1.tar.gz"

LICENSE="BSD-2"
KEYWORDS="*"
SLOT="0"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"

python_prepare_all() {
	distutils-r1_python_prepare_all

	local init_patch="import codecs"
	local setup_py=$(cat "${S}/setup.py")

	echo "$init_patch" > "${S}/setup.py"
	echo "$setup_py" >> "${S}/setup.py"

	sed -i "s:open(os.path.join(HERE, 'README')).read():codecs.open(os.path.join(HERE, 'README'), encoding='utf-8').read():g" "${S}/setup.py"
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}