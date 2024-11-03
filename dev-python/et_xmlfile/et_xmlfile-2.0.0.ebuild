# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="An implementation of lxml.xmlfile for the standard library"
HOMEPAGE="https://pypi.org/project/et_xmlfile/
"
SRC_URI="https://files.pythonhosted.org/packages/d3/38/af70d7ab1ae9d4da450eeec1fa3918940a5fafb9055e934af8d6eb0c2313/et_xmlfile-2.0.0.tar.gz -> et_xmlfile-2.0.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/lxml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/et_xmlfile-2.0.0"