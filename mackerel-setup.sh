### Mackerelのaptリポジトリを登録
curl -fsSL https://mackerel.io/assets/files/scripts/setup-apt.sh | sh
### apt-get
sudo apt-get install mackerel-agent
sudo apt-get upgrade mackerel-agent
### apikeyセット
echo 'apikey = "mHyZhGiufcd3gNueMcBMDq2VZ4rbTs6E66PNkEPhWMjc"' >> /etc/mackerel-agent/mackerel-agent.conf

### agentのスタート、Mackerelにhostが登録される
sudo /etc/init.d/mackerel-agent start
