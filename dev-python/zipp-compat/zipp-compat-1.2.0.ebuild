# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp"
SRC_URI="https://files.pythonhosted.org/packages/78/08/d52f0ea643bc1068d6dc98b412f4966a9b63255d20911a23ac3220c033c4/zipp-1.2.0.tar.gz
"

DEPEND=""
RDEPEND="!<=dev-python/zipp-2 
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/zipp-1.2.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}