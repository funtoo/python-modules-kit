# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop/"
SRC_URI="https://files.pythonhosted.org/packages/21/cd/0e0170022e3487ceeb0ec78668959be11b3fadc550acc985f0fb9e0de47b/pop-14.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

src_prepare() {
	touch ${S}/requirements.txt
	default
}

RDEPEND="
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/pop-config[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/dict-toolbox[${PYTHON_USEDEP}]
"