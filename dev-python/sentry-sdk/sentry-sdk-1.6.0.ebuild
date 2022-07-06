# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for Sentry (https://sentry.io)"
HOMEPAGE="https://github.com/getsentry/sentry-python https://pypi.org/project/sentry-sdk/"
SRC_URI="https://files.pythonhosted.org/packages/a0/ff/bcbcea86a61228572fb04b678bbf656470d72363936288a9cfe0a92c9890/sentry-sdk-1.6.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sentry-sdk-1.6.0"