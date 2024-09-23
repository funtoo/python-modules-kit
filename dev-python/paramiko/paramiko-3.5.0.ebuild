# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="SSH2 protocol library"
HOMEPAGE="https://paramiko.org https://pypi.org/project/paramiko/"
SRC_URI="https://files.pythonhosted.org/packages/1b/0f/c00296e36ff7485935b83d466c4f2cf5934b84b0ad14e81796e1d9d3609b/paramiko-3.5.0.tar.gz -> paramiko-3.5.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/paramiko-compat )
	>=dev-python/bcrypt-3.1.3[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.1.7[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/paramiko-3.5.0"