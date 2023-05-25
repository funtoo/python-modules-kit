# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for the Prometheus monitoring system."
HOMEPAGE="https://github.com/prometheus/client_python https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/0e/01/bda72c3b5d4a0df411bceb88c4993d413dd9b7d3b3b68ab19171a09e7db1/prometheus_client-0.17.0.tar.gz -> prometheus_client-0.17.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/prometheus_client-compat )
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.17.0"