# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Command-line interface to Jinja2 for templating in shell scripts."
HOMEPAGE="https://github.com/kolypto/j2cli https://pypi.org/project/j2cli/"
SRC_URI="https://files.pythonhosted.org/packages/fa/ce/a21d12ee70515159d06acf406026b3f2f44a3ee9f87d048a43417311fb9c/j2cli-0.3.10.tar.gz -> j2cli-0.3.10.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/j2cli-0.3.10"