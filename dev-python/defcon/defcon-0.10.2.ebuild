# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/robotools/defcon https://pypi.org/project/defcon/"
SRC_URI="https://files.pythonhosted.org/packages/7c/31/54dd2c63f4b8253d776d03e3a38e16a0013beef5969b5813441af6764a42/defcon-0.10.2.zip -> defcon-0.10.2.zip
"

DEPEND="dev-python/fonttools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/defcon-0.10.2"