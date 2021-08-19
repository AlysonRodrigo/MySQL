create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id int primary key auto_increment,
hidralica boolean,
material boolean,
pos boolean
);

create table tb_produto(
nome varchar (20),
valor decimal (10,2),
quantidade int,
ferro boolean,
plastico boolean,
categoria_id int,
foreign key(categoria_id)references tb_categoria(id)
);

insert into tb_categoria(hidralica,material,pos) values
(false,false,false),-- 1
(true,false,true), -- 2
(true,false,false), -- 3
(true,true,false), -- 4
(false,false,true), -- 5
(false,true,false); -- 6

insert into tb_produto(nome,valor,quantidade,ferro,plastico,categoria_id)values
("tijolo",1.30,30,false,false,7),
("cano_de_agua",2.70,15,false,true,4),
("barra_de_ferro",20.00,5,true,false,6),
("massa_corrida",30.00,25,false,false,5),
("cimento",31.00,30,false,false,5),
("areia",5.90,40,false,false,5),
("tinta",150.00,10,false,false,6);

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;