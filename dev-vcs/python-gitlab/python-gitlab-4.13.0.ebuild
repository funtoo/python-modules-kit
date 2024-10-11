# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A python wrapper for the GitLab API"
HOMEPAGE="None https://pypi.org/project/python-gitlab/"
SRC_URI="https://files.pythonhosted.org/packages/c4/ea/e2cde926d63526935c1df259177371a195089b631d67a577fe5c39fbc7e1/python_gitlab-4.13.0.tar.gz -> python_gitlab-4.13.0.tar.gz
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
S="${WORKDIR}/python_gitlab-4.13.0"