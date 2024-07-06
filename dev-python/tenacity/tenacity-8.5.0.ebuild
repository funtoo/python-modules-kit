# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Retry code until it succeeds"
HOMEPAGE="https://github.com/jd/tenacity https://pypi.org/project/tenacity/"
SRC_URI="https://files.pythonhosted.org/packages/a3/4d/6a19536c50b849338fcbe9290d562b52cbdcf30d8963d3588a68a4107df1/tenacity-8.5.0.tar.gz -> tenacity-8.5.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/tenacity-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tenacity-8.5.0"