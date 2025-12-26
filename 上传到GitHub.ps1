# 上传项目到 GitHub 的脚本
# 仓库地址：https://github.com/hnganhh95-sudo/-.git

Write-Host "开始上传项目到 GitHub..." -ForegroundColor Green

# 检查是否已安装 Git
try {
    $gitVersion = git --version
    Write-Host "Git 已安装: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "错误: 未检测到 Git，请先安装 Git" -ForegroundColor Red
    Write-Host "下载地址: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

# 初始化 Git 仓库（如果还没有）
if (-not (Test-Path .git)) {
    Write-Host "初始化 Git 仓库..." -ForegroundColor Yellow
    git init
} else {
    Write-Host "Git 仓库已存在" -ForegroundColor Green
}

# 添加远程仓库
Write-Host "配置远程仓库..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin https://github.com/hnganhh95-sudo/-.git

# 添加所有文件
Write-Host "添加所有文件..." -ForegroundColor Yellow
git add .

# 提交更改
Write-Host "提交更改..." -ForegroundColor Yellow
$commitMessage = "Initial commit: 圣诞快乐祝福页面"
git commit -m $commitMessage

# 设置主分支
Write-Host "设置主分支..." -ForegroundColor Yellow
git branch -M main

# 推送到 GitHub
Write-Host "推送到 GitHub..." -ForegroundColor Yellow
Write-Host "注意: 如果这是第一次推送，可能需要输入 GitHub 用户名和密码（或 Personal Access Token）" -ForegroundColor Cyan
git push -u origin main

Write-Host "`n完成！项目已上传到 GitHub" -ForegroundColor Green
Write-Host "仓库地址: https://github.com/hnganhh95-sudo/-" -ForegroundColor Cyan

