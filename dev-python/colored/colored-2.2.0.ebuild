# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Simple python library for color and formatting to terminal"
HOMEPAGE="None https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/5a/ac/1bd8fea22728659417bad6af3f0db39b625a82324fe1e918d81aa51e9837/colored-2.2.0.tar.gz -> colored-2.2.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/colored-2.2.0"