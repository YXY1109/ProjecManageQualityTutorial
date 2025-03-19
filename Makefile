# Variables
SOURCE_DIR = D:/PycharmProjects/ProjecManageQualityTutorial
VENV_SCRIPTS = $(SOURCE_DIR)/venv/Scripts

help:
	@echo "可用命令:"
	@echo "make format      自动格式化代码（isort + black）"
	@echo "make lint        代码风格检查（flake8）"
	@echo "make typecheck   静态类型检查（mypy）"
	@echo "make test        运行测试"
	@echo "make all         执行所有检查（format + lint + typecheck + test）"


# 自动格式化代码
format:
	$(VENV_SCRIPTS)/isort --settings-file .isort.cfg $(SOURCE_DIR)
	$(VENV_SCRIPTS)/black --config black.toml $(SOURCE_DIR)

# 代码风格检查
lint:
	$(VENV_SCRIPTS)/flake8 --config .flake8 $(SOURCE_DIR)

# 静态类型检查
typecheck:
	$(VENV_SCRIPTS)/mypy --config-file .mypy.ini $(SOURCE_DIR)

# 运行测试
test:
	$(VENV_SCRIPTS)/pytest tests/

# 执行所有检查
all: format lint typecheck test