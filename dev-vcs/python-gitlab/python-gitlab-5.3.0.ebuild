# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The python wrapper for the GitLab REST and GraphQL APIs."
HOMEPAGE="None https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/75/89/500af2f69f6749e183d1ad84f50d03645e7590e760e3a15b832ffcae5d2b/python_gitlab-5.3.0.tar.gz -> python_gitlab-5.3.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python_gitlab-5.3.0"