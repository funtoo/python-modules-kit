# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Configuration sub for Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop-config/"
SRC_URI="https://files.pythonhosted.org/packages/e5/79/736fdea86a6c81fe99c1eacbce3d22c5badbb033d718fa92dcff8813a576/pop-config-6.9.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

src_prepare() {
	touch ${S}/requirements.txt
	default
}

RDEPEND="dev-python/pyyaml[${PYTHON_USEDEP}]"