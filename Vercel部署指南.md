# 🚀 Vercel 部署详细指南

## 方法一：通过网页界面上传（最简单，推荐）⭐

### 步骤 1：访问 Vercel 并登录
1. 打开浏览器，访问：https://vercel.com
2. 点击右上角 **"登录"** 或 **"Sign Up"**
3. 使用以下方式之一登录：
   - GitHub 账号（推荐）
   - GitLab 账号
   - Bitbucket 账号
   - 邮箱注册

### 步骤 2：创建新项目
1. 登录后，点击右上角的 **"添加新..."** 或 **"Add New..."** 按钮
2. 在弹出的选项中，选择 **"项目"** 或 **"Project"**

### 步骤 3：上传项目文件夹
1. 在项目创建页面，你会看到几个选项：
   - **"导入 Git 存储库"** (Import Git Repository)
   - **"浏览所有模板"** (Browse All Templates)
   - **"部署"** (Deploy) 或 **"上传"** (Upload)

2. **选择上传方式**：
   - 如果看到 **"Deploy"** 或 **"Upload"** 按钮，直接点击
   - 或者查找 **"Deploy without Git"** 或 **"Upload"** 选项

3. **拖拽上传**：
   - 将整个 **"圣诞快乐"** 文件夹直接拖拽到上传区域
   - 或者点击上传区域，选择整个文件夹

### 步骤 4：配置项目（可选）
1. **项目名称**：可以修改为你喜欢的名称，如 `christmas-greeting`
2. **框架预设**：选择 **"Other"** 或 **"其他"**（因为这是纯 HTML 项目）
3. **构建命令**：留空（不需要构建）
4. **输出目录**：留空或填写 `.`（当前目录）

### 步骤 5：部署
1. 点击 **"部署"** 或 **"Deploy"** 按钮
2. 等待部署完成（通常 1-3 分钟）
3. 部署成功后，你会看到一个链接，格式类似：
   ```
   https://christmas-greeting-xxxxx.vercel.app
   ```

### 步骤 6：访问你的网站
部署完成后，你可以访问：
- 主页：`https://你的项目名.vercel.app/index.html`
- 圣诞祝福页：`https://你的项目名.vercel.app/christmas.html`
- 分享页：`https://你的项目名.vercel.app/share.html`

---

## 方法二：通过 Git 仓库（适合有 GitHub 账号的用户）

### 步骤 1：创建 GitHub 仓库
1. 访问 https://github.com
2. 点击右上角 **"+"** → **"New repository"**
3. 填写仓库名称：`christmas-greeting`（任意名称）
4. 选择 **Public**（公开）
5. 点击 **"Create repository"**

### 步骤 2：上传文件到 GitHub
#### 方法 A：使用 GitHub Desktop（图形界面，推荐）
1. 下载并安装 GitHub Desktop：https://desktop.github.com
2. 打开 GitHub Desktop，登录你的 GitHub 账号
3. 点击 **"File"** → **"Clone Repository"**
4. 选择刚创建的仓库，点击 **"Clone"**
5. 在文件管理器中打开克隆的文件夹
6. 将 **"圣诞快乐"** 文件夹中的所有文件复制到克隆的文件夹中
7. 回到 GitHub Desktop，填写提交信息（如："Initial commit"）
8. 点击 **"Commit to main"**
9. 点击 **"Push origin"** 上传到 GitHub

#### 方法 B：使用命令行
在项目文件夹中打开 PowerShell 或命令提示符，执行：

```powershell
# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit"

# 添加远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/你的用户名/christmas-greeting.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 步骤 3：在 Vercel 中导入项目
1. 登录 Vercel
2. 点击 **"添加新..."** → **"项目"**
3. 选择 **"导入 Git 存储库"**
4. 选择你的 GitHub 仓库
5. 点击 **"导入"**
6. 配置项目（框架预设选择 "Other"）
7. 点击 **"部署"**

---

## 方法三：使用 Vercel CLI（适合开发者）

### 步骤 1：安装 Vercel CLI
在 PowerShell 中执行：
```powershell
npm install -g vercel
```

### 步骤 2：登录 Vercel
```powershell
vercel login
```

### 步骤 3：部署项目
在项目文件夹中执行：
```powershell
cd "C:\Users\35169\Desktop\脚本\圣诞快乐"
vercel
```

按照提示操作即可。

---

## 📝 部署后的分享文案

部署成功后，你可以使用以下文案分享：

```
🎄🎅 圣诞快乐！点击查看我的祝福：https://你的项目名.vercel.app/share.html 🎁✨
```

或者：

```
🎄🎅 圣诞快乐！点击查看我的祝福：https://你的项目名.vercel.app/christmas.html 🎁✨
```

---

## ⚠️ 常见问题

### 1. 找不到上传按钮？
- Vercel 界面可能更新，查找 **"Deploy"**、**"Upload"** 或 **"Import"** 按钮
- 也可以尝试访问：https://vercel.com/new

### 2. 文件太大无法上传？
- 确保没有上传 `node_modules` 文件夹
- 图片文件较大是正常的，Vercel 支持

### 3. 部署后页面显示 404？
- 检查文件路径是否正确
- 确保 `index.html` 在根目录
- 访问时使用完整路径，如：`https://你的域名/index.html`

### 4. 样式或图片不显示？
- 检查文件路径是否使用相对路径（如 `./css/style.css`）
- 确保所有资源文件都已上传

### 5. 如何更新网站？
- **方法一**：在 Vercel 项目页面，点击 **"重新部署"**
- **方法二**：如果使用 Git，推送新代码后会自动部署

---

## 💡 推荐方案

**最推荐使用方法一（网页上传）**，因为：
- ✅ 最简单，无需安装任何软件
- ✅ 无需 Git 知识
- ✅ 拖拽即可完成
- ✅ 适合一次性部署

如果以后需要频繁更新，建议使用方法二（Git 仓库），可以实现自动部署。

---

## 🎉 完成！

部署成功后，你的圣诞祝福页面就可以通过链接分享给朋友了！

