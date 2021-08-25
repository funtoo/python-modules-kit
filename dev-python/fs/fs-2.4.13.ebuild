# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1 eutils

DESCRIPTION="Python's filesystem abstraction layer"
HOMEPAGE="https://github.com/PyFilesystem/pyfilesystem2 https://pypi.org/project/fs/"
SRC_URI="https://files.pythonhosted.org/packages/15/e4/0b9d0647dd1953e5d934a9b889f745867afafdfbf4b8439f73b864e3d7e2/fs-2.4.13.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/appdirs-1.4.3[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	>=dev-python/six-1.10[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/fs-2.4.13"

pkg_postinst() {
	optfeature "S3 support" dev-python/boto
	optfeature "SFTP support" dev-python/paramiko
	optfeature "Browser support" dev-python/wxpython
}
