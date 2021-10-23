# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://bitbucket.org/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/33/a0/2ee4938d1e21eb280a79136e290d9e4a80e66115a093f8b7f1be74ac99e2/regex-2021.10.23.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/regex-2021.10.23"