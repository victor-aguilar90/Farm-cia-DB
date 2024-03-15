create database farmacia;
use farmacia;

create table Clientes(
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

insert into Clientes (nome, endereco, telefone) values
('João Silva', 'Rua A, 123', '11 1223-1232'),
('Maria Santos', 'Rua B, 11', '11 1223-1243'),
('Pedro Oliveira', 'Rua C, 222', '11 1223-1232');

insert into Produtos (nome, preco, estoque) values 
('Ibuprofeno', 20.00, 23),
('Dipirona', 14.00, 40),
('Zolpiden', 40.00, 89);

insert into Funcionarios (nome, cargo, salario) values
('Carlos Bezerra', 'Farmaceutico', 1200.00),
('Luiz Inacio', 'Farmaceutico', 1200.00),
('Jair Messias', 'Farmaceutico', 10);



