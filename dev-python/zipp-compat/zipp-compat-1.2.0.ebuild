# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp https://pypi.org/project/zipp/"
SRC_URI="https://files.pythonhosted.org/packages/78/08/d52f0ea643bc1068d6dc98b412f4966a9b63255d20911a23ac3220c033c4/zipp-1.2.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/zipp-2.0.0 
	$(python_gen_cond_dep '
	dev-python/more-itertools[${PYTHON_USEDEP}]
	' -2
	)"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/zipp-1.2.0"

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


post_src_install() {
	rm -rf ${D}/usr/bin
}