# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Configuration sub for Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop-config/"
SRC_URI="https://files.pythonhosted.org/packages/fa/a1/0fb494999c35b89264bdde4d193d2b9e2603059e6f60136d73d1db04ecae/pop-config-6.tar.gz -> pop-config-6.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

src_prepare() {
	touch ${S}/requirements.txt
	default
}

RDEPEND="dev-python/pyyaml[${PYTHON_USEDEP}]"