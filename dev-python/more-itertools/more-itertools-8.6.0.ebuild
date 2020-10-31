# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/b0/0f/da7bf94283720a148fe4d7335c8b74b67c8e978c6498487d699a0d86c72b/more-itertools-8.6.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/more-itertools-${PV}"