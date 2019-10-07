# ConnectingSPO

windowsPowerShell から SharePointOnline へ接続する
接続を確認するため、接続対象サイトのリスト一覧を取得する

## 必要条件

- Office365 テナントを所有している
- SharePointOnline にサイトコレクション及びサイトを作成している
- SharePointOnlineManagementShell がインストールされている

## 使い方

1. conectingSharePoint.ps1 の接続情報の以下の項目を変更する
  - $SiteUrl
  - $Account
2. PoweShell を起動する
3. conectingSharePoint.ps1 を実行する
4. パスワードの入力が求められるので、入力する