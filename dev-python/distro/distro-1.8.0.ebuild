# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Distro - an OS platform information API"
HOMEPAGE="https://github.com/python-distro/distro https://pypi.org/project/distro/"
SRC_URI="https://files.pythonhosted.org/packages/4b/89/eaa3a3587ebf8bed93e45aa79be8c2af77d50790d15b53f6dfc85b57f398/distro-1.8.0.tar.gz -> distro-1.8.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/distro-1.8.0"