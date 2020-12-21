# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/4c/18/b30c6db8c2a3dcb5abf6a6666da39461e628512a63b74ffaf50322a2385e/mwparserfromhell-0.6.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/mwparserfromhell-${PV}"