# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE="None https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/b5/4a/263763cb2ba3816dd94b08ad3a33d5fdae34ecb856678773cc40a3605829/dnspython-2.7.0.tar.gz -> dnspython-2.7.0.tar.gz
"

DEPEND="
	dev-python/idna[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	python_targets_python2_7? ( dev-python/dnspython-compat )
	${DEPEND}"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="ISC"
KEYWORDS="*"
S="${WORKDIR}/dnspython-2.7.0"

src_prepare() {
	sed -i -e 's|^license =.*|license = {text = "ISC"}|g' pyproject.toml
	distutils-r1_src_prepare
}
