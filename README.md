# data-platform-equipment-master-sql
data-platform-equipment-master-sql は、データ連携基盤において、設備マスタデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-equipment-master-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sqlの設定ファイル
data-platform-equipment-master-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* data-platform-equipment-master-sql-general-data.sql（データ連携基盤 設備マスタ - 一般データ）  
* data-platform-equipment-master-sql-general-doc-data.sql（データ連携基盤 設備マスタ - 一般文書データ）
* data-platform-equipment-master-sql-owner-business-partner-data.sql（データ連携基盤 設備マスタ - オーナービジネスパートナデータ）
* data-platform-equipment-master-sql-business-partner-data.sql（データ連携基盤 設備マスタ - ビジネスパートナデータ）
* data-platform-equipment-master-sql-business-partner-data.sql（データ連携基盤 設備マスタ - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。