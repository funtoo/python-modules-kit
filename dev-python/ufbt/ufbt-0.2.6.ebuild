# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="uFBT - micro Flipper Build Tool. Tool for building and developing applications (.fap) for Flipper Zero and its device family."
HOMEPAGE="None https://pypi.org/project/ufbt/"
SRC_URI="https://files.pythonhosted.org/packages/59/3b/013525f91836171870c49a53db8d2f772b5d32e682c0d25d0d0481c9bb51/ufbt-0.2.6.tar.gz -> ufbt-0.2.6.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="GPL-3+"
KEYWORDS="*"
S="${WORKDIR}/ufbt-0.2.6"