# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://docs.pytest.org/en/latest/ https://pypi.org/project/pytest/"
SRC_URI="https://files.pythonhosted.org/packages/2b/a6/22c1138c2a7b60c9eb9ddeac017d82a58dfd9661651c721e7466af648764/pytest-7.3.0.tar.gz -> pytest-7.3.0.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pytest-compat )
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	dev-python/iniconfig[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pluggy-0.12[${PYTHON_USEDEP}]
	<dev-python/pluggy-2[${PYTHON_USEDEP}]
	>=dev-python/py-1.8.2[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' python3_6 -2 python3_7 pypy3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pytest-7.3.0"

post_src_install() {
	if [ "$PV" == "4.6.9" ]; then
		rm -rf ${D}/usr/bin
	fi
}
