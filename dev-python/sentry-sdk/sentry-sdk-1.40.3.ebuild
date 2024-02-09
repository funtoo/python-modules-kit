# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for Sentry (https://sentry.io)"
HOMEPAGE="https://github.com/getsentry/sentry-python https://pypi.org/project/sentry-sdk/"
SRC_URI="https://files.pythonhosted.org/packages/f5/1b/90164221767767c4ab9e1d722a2961a8ff71d9cbb99fcee08973f6cf9442/sentry-sdk-1.40.3.tar.gz -> sentry-sdk-1.40.3.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sentry-sdk-1.40.3"