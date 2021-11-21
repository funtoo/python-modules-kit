# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="pytest: simple powerful testing with Python"
HOMEPAGE="https://docs.pytest.org/en/latest/ https://pypi.org/project/pytest/"
SRC_URI="https://files.pythonhosted.org/packages/ec/2e/1602fca477ab3ccb1952f07db0536b60b6afafec16eced8063b553001509/pytest-4.6.9.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="!<dev-python/pytest-6.1.1 
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/iniconfig[${PYTHON_USEDEP}]
	>=dev-python/more-itertools-4[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pluggy-0.12[${PYTHON_USEDEP}]
	<dev-python/pluggy-1[${PYTHON_USEDEP}]
	>=dev-python/py-1.8.2[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/atomicwrites[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]
	dev-python/funcsigs[${PYTHON_USEDEP}]
	dev-python/wcwidth[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	' -2
	)
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' python3_6 -2 pypy3 python3_7
	)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pytest-4.6.9"

post_src_install() {
	if [ "$PV" == "4.6.9" ]; then
		rm -rf ${D}/usr/bin
	fi
}
