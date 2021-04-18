# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/88/b5/9ccedd89d641dcfa5771f636a8a2e99f9d98b09f511f4f870d382ef2b007/outcome-1.1.0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/outcome-1.1.0"