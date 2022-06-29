# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Universal encoding detector for Python 3"
HOMEPAGE="https://github.com/chardet/chardet https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/31/a2/12c090713b3d0e141f367236d3a8bdc3e5fca0d83ff3647af4892c16c205/chardet-5.0.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/chardet-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/chardet-5.0.0"