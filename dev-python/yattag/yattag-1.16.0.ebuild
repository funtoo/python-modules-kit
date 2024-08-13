# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A library to generate HTML or XML"
HOMEPAGE="https://www.yattag.org https://pypi.org/project/yattag/"
SRC_URI="https://files.pythonhosted.org/packages/a9/fb/9390a3100b7ce4ce93f1db68627a7cadc5b128fcc06c486324936c5f1b49/yattag-1.16.0.tar.gz -> yattag-1.16.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="LGPL 2.1"
KEYWORDS="*"
S="${WORKDIR}/yattag-1.16.0"