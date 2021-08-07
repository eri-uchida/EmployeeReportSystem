#Staff Blog
メンバー間で使用（ログイン・ブログ作成・閲覧）出来るWebアプリケーションのコードです。
ログイン認証（MySQLへのユーザー照合）、ファイルの作成・更新・削除といった基本的な操作が含まれています。
メンバーへのブログへ、いいね、見たよのリアクションが出来る機能もついています。

##Demo



##Dependency
・MySQL 5.7.34
・Hibernate 5.2.13.Final
・MySQL JDBC Driver 5.1.45
・jstl taglibs-standard-impl 1.2.5
・jstl javax.servlet.jsp.jstl-api 1.2.1
・Tomcat（Java8）
・Bootstrap 5.0.0-beta1


##Setup
1.Eclipseで「動的Webプロジェクト」を作成し、repositoryをcloneします。
＞$ git clone https://github.com/eri-uchida/Staff-Blog.git
2.プロジェクトをクリーンします。
3.Tomcatの構成済みのリソースに追加します。
4.以下のファイルの接続タブを表示します。
＞/staff-blog/src/META-INF/persistence.xml
5.URL・ユーザー・パスワードをお使いのMySQLの情報に変更し、保存します。


##Usage
1.ブラウザから以下のURLにアクセスすると、ログイン画面が表示されます。
＞http://localhost:8080/staff-blog/login
2.ユーザ名、パスワードを入力し、ログインします。


##License
MIT License

Copyright (c) 2021 Eri.Uchida

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE



##Authors
Eri.Uchida

##Reference
[クイックリファレンス WEBカラーリファレンス](http://www.htmq.com/color/colorname.shtml)
[Bootstrap設置ガイド](https://bootstrap-guide.com/outline)