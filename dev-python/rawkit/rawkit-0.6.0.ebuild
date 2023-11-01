# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="CTypes based LibRaw bindings"
HOMEPAGE="https://rawkit.readthedocs.org https://pypi.org/project/rawkit/"
SRC_URI="https://files.pythonhosted.org/packages/86/a0/79e66ce71687b63529f04269182d2e672eb53509602fa2acffb2204a21b4/rawkit-0.6.0.tar.gz -> rawkit-0.6.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rawkit-0.6.0"