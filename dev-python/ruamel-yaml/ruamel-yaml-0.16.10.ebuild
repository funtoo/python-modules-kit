# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="A YAML 1.2 loader/dumper package for Python."
HOMEPAGE="https://sourceforge.net/p/ruamel-yaml/code/ci/default/tree
"
SRC_URI="https://files.pythonhosted.org/packages/16/8b/54a26c1031595e5edd0e616028b922d78d8ffba8bc775f0a4faeada846cc/ruamel.yaml-0.16.10.tar.gz -> ruamel.yaml-0.16.10.tar.gz"

DEPEND=""
BDEPEND="dev-python/setuptools[$PYTHON_USEDEP]
"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/ruamel.yaml-${PV}"


pkg_setup() {
	export RUAMEL_NO_PIP_INSTALL_CHECK=1
}
