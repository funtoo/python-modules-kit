# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Filesystem abstraction layer"
HOMEPAGE="https://pypi.org/project/fs/ https://docs.pyfilesystem.org https://www.willmcgugan.com/tag/fs/"
SRC_URI="https://files.pythonhosted.org/packages/08/1c/ae7beb70ca8ab8c772df1a77c05fd8b65c5cd3e02855497bf123044a7585/fs-2.4.14.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/fs-2.4.14"

pkg_postinst() {
	echo "S3 support dev-python/boto"
	echo "SFTP support dev-python/paramiko"
	echo "Browser support dev-python/wxpython"
}
