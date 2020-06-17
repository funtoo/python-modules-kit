# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="Curses-like terminal wrapper, with colored strings"
HOMEPAGE="https://github.com/thomasballinger/curtsies"
SRC_URI="https://files.pythonhosted.org/packages/5a/81/acd15a63392c25d78ba94f528f66e86093d72e0fb618b573743aa4efdccc/curtsies-0.3.1.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND="
        >=dev-python/blessings-1.5[${PYTHON_USEDEP}]
        dev-python/pyte[${PYTHON_USEDEP}]
        >=dev-python/wcwidth-0.1.4[${PYTHON_USEDEP}]
        virtual/python-typing[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
        dev-python/setuptools[${PYTHON_USEDEP}]
        test? (
                dev-python/mock[${PYTHON_USEDEP}]
                dev-python/nose[${PYTHON_USEDEP}]
                dev-python/pyte[${PYTHON_USEDEP}]
        )
"

src_prepare() {
        eapply "${FILESDIR}"/typing-requires.patch
        distutils-r1_python_prepare_all
}

python_test() {
        nosetests --verbose tests || die
}