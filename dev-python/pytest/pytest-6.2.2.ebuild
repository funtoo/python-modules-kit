# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/d1/80/b4f47a1f933699cd531a7b336a6f3d82912e3e5e66e4a3bb1d8f0d1d98b0/pytest-6.2.2.tar.gz
"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pytest-compat )
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	dev-python/iniconfig[${PYTHON_USEDEP}]
	>=dev-python/more-itertools-4[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pluggy-0.12[${PYTHON_USEDEP}]
	<dev-python/pluggy-1[${PYTHON_USEDEP}]
	>=dev-python/py-1.8.2[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' -2 python3_6 python3_7 pypy3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pytest-6.2.2"

post_src_install() {
	if [ "$PV" == "4.6.9" ]; then
		rm -rf ${D}/usr/bin
	fi
}
