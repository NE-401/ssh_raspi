# ssh_raspi
WSLからRaspberry PiにSSHするシェルスクリプト

# 動作
1. WSLからpowershell.exeを呼び出し、Resolve-DnsNameでraspiのIPアドレスを調べる
2. 情報をJSONに格納
3. jqでJSONからIPv4アドレスを取得
4. ssh pi@[取得したIPv4アドレス] でSSH接続する

# 必須
Bonjour
事前に必ず「$ chmod +x ssh_raspi.bash」を実行すること

# 別のhostnameに対応するには?
変数hostnameの"raspberrypi"を書き換えると大丈夫なはず

# 参考にさせていただいたサイト
https://qiita.com/terappy/items/3b671750127cd3016dc7
