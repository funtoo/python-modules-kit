# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Simple library for color and formatting to terminal"
HOMEPAGE="https://gitlab.com/dslackw/colored https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/f3/d6/00203998f27ab30b2417998006ad0608f236740bb129494dd7c5621861e1/colored-1.4.4.tar.gz -> colored-1.4.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/colored-1.4.4"