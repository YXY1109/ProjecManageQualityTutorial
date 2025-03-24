## Python项目工程管理与质量检测教程

### git

- git init
- 添加忽略文件：https://github.com/github/gitignore/blob/main/Python.gitignore

### flake8-代码风格检查(PEP8)

### .isort.cfg（导入排序配置）

### .mypy.ini（静态类型检查）

### 创建 .pre-commit-config.yaml

### 创建 Makefile

## 质量工具作用：

- flake8：代码风格检查（PEP8）

- isort：自动整理导入顺序

- black：自动代码格式化

- mypy：静态类型检查

- pre-commit：提交前自动运行检查

- Makefile：简化常用命令

### windows安装make

```commandline
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install make
```

### 使用ruff做工程质量管理

> https://github.com/astral-sh/ruff

### makefile异常

问题1：Makefile:44: *** missing separator. Stop
1：下载插件：Makefile Language
2：设置四个空格和tab： Editor -> Code Style->Use tab character 选项被勾选。若该选项未被勾选，PyCharm 会默认使用空格来替代
Tab。
