# README

docker上のminioを `paperclip` と `carrierwave` から扱うサンプル用に作りました。

_docker-compose_ で立ち上げて _rails console_ から使用してください。

* 環境変数は _docker-compose.env_ を編集してください
* minioを起動後、以下のバケットを作成してください
    * minio-sample
    * minio-sample-carrierwave

```
$ docker-comopse run rails rails c

# carrierwave

User.create(name: 'hoghoge', avatar: File.open(...))

# paperclip

User.create(name: 'fugafuga', icon: File.new([PATH...], "r"))
```
