# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/b6/70/8d082143e4a4aa24830d64fa7eaca1d5780dc63259e5d53c6cb8da33588e/s3transfer-0.4.1.tar.gz
"

DEPEND=""
RDEPEND="
	$(python_gen_cond_dep '
	>=dev-python/futures-2.2.0[${PYTHON_USEDEP}]
	<dev-python/futures-4.0.0[${PYTHON_USEDEP}]
	' -2
	)"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/s3transfer-0.4.1"