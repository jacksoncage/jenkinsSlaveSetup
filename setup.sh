#!/bin/bash
usage() {
	echo "usage: sudo setup.sh <node-name> <jenkins-master-fqdn>"
}

dependency() {
	echo "dependency: Require java but it's not installed. Aborting"
}

if [ $# -ne 2 ]; then
	usage
	exit 1
fi

command -v java >/dev/null 2>&1 || { dependency; exit 1; }

nodeName=$1
fqdn=$2

jarUrl="http://$fqdn/jnlpJars/slave.jar"
nodeUrl="http://$fqdn/computer/$nodeName/slave-agent.jnlp"

sed -i 's/nodeUrl/$nodeUrl/g' jenkins-slave

mkdir /opt/jenkins-slave/
cd /opt/jenkins-slave/

curl -O $nodeUrl
curl -O $jarUrl
nohup java -jar slave.jar -jnlpUrl $nodeUrl