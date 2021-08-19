create database db_farma_do_bem;
use db_farma_do_bem;

create table tb_categoria(
id int primary key auto_increment,
dorCabeca boolean,
dorBarriga boolean,
corpo boolean
);

create table tb_produto(
nome varchar(20),
tempo int,
preco decimal (10,2),
pilulas int,
categoria_id int not null,
foreign key(categoria_id)references tb_categoria(id)
);

insert into tb_categoria(dorCabeca,dorBarriga,corpo) values
(false,false,false),-- 1
(true,true,true), -- 2
(true,false,true), -- 3
(true,false,false), -- 4
(true,true,false), -- 5
(false,false,true); -- 6

insert into tb_produto (nome, tempo, preco, pilulas, categoria_id) values
("dorill",30,20.00,10,2),
("dorflex",10,5.00,00,3),
("SECTRAL",3,100.00,20,1),
("Tylenol",40,20.00,21,6),
("DIAMOX",50,150.00,5,4),
("buscopan",20,10.00,10,6),
("cinegripe",10,40.00,9,5);

select tb_produto.nome,tb_produto.preco from tb_produto , tb_categoria;
select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto
where tb_produto.nome like "b%";
 