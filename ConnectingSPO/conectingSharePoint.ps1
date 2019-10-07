# アセンブリ読込
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client") | Out-Null
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SharePoint.Client.Runtime") | Out-Null

# 接続情報取得
$SiteUrl = "https://tenant.sharepoint.com/sites/targerSite" 
$Account = "adminAccount@tenant.onmicrosoft.com"
 
$Password = Read-Host -Prompt "Enter Password." -AsSecureString
$Credential = New-Object Microsoft.SharePoint.Client.SharePointOnlineCredentials($Account, $Password)

$Context = New-Object Microsoft.SharePoint.Client.ClientContext($SiteUrl)
$Context.Credentials = $Credential


# 接続確認としてサイトのリストを取得
$lists = $Context.Web.Lists
$Context.Load($lists)
$Context.ExecuteQuery()

$lists | select Title