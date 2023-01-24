# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/prometheus/client_python https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/d0/55/9e34c73e1e490b105b4cd13d08497b1f7cb086a260e4161b7b7c2928b196/prometheus_client-0.16.0.tar.gz -> prometheus_client-0.16.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/prometheus_client-compat )
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.16.0"