# 📤 手动上传项目到 GitHub 的步骤

## 仓库地址
https://github.com/hnganhh95-sudo/-.git

---

## 方法一：使用 PowerShell 脚本（最简单）⭐

### 步骤：
1. **确保已安装 Git**
   - 如果没有安装，下载：https://git-scm.com/download/win
   - 安装时选择 "Git from the command line and also from 3rd-party software"

2. **运行脚本**
   - 在项目文件夹中，右键点击 `上传到GitHub.ps1`
   - 选择 "使用 PowerShell 运行"
   - 或者打开 PowerShell，执行：
     ```powershell
     .\上传到GitHub.ps1
     ```

3. **输入 GitHub 凭证**
   - 如果提示输入用户名和密码，使用：
     - **用户名**：你的 GitHub 用户名
     - **密码**：使用 Personal Access Token（不是账户密码）
     - 如何创建 Token：https://github.com/settings/tokens

---

## 方法二：手动执行命令

### 在项目文件夹中打开 PowerShell，依次执行：

```powershell
# 1. 初始化 Git 仓库
git init

# 2. 添加远程仓库
git remote add origin https://github.com/hnganhh95-sudo/-.git

# 3. 添加所有文件
git add .

# 4. 提交更改
git commit -m "Initial commit: 圣诞快乐祝福页面"

# 5. 设置主分支
git branch -M main

# 6. 推送到 GitHub
git push -u origin main
```

---

## 方法三：使用 GitHub Desktop（图形界面，推荐新手）

### 步骤：

1. **下载 GitHub Desktop**
   - 访问：https://desktop.github.com
   - 下载并安装

2. **登录 GitHub**
   - 打开 GitHub Desktop
   - 使用你的 GitHub 账号登录

3. **添加仓库**
   - 点击 "File" → "Add Local Repository"
   - 点击 "Choose..." 选择项目文件夹
   - 如果提示不是 Git 仓库，点击 "create a repository"

4. **发布到 GitHub**
   - 点击 "Publish repository"
   - Repository name: `-`（保持与远程仓库一致）
   - 取消勾选 "Keep this code private"（如果需要公开）
   - 点击 "Publish Repository"

5. **如果仓库已存在**
   - 在 GitHub Desktop 中，点击 "Repository" → "Repository Settings"
   - 点击 "Remote" 标签
   - 在 "Primary remote repository" 中输入：`https://github.com/hnganhh95-sudo/-.git`
   - 点击 "Save"
   - 然后点击 "Repository" → "Push" 或使用快捷键 Ctrl+P

---

## ⚠️ 常见问题

### 1. 提示需要身份验证
GitHub 不再支持密码登录，需要使用 Personal Access Token：

1. 访问：https://github.com/settings/tokens
2. 点击 "Generate new token" → "Generate new token (classic)"
3. 填写名称（如：vercel-deploy）
4. 选择权限：勾选 `repo`（完整仓库权限）
5. 点击 "Generate token"
6. **复制 Token**（只显示一次！）
7. 在推送时，密码处输入这个 Token

### 2. 提示 "remote origin already exists"
执行以下命令删除并重新添加：
```powershell
git remote remove origin
git remote add origin https://github.com/hnganhh95-sudo/-.git
```

### 3. 提示 "failed to push some refs"
如果远程仓库已有内容，先拉取：
```powershell
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### 4. 中文路径问题
如果遇到路径问题，可以：
- 使用 GitHub Desktop（推荐）
- 或者将项目复制到英文路径下再上传

---

## ✅ 上传成功后

访问你的仓库：
https://github.com/hnganhh95-sudo/-

然后可以在 Vercel 中导入这个仓库进行部署！

---

## 🚀 下一步：部署到 Vercel

1. 登录 Vercel：https://vercel.com
2. 点击 "Add New Project"
3. 选择 "Import Git Repository"
4. 选择你的 GitHub 仓库
5. 点击 "Import" 并部署

