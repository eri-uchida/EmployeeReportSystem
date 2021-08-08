# Staff Blog<br/>
メンバー間で使用（ログイン・ブログ作成・閲覧）出来るWebアプリケーションのコードです。<br/>
ログイン認証（MySQLへのユーザー照合）、ファイルの作成・更新・削除といった基本的な操作が含まれています。<br/>
メンバーへのブログへ、いいね、見たよのリアクションが出来る機能もつけています。<br/>

## Demo<br/>
[![Image from Gyazo](https://i.gyazo.com/09a31bbd5ad9195d1ecddd78f8a6bff8.gif)](https://gyazo.com/09a31bbd5ad9195d1ecddd78f8a6bff8)
<br/>
<br/>
<br/>

## Dependency<br/>
- MySQL 5.7.34<br/>
- Hibernate 5.2.13.Final<br/>
- MySQL JDBC Driver 5.1.45<br/>
- jstl taglibs-standard-impl 1.2.5<br/>
- jstl javax.servlet.jsp.jstl-api 1.2.1<br/>
- Apache Tomcat 8.0.43<br/>
- Bootstrap 5.0.0-beta1<br/>
<br/>
<br/>

## Setup<br/>
1.Eclipseで「動的Webプロジェクト」を作成し、repositoryをcloneします。<br/>
```
$ git clone https://github.com/eri-uchida/Staff-Blog.git)
```
2.プロジェクトをクリーンします。<br/>
3.Tomcatの構成済みのリソースに追加します。<br/>
4.以下のファイルの接続タブを表示します。<br/>
(/staff-blog/src/META-INF/persistence.xml)<br/>
5.URL・ユーザー・パスワードをお使いのMySQLの情報に変更し、保存します。<br/>
<br/>
<br/>

## Usage<br/>
1.ブラウザから以下のURLにアクセスすると、ログイン画面が表示されます。<br/>
```
http://localhost:8080/staff-blog/login
```
<br/>
2.ユーザ名、パスワードを入力し、ログインします。<br/>
<br/>
<br/>

## License<br/>
This software is released under the MIT License, see LICENSE.txt.<br/>
<br/>

## Authors<br/>
Eri.Uchida<br/>
<br/>

## Reference<br/>
[クイックリファレンス WEBカラーリファレンス](http://www.htmq.com/color/colorname.shtml)
<br/>
[Bootstrap設置ガイド](https://bootstrap-guide.com/outline)
<br/><br/>
