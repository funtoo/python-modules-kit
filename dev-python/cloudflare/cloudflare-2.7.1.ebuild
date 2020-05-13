# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python wrapper for the Cloudflare v4 API"
HOMEPAGE="https://pypi.org/project/cloudflare/"
SRC_URI="https://files.pythonhosted.org/packages/0b/23/0ba7fda8caac7e8a4f0e6b8741105ba5b612c8fec34a4086a71ccaa58c92/cloudflare-2.7.1.tar.gz -> cloudflare-2.7.1.tar.gz"

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