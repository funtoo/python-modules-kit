# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for the Prometheus monitoring system."
HOMEPAGE="https://github.com/prometheus/client_python https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/62/14/7d0f567991f3a9af8d1cd4f619040c93b68f09a02b6d0b6ab1b2d1ded5fe/prometheus_client-0.21.1.tar.gz -> prometheus_client-0.21.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/prometheus_client-compat )
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.21.1"