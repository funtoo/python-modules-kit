# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Dict tools for Python projects"
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/ae/1c/e6a77e6a99e948eccfa1b6a1ab7a533f4b12c67f418578daa7b54ac7f2f2/dict-toolbox-1.16.tar.gz"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/dict-toolbox-${PV}"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
