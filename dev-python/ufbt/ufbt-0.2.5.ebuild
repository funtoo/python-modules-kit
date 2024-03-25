# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="uFBT - micro Flipper Build Tool. Tool for building and developing applications (.fap) for Flipper Zero and its device family."
HOMEPAGE=" https://pypi.org/project/ufbt/"
SRC_URI="https://files.pythonhosted.org/packages/68/ee/2c523dc976b1d428b561bc9651ac933fd3c3c6dee5ed23a69dd30c933fdb/ufbt-0.2.5.tar.gz -> ufbt-0.2.5.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="GPL-3+"
KEYWORDS="*"
S="${WORKDIR}/ufbt-0.2.5"