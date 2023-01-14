# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://alabaster.readthedocs.io https://pypi.org/project/alabaster/"
SRC_URI="https://files.pythonhosted.org/packages/94/71/a8ee96d1fd95ca04a0d2e2d9c4081dac4c2d2b12f7ddb899c8cb9bfd1532/alabaster-0.7.13.tar.gz -> alabaster-0.7.13.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/alabaster-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/alabaster-0.7.13"