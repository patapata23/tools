### Mackerelのaptリポジトリを登録
curl -fsSL https://mackerel.io/assets/files/scripts/setup-apt.sh | sh

### apt-get
sudo apt-get install mackerel-agent
sudo apt-get upgrade mackerel-agent

### apikeyセット
echo -n "mackerel apikey: "
read -s apikey
echo ""
echo 'apikey = "$apikey"' | sudo tee -a /etc/mackerel-agent/mackerel-agent.conf

### agentのスタート、Mackerelにhostが登録される
sudo /etc/init.d/mackerel-agent start
