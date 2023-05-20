# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python wrapper for the Cloudflare v4 API"
HOMEPAGE="https://pypi.org/project/cloudflare/"
SRC_URI="https://files.pythonhosted.org/packages/15/94/e9c48349f3e6d97fe0f740e243b36066890b51927f646a788c9c46a243c2/cloudflare-2.11.3.tar.gz -> cloudflare-2.11.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="dev-python/jsonlines[${PYTHON_USEDEP}]"
RDEPEND=( "${DEPEND}
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]" )
BDEPEND=""

python_prepare_all() {
	sed -r -e "/packages *=/ s|\[[^]]*\]\+||" -i -- setup.py

	rm -r examples

	distutils-r1_python_prepare_all
}