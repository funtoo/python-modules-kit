# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop/"
SRC_URI="https://files.pythonhosted.org/packages/83/60/2238faa932e21b3d669f6ea97e7f7afe91bb45c3d5a8c1c509bf4205ab2e/pop-14.1.tar.gz"

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