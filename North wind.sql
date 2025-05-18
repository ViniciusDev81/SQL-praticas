SELECT * from clientes;


SELECT clientes.NomeDoContato,
	 clientes.Cidade,
     clientes.Pais
 FROM clientes
 
 where pais = "Alemanha"
 LIMIT 10;
 
 SELECT * from produtos
 
SELECT produtos.NomeDoProduto,
		produtos.PrecoUnitario,
        produtos.QuantidadePorUnidade
 from produtos;
 
SELECT funcionarios.CodigoDoFuncionario,
      funcionarios.Nome
 from funcionarios
 ORDER BY codigodofuncionario
 limit 5;
 
 
 SELECT clientes.CodigoDoCliente
 from clientes
 ORDER BY nomedocontato;
 
 SELECT clientes.CodigoDoCliente,
 	    pedidos.NumeroDoPedido
 FROM clientes
 inner join pedidos on clientes.CodigoDoCliente = pedidos.CodigoDoCliente
 where pedidos.NumeroDoPedido = 10249;
 
 
 
 
 SELECT produtos.NomeDoProduto,
       produtos.PrecoUnitario,
       categorias.NomeDaCategoria
       
 FROM categorias
 
 inner JOIN produtos
 on produtos.CodigoDoProduto = categorias.CodigoDaCategoria
 where produtos.PrecoUnitario > 10
 and     categorias.NomeDaCategoria = 'Bebidas';
 
 
 SELECT transportadoras.NomeDaEmpresa,
       pedidos.Frete,
       pedidos.DataDeEntrega
       
 from transportadoras
 
inner join pedidos
ON transportadoras.CodigoDaTransportadora = pedidos.Codigodatransportadora
where pedidos.DataDeEntrega BETWEEN '1996-08-01' AND '1996-08-31';
 
 
SELECT funcionarios.Nome,
     funcionarios.TelefoneResidencial,
     funcionarios.Cargo
     
 from funcionarios
 WHERE nome like 'J%';
 
 select clientes.NomeDoContato,
 		pedidos.NumeroDoPedido,
        pedidos.DataDeEntrega
 FROM clientes
 INNEr join pedidos
 on clientes.CodigoDoCliente = pedidos.CodigoDoCliente
 Where clientes.NomeDoContato like 'A%'
 
 
select transportadoras.NomeDaEmpresa,
		pedidos.Frete,
        pedidos.DataDeEntrega
from transportadoras
inner join pedidos
on transportadoras.CodigoDaTransportadora = pedidos.Codigodatransportadora
WHERE pedidos.DataDeEntrega BETWEEN '1996-08-01' and '1996-08-31';

select clientes.NomeDaEmpresa,
		pedidos.DataDeEntrega,
        pedidos.NumeroDoPedido
from clientes
inner join pedidos
on clientes.CodigoDoCliente = pedidos.CodigoDoCliente
ORDER by clientes.NomeDaEmpresa, pedidos.NumeroDoPedido;


select
	detalhesdopedido.NumeroDoPedido,
    detalhesdopedido.CodigoDoProduto,
    detalhesdopedido.Quantidade,
    detalhesdopedido.PrecoUnitario,
    detalhesdopedido.Desconto,
    detalhesdopedido.Quantidade * detalhesdopedido.PrecoUnitario - detalhesdopedido.Desconto as ValorTotal
From detalhesdopedido
WHERE detalhesdopedido.NumeroDoPedido = 10248;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 