# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp https://pypi.org/project/zipp/"
SRC_URI="https://files.pythonhosted.org/packages/3a/9f/1d4b62cbe8d222539a84089eeab603d8e45ee1f897803a0ae0860400d6e7/zipp-3.5.0.tar.gz
"

DEPEND="
	$(python_gen_cond_dep '
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.2[${PYTHON_USEDEP}]
	' -3 pypy3
	)"
RDEPEND="python_targets_python2_7? ( dev-python/zipp-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/zipp-3.5.0"

python_prepare_all() {
	if [ "$PN" == 'zipp-compat' ]; then
		sed -i "s:use_scm_version=True:version='${PV}',name='${PN//-/.}':" setup.py || die
		sed -r -i "s:setuptools_scm[[:space:]]*([><=]{1,2}[[:space:]]*[0-9.a-zA-Z]+|)[[:space:]]*::" \
			setup.cfg || die
	else
		# Skip a potentially flaky performance test
		sed -i -e '/^import func_timeout\|^ *@func_timeout\.func_set_timeout/d' \
			-e 's/test_implied_dirs_performance/_&/' test_zipp.py || die
	fi
	distutils-r1_python_prepare_all
}
