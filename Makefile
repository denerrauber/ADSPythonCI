install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

formatar:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello hello_test.py