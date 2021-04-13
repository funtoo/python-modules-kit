# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/66/f5/5ca537483fa5e96fbd455f52a69fc70c5f659f7e8c9189a1dbc211e1ccf9/s3transfer-0.3.7.tar.gz
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

S="${WORKDIR}/s3transfer-0.3.7"