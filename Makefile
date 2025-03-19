# 获取当前目录
SOURCE_DIR := $(CURDIR)
VENV_SCRIPTS = $(SOURCE_DIR)/venv/Scripts

help:
	@echo "Available commands:"
	@echo "make format      Automatically format the code(isort + black)"
	@echo "make lint        Check the code style(flake8)"
	@echo "make typecheck   Perform static type checking(mypy)"
	@echo "make test        Run the tests"
	@echo "make all         Execute all checks (format + lint + typecheck + test)"


# 自动格式化代码
format:
	@echo ===============run isort===============
	$(VENV_SCRIPTS)/isort --settings-file .isort.cfg $(SOURCE_DIR)
	@echo ===============run black===============
	$(VENV_SCRIPTS)/black --config black.toml $(SOURCE_DIR)

# 代码风格检查
lint:
	@echo ===============run flake8===============
	$(VENV_SCRIPTS)/flake8 --config .flake8 $(SOURCE_DIR)

# 静态类型检查
typecheck:
	@echo ===============run mypy===============
	$(VENV_SCRIPTS)/mypy --config-file .mypy.ini $(SOURCE_DIR)

# 运行测试
test:
	@echo ===============run test===============
	$(VENV_SCRIPTS)/pytest tests/

# 执行所有检查
all: format lint typecheck test