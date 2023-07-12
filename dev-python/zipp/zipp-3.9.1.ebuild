# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp"
SRC_URI="https://files.pythonhosted.org/packages/21/40/791c00c9788d8a8b005a20248a9ce2fb46aaf12fa12b0ff9e1639aea04af/zipp-3.9.1.tar.gz -> zipp-3.9.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/zipp-compat )
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/zipp-3.9.1"