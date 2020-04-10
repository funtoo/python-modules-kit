# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Configuration sub for Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop-config/"
SRC_URI="https://files.pythonhosted.org/packages/3a/e1/5ced792a9ea3b991b313231a66cfee8ab5a5efed0cd294e4a0d44782ee4e/pop-config-5.5.tar.gz -> pop-config-5.5.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

src_prepare() {
	touch ${S}/requirements.txt
	default
}

RDEPEND="dev-python/pyyaml[${PYTHON_USEDEP}]"