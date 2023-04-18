# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/15/e6/88afe8318b6aaff1e6c60b3d4b94c9b68708cc0a5ba2f6dae5cbc288ce69/tornado-6.3.tar.gz -> tornado-6.3.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( www-servers/tornado-compat )
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tornado-6.3"