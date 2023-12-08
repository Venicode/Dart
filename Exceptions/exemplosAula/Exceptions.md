Tipos de Exceptions:
- FormatException
- TimeoutException
- IOException

Tipos de erros:
StackOverflowError
OutOfMemoryError
ArgumentError
TypeError

Pilha de Execução
Depurador e Modo de depuração
Try on
Catch
Stacktrace
Finally: executa independente se o código rodar com ou sem erros.
Rethrow: propaga o erro, muito utlizado para forçar Exceptions e treinar os tratamentos de erros.

Null Safety: foi criado para definir um nulo como um tipo de variável, juntamente com string, int e etc.
Antes dessa trava, qualquer objeto podia ser nulo, ocasionando erros em tempo de execução. Com o Null Safety,
podemos controlar o que pode ser nulo ou não e tratar os erros em tempo de codificação caso um valor inesperado
seja nulo.