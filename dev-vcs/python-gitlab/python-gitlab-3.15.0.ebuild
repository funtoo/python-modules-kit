# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Interact with GitLab API"
HOMEPAGE="https://github.com/python-gitlab/python-gitlab https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/22/53/248b87282df591d74ba3d38c3c3ced2b5087248c0ccfb6b3a947bb1034c3/python-gitlab-3.15.0.tar.gz -> python-gitlab-3.15.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python-gitlab-3.15.0"