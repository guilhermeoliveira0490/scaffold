install:
#PIP é a ferramenta de empacotamento python que realmente esta incluida em um ambiente virtual
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
format:
# Um arquivo de formatação, isso é opcional
	black *.py
	
lint:
#O lint serve para verificar erros em um aruivo a ser executado, no caso do script a baixo é o hello.py, e antes dele ele desabilita um recurso que no pracisa ser mostrado.
	pylint --disable=R,C hello.py
	
test:
#Biblioteca de terceiro para teste, com o python -m pytest e com o -vv que da algumas saidas detalhadas/ --cov-hello aqui ele da um pouco de cobertura bo codigo / test_hello.py executa o codigo
	python -m pytest -vv --cov=hello test_hello.py