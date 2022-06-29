# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Sniff out which async library your code is running under"
HOMEPAGE="https://github.com/python-trio/sniffio https://pypi.org/project/sniffio/"
SRC_URI="https://files.pythonhosted.org/packages/a6/ae/44ed7978bcb1f6337a3e2bef19c941de750d73243fc9389140d62853b686/sniffio-1.2.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/sniffio-1.2.0"