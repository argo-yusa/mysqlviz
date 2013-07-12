mysqlviz
========

forked from https://mysqlviz.googlecode.com/files/mysqlviz-0.3.tar.bz2

はじめに
========

[mysqlviz](https://code.google.com/p/mysqlviz/)をご存知ない方は[moongiftさんの解説](http://www.moongift.jp/2013/05/20130506/)をどうぞ。

リレーション貼ってなくてもテーブル名と～id から推測してER図作成するmysqlvizに感動しましたのですが
出力結果が現場に向いてないので見やすくしました。(サンプルはEC-CUBE)

## 改良後

* 線の色、太さは判別のためで他意はありません。
* つながりがないテーブルは非表示にしときました。

![eccube_db_simple.png](https://qiita-image-store.s3.amazonaws.com/0/25728/174e9860-fb01-c3c7-011c-e110635b0166.png)

```bash:必要なパッケージ
$ sudo apt-get install -y graphviz libgv-php5
```

## 使い方

```Bash:はじめにダンプファイルを作成する。
$ mysqldump -uroot -p -d dbname  > dbname.sql 
```

```bash:
dbname="eccube_db" ← dumpファイル名指定
```

* 設定修正（use_original.sh か use_simple.sh）

```php:mysqlviz_simple
//$standard_table_prefixes=array('','tbl','tbl_','table','table_');
$standard_table_prefixes=array('','tbl','tbl_','table','table_','dtb_','mtb_') ← tableのsuffixがあれば書いとく。
```

```Bash:実行
$ use_original.sh (オリジナル版。ちょっと手を加えましたが。)
$ use_simple.sh (シンプル版。)
```

pngファイルが生成されるので御覧ください。

### 参考までに改良前

![eccube_db_original.jpg](https://qiita-image-store.s3.amazonaws.com/0/25728/7a8fb4a4-0673-8c80-999d-f137ea5ac955.jpeg)

[download](https://github.com/tukiyo/mysqlviz.git)
