# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="Standalone version of django.utils.feedgenerator"
HOMEPAGE="https://pypi.org/project/feedgenerator/"
SRC_URI="https://files.pythonhosted.org/packages/9b/80/15fd050f2dcb8e81732959cfb7c7192d5181f421c6dc8ef213a9d5da86d1/feedgenerator-1.9.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/six[${PYTHON_USEDEP}]
		dev-python/pytz[${PYTHON_USEDEP}] )"
RDEPEND=""

src_prepare() {
	distutils-r1_src_prepare
	# Allow pypy to read MANIFEST.in
	ln -s tests_feedgenerator tests || die
}

python_test() {
	"${PYTHON}" setup.py test
}