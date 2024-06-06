# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A library for working with the color formats defined by HTML and CSS."
HOMEPAGE="None https://pypi.org/project/webcolors/"
SRC_URI="https://files.pythonhosted.org/packages/b3/bf/cfe993a8acab0976a08cfa1a0a23cf9ce212b8c52cca40fbcca6e994acea/webcolors-24.6.0.tar.gz -> webcolors-24.6.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/webcolors-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webcolors-24.6.0"