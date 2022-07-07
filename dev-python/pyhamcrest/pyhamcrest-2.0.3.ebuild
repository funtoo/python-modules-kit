# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/hamcrest/PyHamcrest https://pypi.org/project/PyHamcrest/"
SRC_URI="https://files.pythonhosted.org/packages/33/6d/49d61fc2de276137397f3a9ec2658cb3e162d4f31b9f12fb671d6ec24a7c/PyHamcrest-2.0.3.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyhamcrest-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/PyHamcrest-2.0.3"