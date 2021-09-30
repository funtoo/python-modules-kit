# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="An Amazon S3 Transfer Manager"
HOMEPAGE="https://github.com/boto/s3transfer https://pypi.org/project/s3transfer/"
SRC_URI="https://files.pythonhosted.org/packages/88/ef/4d1b3f52ae20a7e72151fde5c9f254cd83f8a49047351f34006e517e1655/s3transfer-0.5.0.tar.gz
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
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/s3transfer-0.5.0"