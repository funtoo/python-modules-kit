# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/getsentry/sentry-python https://pypi.org/project/sentry-sdk/"
SRC_URI="https://files.pythonhosted.org/packages/0b/c1/cd5097db94abe5fef064323e9463c9f8da0c1d42955ddd00c8abcf220f4f/sentry-sdk-1.9.2.tar.gz -> sentry-sdk-1.9.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sentry-sdk-1.9.2"