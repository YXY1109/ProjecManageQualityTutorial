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

### windows按照make
```commandline
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install make
```