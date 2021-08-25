# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="HTTP/2 framing layer for Python"
HOMEPAGE="https://github.com/python-hyper/hyperframe/ https://pypi.org/project/hyperframe/"
SRC_URI="https://files.pythonhosted.org/packages/5a/2a/4747bff0a17f7281abe73e955d60d80aae537a5d203f417fa1c2e7578ebb/hyperframe-6.0.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT License"
KEYWORDS="*"

S="${WORKDIR}/hyperframe-6.0.1"