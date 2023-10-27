# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A library to generate HTML or XML"
HOMEPAGE="https://www.yattag.org https://pypi.org/project/yattag/"
SRC_URI="https://files.pythonhosted.org/packages/75/49/51045efa8c4e42831c80e0031ee4139450347e587e5cda0a731198ed6e36/yattag-1.15.2.tar.gz -> yattag-1.15.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="LGPL 2.1"
KEYWORDS="*"
S="${WORKDIR}/yattag-1.15.2"