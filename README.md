# 開発環境

## vagrant のプラグインが必要なのでインストール
	vagrant plugin install vagrant-omnibus


## 初期化コマンド

	gem install bundler
	bundle install
	bundle exec berks vendor ./cookbooks
	vagrant up --provision

## 環境

* node.js
* npm
* express
* MongoDB
* Mongoose
* Nginx
* grunt-cli
* Ruby
* rbenv
* Typescript
* Sass
* Compass