# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/f8/27/b65041a2e68ce4ad9e51622f630f2be356d7e1ff1bfef687dde07e4a3d26/s3transfer-0.4.0.tar.gz
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

S="${WORKDIR}/s3transfer-0.4.0"