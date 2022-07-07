# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/PyFilesystem/pyfilesystem2 https://pypi.org/project/fs/"
SRC_URI="https://files.pythonhosted.org/packages/5d/a9/af5bfd5a92592c16cdae5c04f68187a309be8a146b528eac3c6e30edbad2/fs-2.4.16.tar.gz
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
S="${WORKDIR}/fs-2.4.16"

pkg_postinst() {
	echo "S3 support dev-python/boto"
	echo "SFTP support dev-python/paramiko"
	echo "Browser support dev-python/wxpython"
}
