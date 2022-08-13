# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_PN="SecretStorage"

DESCRIPTION="Python bindings to FreeDesktop.org Secret Service API."
HOMEPAGE="https://github.com/mitya57/secretstorage https://pypi.org/project/SecretStorage/"
SRC_URI="https://files.pythonhosted.org/packages/53/a4/f48c9d79cb507ed1373477dbceaba7401fd8a23af63b837fa61f1dcd3691/SecretStorage-3.3.3.tar.gz -> SecretStorage-3.3.3.tar.gz"
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