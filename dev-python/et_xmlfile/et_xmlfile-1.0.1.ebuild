# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="An implementation of lxml.xmlfile for the standard library
"
HOMEPAGE="https://pypi.org/project/et_xmlfile/
https://pypi.org/project/et_xmlfile/
"
SRC_URI="https://files.pythonhosted.org/packages/22/28/a99c42aea746e18382ad9fb36f64c1c1f04216f41797f2f0fa567da11388/et_xmlfile-1.0.1.tar.gz"

DEPEND="
	dev-python/setuptools[$PYTHON_USEDEP]"
RDEPEND="
	dev-python/lxml[$PYTHON_USEDEP]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/et_xmlfile-${PV}"