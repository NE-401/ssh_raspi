# ssh_raspi
WSLからRaspberry PiにSSHするシェルスクリプト

# 動作
1. WSLからpowershell.exeを呼び出し、Resolve-DnsNameでraspiのIPアドレスを調べる
2. 情報をJSONに格納
3. jqでJSONからIPv4アドレスを取得
4. ssh pi@[取得したIPv4アドレス] でSSH接続する

# 必須
Bonjour