# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/jd/tenacity https://pypi.org/project/tenacity/"
SRC_URI="https://files.pythonhosted.org/packages/5a/a2/0363fd4382bd221e19dd4f3e2e420622d5f1a46f89f33aa436be035ea0c7/tenacity-8.2.1.tar.gz -> tenacity-8.2.1.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/tenacity-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tenacity-8.2.1"