# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="Curses-like terminal wrapper, with colored strings"
HOMEPAGE="https://github.com/thomasballinger/curtsies"
SRC_URI="https://files.pythonhosted.org/packages/71/1c/e02ad3efff0bd806d774aa8e9f26f0ac4398d557b7929038e7defde161b2/curtsies-0.3.4.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

RDEPEND="
        >=dev-python/blessings-1.5[${PYTHON_USEDEP}]
        dev-python/pyte[${PYTHON_USEDEP}]
        >=dev-python/wcwidth-0.1.4[${PYTHON_USEDEP}]
        virtual/python-typing[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
        dev-python/setuptools[${PYTHON_USEDEP}]
"

src_prepare() {
        eapply "${FILESDIR}"/typing-requires.patch
        distutils-r1_python_prepare_all
}