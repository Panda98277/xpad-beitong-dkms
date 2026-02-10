# 这是一个Arch Linux AUR软件包的模板

此文件夹用于发布到Arch Linux用户仓库（AUR）

## 文件说明

- **PKGBUILD** - 包构建脚本，定义如何构建和打包
- **.SRCINFO** - AUR元数据文件（自动生成）

## 如何使用

### 1. 初始化本地AUR git仓库

```bash
cd aur
git init
git config user.name "Your Name"
git config user.email "your.email@example.com"
git add PKGBUILD
git commit -m "Initial commit: xpad-beitong-dkms v1.0"
```

### 2. 本地测试构建

```bash
cd aur
makepkg -si
```

这会：
- 下载依赖
- 构建包
- 安装到系统（-i 选项）

### 3. 更新.SRCINFO文件

AUR需要.SRCINFO文件。使用mksrcinfo生成：

```bash
cd aur
mksrcinfo
```

这会生成`.SRCINFO`文件。

### 4. 上传到AUR

首先需要在AUR网站注册账户和配置SSH：
https://aur.archlinux.org

然后：

```bash
# 首次上传（创建新包）
cd aur
git remote add origin ssh+git://aur@aur.archlinux.org/xpad-beitong-dkms.git
git push -u origin master

# 后续更新
git add PKGBUILD .SRCINFO
git commit -m "Update to v1.1"
git push
```

## PKGBUILD字段说明

- **pkgname**: 包名称（must match AUR repo name）
- **pkgver**: 版本号
- **pkgrel**: 发布版本（升级PKGBUILD时递增）
- **pkgdesc**: 软件包描述
- **arch**: 支持的架构（x86_64, aarch64等）
- **url**: 项目主页
- **license**: 许可证（GPL2）
- **depends**: 必要依赖
- **optdepends**: 可选依赖
- **source**: 源文件（可以是本地文件或URL）
- **sha256sums**: 源文件校验和（SKIP表示跳过检查）

## 构建前检查清单

- [ ] PKGBUILD语法正确（`bash -n PKGBUILD`）
- [ ] `makepkg -si` 能成功构建和安装
- [ ] 模块能正常加载（`lsmod | grep xpad`）
- [ ] .SRCINFO已生成
- [ ] git仓库已初始化
- [ ] AUR账户已设置SSH密钥

## 常用命令

```bash
# 检查PKGBUILD语法
bash -n PKGBUILD

# 本地构建（不安装）
makepkg

# 本地构建并安装
makepkg -si

# 清理构建文件
makepkg -c

# 生成.SRCINFO
mksrcinfo

# 查看包信息
pacman -Si xpad-beitong-dkms
```

## 参考资源

- AUR提交指南: https://wiki.archlinux.org/title/AUR_submission_guidelines
- PKGBUILD文档: https://wiki.archlinux.org/title/PKGBUILD
- AUR用户仓库: https://aur.archlinux.org
