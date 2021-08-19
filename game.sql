create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id int primary key auto_increment,
classe varchar (40) not null,
habilidade varchar (40)
);

create table tb_personagem(
nome varchar (20),
forca int,
defesa int,
velocidade int,
nivel int,
classe_id int not null,
foreign key(classe_id)references tb_classe(id)
);

insert into tb_classe(classe,habilidade) values
("tank","escudo"),
("DPS","Sniper"),
("DPS","escudo"),
("suporte","cura"),
("suporte","ajuda"),
("tank","gordo");

insert into tb_personagem(nome,forca,defesa,velocidade,nivel,classe_id) values
("Lucia",1000,10000,40,10,6),
("Liza",15000,1000,100,20,5),
("Bia",20000,5000,80,120,2),
("Ba",1000,15000,60,90,1),
("julio",1000,1000,100,80,4),
("Rodrigo",1000,1000,90,60,4),
("Agatha",15000,1000,60,70,3),
("Vitor",1000,10000,60,100,6);

select * from tb_classe,tb_personagem;
select * from tb_personagem;

select * from tb_personagem 
  inner join tb_classe on tb_classe.id = tb_personagem.classe_id
  where tb_personagem.forca < 10000;
  