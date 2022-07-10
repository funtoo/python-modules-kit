# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/installer/"
SRC_URI="https://files.pythonhosted.org/packages/74/b7/9187323cd732840f1cddd6a9f05961406636b50c799eef37c920b63110c0/installer-0.5.1.tar.gz
"

DEPEND=""
RDEPEND=""
BDEPEND="app-arch/unzip"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/installer-0.5.1"

python_compile() {
	python_domodule src/installer "${WORKDIR}"/*.dist-info
}
