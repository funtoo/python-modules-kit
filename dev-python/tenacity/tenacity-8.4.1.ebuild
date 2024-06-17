# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Retry code until it succeeds"
HOMEPAGE="https://github.com/jd/tenacity https://pypi.org/project/tenacity/"
SRC_URI="https://files.pythonhosted.org/packages/2a/19/97a822d4a556a728e6074298729ed0a35c70ecc2bcd8f5dd347829be9207/tenacity-8.4.1.tar.gz -> tenacity-8.4.1.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/tenacity-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tenacity-8.4.1"