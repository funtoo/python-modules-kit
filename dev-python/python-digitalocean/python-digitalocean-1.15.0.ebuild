# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="digitalocean.com API to manage Droplets and Images"
HOMEPAGE="https://pypi.org/project/python-digitalocean"
SRC_URI="https://files.pythonhosted.org/packages/24/e6/a4c8cc8b84beb19627996a46733f63130d26b7d157556d761c623cacd42c/python-digitalocean-1.15.0.tar.gz -> python-digitalocean-1.15.0.tar.gz"

LICENSE="LGPL v3"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="dev-python/jsonpickle[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	dev-python/requests[${PYTHON_USEDEP}]"
BDEPEND=""

python_prepare_all() {
	sed -r -e "/packages *=/ s|\[[^]]*\]\+||" -i -- setup.py

	rm -r examples

	distutils-r1_python_prepare_all
}