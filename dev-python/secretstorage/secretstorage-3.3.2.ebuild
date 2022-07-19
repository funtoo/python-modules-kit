# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_PN="SecretStorage"

DESCRIPTION="Python bindings to FreeDesktop.org Secret Service API."
HOMEPAGE="https://github.com/mitya57/secretstorage https://pypi.org/project/SecretStorage/"
SRC_URI="https://files.pythonhosted.org/packages/bc/3b/6e294fcaa5aed4059f2aa01a1ee7d343953521f8e0f6965ebcf63c950269/SecretStorage-3.3.2.tar.gz -> SecretStorage-3.3.2.tar.gz"
S="${WORKDIR}/${MY_PN}-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/cryptography[${PYTHON_USEDEP}]
	>=dev-python/jeepney-0.4.2[${PYTHON_USEDEP}]
"
BDEPEND="
	test? ( !hppa? ( !sparc? (
		gnome-base/gnome-keyring
		sys-apps/dbus
	) ) )
"

distutils_enable_tests unittest
distutils_enable_sphinx docs \
	dev-python/alabaster

src_test() {
	case ${ARCH} in
		hppa|sparc)
			einfo "gnome-keyring is not supported on ${ARCH}, skipping tests"
			return
			;;
	esac

	distutils-r1_src_test
}

python_test() {
	dbus-run-session "${EPYTHON}" -m unittest discover -v -s tests \
		|| die "tests failed with ${EPYTHON}"
}