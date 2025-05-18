SELECT * 
FROm clientes; 


SELECT clientes.NomedoContato,
	   clientes.Cidade,
       clientes.Pais
FROM clientes 
ORDER by nomedocontato; 


SELECT clientes.NomeDoContato,
	   clientes.Cidade,
       clientes.Pais
FROM clientes
WHERE clientes.Pais like 'ar%'
ORDER by nomedocontato;

SELECT funcionarios.codigodofuncionario, 
	   funcionarios.nome
from funcionarios
ORDER by codigodofuncionario
LIMIT 10; 

SELECT clientes.NomeDoContato
from clientes
ORDER by nomedocontato; 

SELECT clientes.NomeDoContato,
	   pedidos.NumeroDoPedido
from clientes
INNER join pedidos
on clientes.CodigoDoCliente = pedidos.CodigoDoCliente
ORDER by nomedocontato
LIMIT 10;