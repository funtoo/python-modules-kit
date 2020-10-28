# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/d4/df/bd7c25c4fe809a17315b3fc9878edf48d31dde7b431b6836848b063c0428/pytest-6.1.2.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/pytest-compat )
	$(python_gen_cond_dep '
			dev-python/atomicwrites[${PYTHON_USEDEP}]
			dev-python/pathlib2[${PYTHON_USEDEP}]
			dev-python/funcsigs[${PYTHON_USEDEP}]
			dev-python/wcwidth[${PYTHON_USEDEP}]
			dev-python/six[${PYTHON_USEDEP}]
	' -2)
	>=dev-python/attrs-17.4.0[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
			dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' -2 python3_{6,7} pypy3)
	dev-python/iniconfig[${PYTHON_USEDEP}]
	>=dev-python/more-itertools-4.0.0[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/pluggy-0.12[${PYTHON_USEDEP}]
	<dev-python/pluggy-1
	>=dev-python/py-1.8.2[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pytest-${PV}"

post_src_install() {
	if [ "$PV" == "4.6.9" ]; then
		rm -rf ${D}/usr/bin
	fi
}
