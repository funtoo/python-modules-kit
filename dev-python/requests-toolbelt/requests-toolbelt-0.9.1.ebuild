# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://toolbelt.readthedocs.org https://pypi.org/project/requests-toolbelt/"
SRC_URI="https://files.pythonhosted.org/packages/28/30/7bf7e5071081f761766d46820e52f4b16c8a08fef02d2eb4682ca7534310/requests-toolbelt-0.9.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/requests[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/requests-toolbelt-0.9.1"

DOCS=( AUTHORS.rst HISTORY.rst README.rst )
