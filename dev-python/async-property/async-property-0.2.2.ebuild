# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python decorator for async properties."
HOMEPAGE="https://github.com/ryananguiano/async_property https://pypi.org/project/async-property/"
SRC_URI="https://files.pythonhosted.org/packages/a7/12/900eb34b3af75c11b69d6b78b74ec0fd1ba489376eceb3785f787d1a0a1d/async_property-0.2.2.tar.gz -> async_property-0.2.2.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytest-runner[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/async_property-0.2.2"