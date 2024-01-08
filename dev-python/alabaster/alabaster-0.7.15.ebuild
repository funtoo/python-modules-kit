# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A light, configurable Sphinx theme"
HOMEPAGE=" https://pypi.org/project/alabaster/"
SRC_URI="https://files.pythonhosted.org/packages/62/03/9365dc7e96ac2e3f9b5019c55eb5283aac96adffc0ca445ab6c80952fae6/alabaster-0.7.15.tar.gz -> alabaster-0.7.15.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/alabaster-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/alabaster-0.7.15"