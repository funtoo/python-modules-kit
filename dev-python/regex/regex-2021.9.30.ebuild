# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://bitbucket.org/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/4c/69/acbf9b28cc1b699ef8d5152c40e0fc130d120ef13187f0fd54dd4afb7770/regex-2021.9.30.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/regex-2021.9.30"