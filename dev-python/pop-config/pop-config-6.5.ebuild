# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Configuration sub for Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop-config/"
SRC_URI="https://files.pythonhosted.org/packages/34/db/fd73ef2a684602ccf7ac9c976413e5c7c8876cdf4e26a7e5ba5e0d0dd71c/pop-config-6.5.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

src_prepare() {
	touch ${S}/requirements.txt
	default
}

RDEPEND="dev-python/pyyaml[${PYTHON_USEDEP}]"