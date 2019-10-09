# ConnectingSPO

windowsPowerShell から SharePointOnline へ接続する    
接続を確認するため、接続対象サイトのリスト一覧を表示する

## 必要条件

- Office365 テナントを所有している
  1. SharePointOnline のサイトコレクションが作成されている
  2. サイトコレクションにサイトが作成されている
- SharePointOnlineManagementShell がインストールされている

## 使い方

1. リポジトリのダウンロード
  ```
  git clone https://github.com/yuriko1123/SharePointTechNote
  ```
2. conectingSharePoint.ps1 の以下を書き換える
  ```
  $SiteUrl = "https://tenant.sharepoint.com/sites/targerSite" 
$Account = "adminAccount@tenant.onmicrosoft.com"
  ```
3. PoweShell を起動する
4. 以下のコマンドを実行する

  ```powershell
  folderPath/conectingSharePoint.bat
  ```
5. パスワードの入力が求められるので、入力する