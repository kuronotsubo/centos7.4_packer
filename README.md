# Packer-template
Packerテンプレート
* centos 7.4

## 実行環境

* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)
* [packer](https://www.packer.io/)

## インストール方法
```
$ cd 作業ディレクトリ
$ git clone https://github.com/kuronotsubo/centos7.4_packer.git
```

## 使い方

#####boxの作成
```
$ cd 作業ディレクトリ/packer-template
$ packer build -only=virtualbox-iso packer.json
```

#####Vagrant up
```
$ vagrant box add centos74 作業ディレクトリ/packer-template/builds/centOS-7.4-x86_64-minimal.1708.box
$ vagrant init centos74
$ vagrant up
```