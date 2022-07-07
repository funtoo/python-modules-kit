# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/sivel/speedtest-cli https://pypi.org/project/speedtest-cli/"
SRC_URI="https://files.pythonhosted.org/packages/85/d2/32c8a30768b788d319f94cde3a77e0ccc1812dca464ad8062d3c4d703e06/speedtest-cli-2.1.3.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/speedtest-cli-2.1.3"