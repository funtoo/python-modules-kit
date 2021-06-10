# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/c8/f6/b588190c74ac1b9232130fc8a63d5d79cb8485ed30a9172153df5cd4005c/subpop-0.4.4.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pyyaml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/subpop-0.4.4"