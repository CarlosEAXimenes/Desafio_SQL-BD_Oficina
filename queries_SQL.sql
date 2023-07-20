use oficina;

/*
    Qual é o valor total de todos os orçamentos registrados?
    Quais são os modelos de carros presentes na tabela "carros"?
    Quais são os nomes dos clientes presentes na tabela "clientes"?
    Quais são os nomes dos serviços presentes na tabela "servicos"?
*/
select sum(valor_orcamento) as total from orcamento;
select modelo from carros;
select nome_cliente from clientes;
select nome_servico from servicos; 

/*
	Quais são os orçamentos com valores acima de R$ 2.000?
    Quais são os carros com o ano de fabricação superior a 2018?
    Quais são os clientes que possuem "Honda" como marca de carro?
*/
select * from orcamento where valor_orcamento>2000;
select * from carros where ano>2018;
select * from clientes cl, carros ca where cl.id_cliente = ca.id_cliente_carro and ca.marca = "Honda";

-- Crie uma coluna no resultado da consulta que mostre a diferença em dias entre a "data_prazo" e a "data_orcamento" na tabela "orcamento".
select id_orcamento, descricao_orcamento, valor_orcamento, timestampdiff(day, data_orcamento,data_prazo) as prazo_restante from orcamento;

/*
    Liste os orçamentos em ordem decrescente de valor.
    Ordene os carros por marca e, dentro de cada marca, por modelo em ordem alfabética.
*/
select * from orcamento order by valor_orcamento desc;
select * from carros order by marca asc, modelo asc;

/*
    Quais são os clientes que têm mais de um carro cadastrado na tabela "carros"?
    Quais são os serviços cujo valor é superior a R$ 200?
*/
select * from clientes cl, carros ca group by  having count(cl.id_cliente=ca.id_cliente_carro)>1;