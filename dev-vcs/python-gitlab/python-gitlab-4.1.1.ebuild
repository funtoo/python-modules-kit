# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A python wrapper for the GitLab API"
HOMEPAGE=" https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/e7/e2/5a533c1944e9ccdfaf9b061c92b082484eb1ae809364a455c993bd5c0b65/python-gitlab-4.1.1.tar.gz -> python-gitlab-4.1.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python-gitlab-4.1.1"