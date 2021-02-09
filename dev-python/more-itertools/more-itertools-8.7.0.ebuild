# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/fd/2d/90ea8e03076d46166b14c24c87b07ef8cf3d4e0df9a59aefbbd4db3bef7b/more-itertools-8.7.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/more-itertools-${PV}"