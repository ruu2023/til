# ChatGPTに対処方法聞いた


### ME


sudo yum -y remove mariadb-server mysql-devel 再インストールしましたが、sudo /usr/bin/mysql_secure_installation でパスワードを求められます。なぜですか。

### ChatGPT


`mysql_secure_installation`がパスワードを求める理由は、MariaDBの初期セキュリティ設定を行うためです。MariaDBを再インストールしても、インストール直後はパスワードが設定されていない状態となります。そのため、`mysql_secure_installation`を実行して初期セキュリティ設定を行う必要があります。

`mysql_secure_installation`は、rootユーザーのパスワードを設定したり、不要な機能を無効化したりするためのスクリプトです。MariaDBをインストールすると、rootユーザーにパスワードを設定するよう求められます。

もしMariaDBのセキュリティ設定をスキップしてrootパスワードを設定したくない場合は、インストール直後に以下のように`mysql_secure_installation`を実行せずに進めることも可能です。

ただし、セキュリティ設定は重要ですので、rootユーザーのパスワードを設定してセキュリティの強化をお勧めします。初期パスワードを設定した後、`mysql_secure_installation`を実行してください。

### ME


上記で初期パスワードがわかりません。

### ChatGPT


インストール後、MariaDBに初期パスワードは設定されていないことがあります。MariaDBをインストールした直後は、パスワードは設定されていない状態になることがあります。

MariaDBに初期パスワードが設定されていない場合、以下の手順でパスワードを設定できます。


1. MariaDBをセキュアモードで起動します。

    ```other
    sudo systemctl stop mariadb
    sudo mysqld_safe --skip-grant-tables &
    ```

2. 新しいターミナルを開いて、MariaDBにrootユーザーとして接続します。

    ```other
    sudo mysql -u root
    ```


**補足メモ（備忘録）**

　新しいターミナルで実行するとき、ssh -i ~/.ssh/(ダウンロードした鍵の名前).pem ec2-user@(作成したEC2インスタンスに紐付けたElastic IP)を入力します。

これによりEC2上の操作である、[ec2-user@ip-172-31-25-189 ~]に表示が変わります。引き続きsudo mysql -u rootを入力してください。


3. パスワードをリセットします。以下のクエリを実行して、新しいパスワードを設定します。`new_password`は新しいパスワードに置き換えてください。

    ```sql
    FLUSH PRIVILEGES;
    ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
    ```

4. MariaDBを停止して、再度通常の方法で起動します。

    ```other
    sudo systemctl stop mariadb
    sudo systemctl start mariadb
    ```


これで新しいパスワードでrootユーザーとしてMariaDBにログインできるようになるはずです。初めてMariaDBをインストールした場合や初期パスワードが設定されていない場合は、この手順でパスワードを設定できます。

### ME


MariaDB [(none)]> FLUSH PRIVILEGES; Query OK, 0 rows affected (0.00 sec) MariaDB [(none)]> ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password'; ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'USER 'root'@'localhost' IDENTIFIED BY 'new_password'' at line 1

### ChatGPT


すみません、SQL文に構文エラーがありました。正しい構文を以下に示します。

```sql
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('new_password');
```


このコマンドを実行することで、rootユーザーのパスワードが設定されます。`new_password`の部分は実際の新しいパスワードに置き換えてください。

もしくは、MariaDB 10.4.3以降では`ALTER USER`を使用してパスワードを変更できます。

```sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
```


このコマンドを実行して新しいパスワードを設定することができます。前回のエラーメッセージが出た場合、構文に誤りがあったためにエラーが生じた可能性がありますので、このコマンドをお試しください。
