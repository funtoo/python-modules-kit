# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="digitalocean.com API to manage Droplets and Images"
HOMEPAGE="https://pypi.org/project/python-digitalocean"
SRC_URI="https://files.pythonhosted.org/packages/56/c6/48bbb3b11c9c3bf9cb4ff6d7a9d87bceabd77c683158a2b7529dff5fdda1/python-digitalocean-1.16.0.tar.gz"

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