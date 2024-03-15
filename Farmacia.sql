create database farmacia;
use farmacia;

create table Cliente(
    id_cliente int auto_increment primary key,
    nome varchar(100),
    endereco varchar(255),
    telefone varchar(20)
); 

create table Produtos (
	id_produto int auto_increment primary key,
    nome varchar(100),
    preco decimal(10,2),
    estoque int
);   

create table Funcionarios (
	id_funcionario int auto_increment primary key,
    nome varchar(100),
    cargo varchar(100),
    salario decimal(10,2)
);   

create table vendas (
	id_venda int auto_increment primary key,
    id_cliente int,
    id_produto int,
    id_funcionarios int,
    data_venda date,
    total decimal (10,2),
    foreign key (id_cliente) references Cliente(id_cliente),
    foreign key (id_produto) references Produtos(id_produto),
    foreign key (id_funcionarios) references Funcionarios(id_funcionarios)
);

