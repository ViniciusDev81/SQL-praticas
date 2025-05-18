SELECT 	transportadoras.CodigoDaTransportadora,
		transportadoras.NomeDaEmpresa,
       	transportadoras.Telefone
FROM transportadoras


INSERT into transportadoras (CodigodaTransportadora, NomeDaEmpresa, Telefone) 
VALUES (4, 'Mercado Livre', '(81) 4020-1735')


UPDATE transportadoras
set NomeDaEmpresa = 'Mercado Livre S/A'
WHERE codigodatransportadora = 4;


DELETE from transportadoras
where codigodatransportadora = 4;