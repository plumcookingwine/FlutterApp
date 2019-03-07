# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

# 一、运行项目
flutter使用dart语言，适配了非常多的开发工具，这里我们使用vscode进行开发。
1.首先打开终端， 进入项目目录：
cd flutter_app
2.运行项目
run flutter
3.热更新
将光标移动至终端面板，再项目运行状态下按r，进行reload
# 二、从零开始使用flutter(flutter官方文档：https://flutterchina.club/)
## 1、下载flutter sdk：
> 这里有两种方式下载flutter sdk，
> 一个是去flutter官网直接下载：https://flutter.dev/docs/development/tools/sdk/archive#windows，
> 下载完后解压要执行git命令 git init，否则后续步骤会出错。
> 还有一个就是打开你要存放sdk的目录，打开git命令行，执行git clone https://github.com/flutter/flutter.git，
> 没有使用过git的同学请自行百度。。。，
## 2、配置环境变量()
> 转到 “控制面板》用户帐户》用户帐户》更改我的环境变量”，
> 在“用户变量”下检查是否有名为“Path”的条目，
    如果该条目存在, 追加 flutter\bin的全路径，使用 ; 作为分隔符。  
    如果条目不存在, 创建一个新用户变量 Path ，然后将 flutter\bin的全路径作为它的值。  
> 在“用户变量”下检查是否有名为”PUB_HOSTED_URL”和”FLUTTER_STORAGE_BASE_URL”的条目，如果没有，也添加它们。
## 3、安装flutter所需要的依赖：
> 在Flutter安装目录的flutter文件下找到flutter_console.bat，双击运行并启动flutter命令行，执行flutter doctor。
> 安装依赖时可能会下载失败，同学们可使用科学上网或者添加flutter镜像。安装好后就可以开始啦
## 4、这时我们可以用androidstudio或vscode来构建一个flutter项目
### androidstudio:
1. 首先要下载flutter插件：
2. 打开插件首选项 (Preferences>Plugins on macOS, File>Settings>Plugins on Windows & Linux).
3. 选择 Browse repositories…, 选择 Flutter 插件并点击 install.
4. 重启Android Studio后插件生效.（只需要下载flutter插件就可以了，这个插件里面会自带dart插件）
5. 依次点击File>New>New Flutter Project
### vscode
1. vscode需要下载flutter插件和dart插件，vscode是以插件的形式开发的，我们用到什么语言，就要下载什么插件，包括（java、kotlin等）
2. 打开终端，执行flutter create构建flutter项目








