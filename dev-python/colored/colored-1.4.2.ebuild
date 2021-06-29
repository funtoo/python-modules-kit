# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Simple library for color and formatting to terminal"
HOMEPAGE="https://gitlab.com/dslackw/colored https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/b2/16/04827e24c14266d9161bd86bad50069fea453fa006c3d2b31da39251184a/colored-1.4.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/colored-1.4.2"