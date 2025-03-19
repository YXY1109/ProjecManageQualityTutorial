# 使用 isort 对导入语句排序：首先运行 isort，让导入语句的顺序更加规范。
# 使用 black 格式化代码：接着使用 black 对整个代码文件进行格式化，确保代码风格一致。
# 使用 mypy 进行类型检查：运行 mypy 来检查代码中的类型注解是否正确。
# 使用 flake8 进行静态代码分析：最后使用 flake8 检查代码是否符合编码规范，以及是否存在其他潜在问
VENV_DIR := venv
PYTHON := $(VENV_DIR)\Scripts\python.exe
PIP := $(VENV_DIR)\Scripts\pip.exe
TEST := $(VENV_DIR)\Scripts\pytest.exe
ISORT := $(VENV_DIR)\Scripts\isort.exe
BLACK := $(VENV_DIR)\Scripts\black.exe
MYPY := $(VENV_DIR)\Scripts\mypy.exe
FLAKE8 := $(VENV_DIR)\Scripts\flake8.exe

# 运行测试
test:
    $(TEST)tests/  --cov=src/  --cov-report=term-missing

# 代码格式化
format:
    $(ISORT) src/
    $(BLACK) src/

# 类型检查
typecheck:
    $(MYPY) src/

# 静态分析
lint:
    $(FLAKE8) src/

all: format typecheck lint