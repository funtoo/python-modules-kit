# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Pure-Python HPACK header compression"
HOMEPAGE="https://github.com/python-hyper/hpack https://pypi.org/project/hpack/"
SRC_URI="https://files.pythonhosted.org/packages/3e/9b/fda93fb4d957db19b0f6b370e79d586b3e8528b20252c729c476a2c02954/hpack-4.0.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT License"
KEYWORDS="*"

S="${WORKDIR}/hpack-4.0.0"