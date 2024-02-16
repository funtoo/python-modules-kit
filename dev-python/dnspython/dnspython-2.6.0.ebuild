# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE=" https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/77/4e/7ed5533779c9544b34643bf02b04c17015e6b9c2387d091b261d83283249/dnspython-2.6.0.tar.gz -> dnspython-2.6.0.tar.gz"

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
S="${WORKDIR}/dnspython-2.6.0"