# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python package to parse, read and write Microsoft OLE2 files"
HOMEPAGE="https://www.decalage.info/olefile/
https://github.com/decalage2/olefile/
https://pypi.org/project/olefile/
"
SRC_URI="https://files.pythonhosted.org/packages/69/1b/077b508e3e500e1629d366249c3ccb32f95e50258b231705c09e3c7a4366/olefile-0.47.zip -> olefile-0.47.zip
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
S="${WORKDIR}/olefile-0.47"