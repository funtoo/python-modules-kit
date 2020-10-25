# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/d6/03/37d7c431c4c1c17507fb7b89240ddb7be70f2027277960d525f1679363c1/more-itertools-8.5.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/more-itertools-${PV}"