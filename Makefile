.PHONY: test publish build

test:
	coverage run -m unittest -v && coverage report

build: test
	python setup.py sdist bdist_wheel

publish: build
	twine check dist/* && twine upload dist/*
