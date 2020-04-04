# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="Authentication-Results Headers generation and parsing"
HOMEPAGE="https://launchpad.net/authentication-results-python https://pypi.org/project/authres/"
SRC_URI="https://files.pythonhosted.org/packages/6a/29/e28209b5d3d56c102845cca5a4a3abaf2724f79e83476a52b94d775ecce6/authres-1.2.0.tar.gz -> authres-1.2.0.tar.gz"

LICENSE="Apache-2.0"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

python_test() {
	"${EPYTHON}" -m doctest -v authres/tests ||
		die "Tests fail with ${EPYTHON}"
}