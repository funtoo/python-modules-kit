# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python package to parse, read and write Microsoft OLE2 files (Structured Storage or Compound Document, Microsoft Office)"
HOMEPAGE="https://www.decalage.info/python/olefileio https://pypi.org/project/olefile/"
SRC_URI="https://files.pythonhosted.org/packages/34/81/e1ac43c6b45b4c5f8d9352396a14144bba52c8fec72a80f425f6a4d653ad/olefile-0.46.zip
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/olefile-0.46"