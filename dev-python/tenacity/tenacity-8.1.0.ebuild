# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/jd/tenacity https://pypi.org/project/tenacity/"
SRC_URI="https://files.pythonhosted.org/packages/ae/9c/ce67f96abe7c7530173e746b4f16a0bc5b4fa962ea1080d80cc5757dd210/tenacity-8.1.0.tar.gz -> tenacity-8.1.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/tenacity-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tenacity-8.1.0"