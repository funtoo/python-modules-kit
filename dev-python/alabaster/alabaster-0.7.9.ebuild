# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="A configurable sidebar-enabled Sphinx theme"
HOMEPAGE="https://github.com/bitprophet/alabaster"
SRC_URI="https://files.pythonhosted.org/packages/71/c3/70da7d8ac18a4f4c502887bd2549e05745fa403e2cd9d06a8a9910a762bc/alabaster-0.7.9.tar.gz -> alabaster-0.7.9.tar.gz"

LICENSE="BSD"
KEYWORDS="*"
SLOT="0"