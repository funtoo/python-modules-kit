# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/flyingcircusio/pycountry https://pypi.org/project/pycountry/"
SRC_URI="https://files.pythonhosted.org/packages/33/24/033604d30f6cf82d661c0f9dfc2c71d52cafc2de516616f80d3b0600cb7c/pycountry-22.3.5.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycountry-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pycountry-22.3.5"