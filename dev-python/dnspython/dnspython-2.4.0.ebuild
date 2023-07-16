# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE="https://www.dnspython.org https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/bd/5f/45f60fd7b03a1bef883a0eb4f9b6465628c1977393be45802eef1962571d/dnspython-2.4.0.tar.gz -> dnspython-2.4.0.tar.gz
"

DEPEND="
	dev-python/idna[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	python_targets_python2_7? ( dev-python/dnspython-compat )
	${DEPEND}"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/dnspython-2.4.0"