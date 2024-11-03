# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A library to generate HTML or XML"
HOMEPAGE="https://www.yattag.org https://pypi.org/project/yattag/"
SRC_URI="https://files.pythonhosted.org/packages/1c/1a/d3b2a2b8f843f5e7138471c4a5c9172ef62bb41239aa4371784b7448110c/yattag-1.16.1.tar.gz -> yattag-1.16.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="LGPL 2.1"
KEYWORDS="*"
S="${WORKDIR}/yattag-1.16.1"