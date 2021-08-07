# Staff Blog<br/>
メンバー間で使用（ログイン・ブログ作成・閲覧）出来るWebアプリケーションのコードです。<br/>
ログイン認証（MySQLへのユーザー照合）、ファイルの作成・更新・削除といった基本的な操作が含まれています。<br/>
メンバーへのブログへ、いいね、見たよのリアクションが出来る機能もつけています。<br/>

## Demo<br/>
<br/>
<br/>
<br/>
 ##Dependency<br/>
・MySQL 5.7.34<br/>
・Hibernate 5.2.13.Final<br/>
・MySQL JDBC Driver 5.1.45<br/>
・jstl taglibs-standard-impl 1.2.5<br/>
・jstl javax.servlet.jsp.jstl-api 1.2.1<br/>
・Tomcat（Java8）<br/>
・Bootstrap 5.0.0-beta1<br/>
<br/>
<br/>
## Setup<br/>
1.Eclipseで「動的Webプロジェクト」を作成し、repositoryをcloneします。<br/>
($ git clone https://github.com/eri-uchida/Staff-Blog.git)<br/>
2.プロジェクトをクリーンします。<br/>
3.Tomcatの構成済みのリソースに追加します。<br/>
4.以下のファイルの接続タブを表示します。<br/>
(/staff-blog/src/META-INF/persistence.xml)<br/>
5.URL・ユーザー・パスワードをお使いのMySQLの情報に変更し、保存します。<br/>
<br/>
<br/>
## Usage<br/>
1.ブラウザから以下のURLにアクセスすると、ログイン画面が表示されます。<br/>
(http://localhost:8080/staff-blog/login)<br/>
2.ユーザ名、パスワードを入力し、ログインします。<br/>
<br/>
<br/>
## License<br/>
MIT License<br/>
<br/>
Copyright (c) 2021 Eri.Uchida<br/>
<br/>
Permission is hereby granted, free of charge, to any person obtaining a copy<br/>
of this software and associated documentation files (the "Software"), to deal<br/>
in the Software without restriction, including without limitation the rights<br/>
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell<br/>
copies of the Software, and to permit persons to whom the Software is<br/>
furnished to do so, subject to the following conditions:<br/>
<br/>
The above copyright notice and this permission notice shall be included in all<br/>
copies or substantial portions of the Software.<br/>
<br/>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR<br/>
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,<br/>
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE<br/>
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER<br/>
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,<br/>
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE<br/>
<br/>
<br/>
## Authors<br/>
Eri.Uchida<br/>
<br/>
## Reference<br/>
[クイックリファレンス WEBカラーリファレンス](http://www.htmq.com/color/colorname.shtml)<br/>
[Bootstrap設置ガイド](https://bootstrap-guide.com/outline)<br/>
<br/>
