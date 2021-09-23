# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://bitbucket.org/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/15/bd/88d793c2e39b1e91c070bf4d1317db599b1c22efbf6bd194bb568064af21/regex-2021.8.28.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/regex-2021.8.28"