# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://github.com/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/1a/6b/9b6b8284e88105acbcb39e71bd3bfcaffcd36c2601152ae23b00e6e04d91/regex-2022.6.2.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/regex-2022.6.2"