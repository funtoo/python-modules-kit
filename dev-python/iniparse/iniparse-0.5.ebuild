# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Better INI parser for Python"
HOMEPAGE="https://pypi.org/project/iniparse"
SRC_URI="https://files.pythonhosted.org/packages/4c/9a/02beaf11fc9ea7829d3a9041536934cd03990e09c359724f99ee6bd2b41b/iniparse-0.5.tar.gz -> iniparse-0.5.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/six-1.10.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT PSF-2"
KEYWORDS="*"
S="${WORKDIR}/iniparse-0.5"