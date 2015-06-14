# micro-coffee

## vagrant
1. hub clone cores/cores-vagrant coreos
1. cd coreos
1. mv user-data.sample user-data
1. mv config.rb.sample config.rb
1. vim Vagrantfile
1. * $instance_name_prefix = "任意の名前"
1. * NFCの設定
1. * config.vm.network 80->8080, 443->3443, 3306->3306
1. vagrant up
1. vagnrat ssh

## docker
1. mysql
```
docker run --net=host --name mysql -p 3306:3306 -e "ROOT_PW=..." -e "DB_NAME=..." -e "DB_USER=..." -e "DB_PASS=..." -d anagift/msyql:0.74
```
1. apache
```
docker run --net=host --name -p 80:80 -p 443:443 -v /home/core/share/app:/var/www/html -d kobabasu/apache:0.21
```
1. exit

## REST API
1. cd app
1. hub clone kobabasu/phalcon-rest api
1. rm -fr api/.git

## mysql
1. table作成
```
mysql -h 0.0.0.0 --port 3306 -u[username] -p[password] -d [dbname] < sql api/sql/user.sql
```
1. レコードをinsert
```
curl -i -X POST -d '{"name":"taro", "email":"taro@example.com"}'
```
1. http://localhost:8080/api/users/で確認

## app
1. touch .bowerrc bower.json
1. .bowerrc
  * ./vendorで設定
1. bower.json
  * jqueryを読み込む
1. bower install

## coffeescript
1. hub clone kobabasu/micro-coffee coffee
1. cd ../ <- rootへ
1. coffee -o app/js -c app/coffee
1. index.htmlへ `<script src="js/app.js">`

## 確認
1. http://localhost:8080/で確認
1. restのコメントアウトを外しコンパイルし再度確認
