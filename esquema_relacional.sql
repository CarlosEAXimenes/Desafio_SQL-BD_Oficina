create database oficina;

use oficina;
show tables;
create table clientes(
	id_cliente int not null primary key auto_increment,
    nome_cliente varchar(50) not null,
    cpf char(9) not null,
    telefone char(15),
    constraint unique_cpf_cliente unique(cpf)
) auto_increment=1;

create table carros(
	id_carro int not null primary key auto_increment,
    modelo varchar(15) not null,
    marca varchar(15) not null,
    ano year,
    placa char(8) not null,
    id_cliente_carro int not null,
    constraint unique_placa_carro unique(placa),
    constraint fk_cliente_carro foreign key (id_cliente_carro) references clientes(id_cliente)
) auto_increment = 1;

create table orcamento(
	id_orcamento int not null primary key auto_increment,
    valor_orcamento float not null,
    data_orcamento datetime not null default current_timestamp,
    data_prazo date,
    descricao_orcamento varchar(50) not null,
    status_orcamento enum("Processando", "Em andamento", "Finalizado") default "Processando",
    forma_pagamento enum("Cartão Crédito", "Cartão Débito", "Dinheiro"),
	id_cliente_orcamento int not null,
    id_carro_orcamento int not null,
	constraint fk_cliente_orcamento foreign key (id_cliente_orcamento) references clientes(id_cliente),
    constraint fk_carro_orcamento foreign key (id_carro_orcamento) references carros(id_carro)
)auto_increment = 1;

 -- alter table estoque modify column nome_parte varchar(30);
create table estoque(
	id_parte int not null primary key auto_increment,
    nome_parte varchar(30) not null,
    valor_parte float not null,
    quantidade int not null default 1
) auto_increment = 1;

 -- alter table servicos modify column nome_servico varchar(30);
create table servicos(
	id_servico int not null primary key auto_increment,
    nome_servico varchar(30) not null,
    descricao varchar(50),
    valor float not null
) auto_increment = 1;

drop table estoque_orcamento;
create table estoque_orcamento(
	id_orcamento int not null,
    id_parte int not null,
    primary key (id_orcamento, id_parte),
    constraint fk_estoque_orcamento_orcamento foreign key (id_orcamento) references orcamento(id_orcamento),
    constraint fk_estoque_orcamento_parte foreign key (id_parte) references estoque(id_parte)
);

create table servicos_orcamento(
	id_orcamento int not null,
    id_servico int not null,
    primary key (id_orcamento, id_servico),
    constraint fk_servicos_orcamento_orcamento foreign key (id_orcamento) references orcamento(id_orcamento),
    constraint fk_servicos_orcamento_servico foreign key (id_servico) references servicos(id_servico)
);

