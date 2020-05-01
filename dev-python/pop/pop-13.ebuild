# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop/"
SRC_URI="https://files.pythonhosted.org/packages/4b/23/7a53a357453f69cba320dd2850c277f63435c7b88e9f7e1f093da2f47199/pop-13.tar.gz -> pop-13.tar.gz"

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
"