create database outerWilds;

use outerWilds;

create table planeta(
	idPlaneta int primary key auto_increment not null,
	nome varchar(45)
);

create table personagem(
	idPersonagem int primary key auto_increment not null,
	nome varchar(45)
);

create table usuario(
	idUsuario int primary key auto_increment not null,
    nome varchar(145),
	idade int,
    genero varchar(45),
    email varchar(45),
    senha varchar(45),
    fk_planetaFav int,
    fk_personagemFav int,
    foreign key (fk_planetaFav) references planeta(idPlaneta),
    foreign key (fk_personagemFav) references personagem(idPersonagem)
);

create table forum(
	idComentario INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(250),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(idUsuario)
);

insert into personagem
values(null, "chert"),
(null, "esker"),
(null, "riebeck"),
(null, "gabbro"),
(null, "feldspar");

insert into planeta
values(null, "gêmeos da ampulheta"),
(null, "recanto lenhoso"),
(null, "vale incerto"),
(null, "profundezas do gigante"),
(null, "embrolho sombrio");

insert into usuario(nome, idade, genero, email, senha, fk_planetaFav, fk_personagemFav)
values("carlos", 31 , "masculino", "carlos@gmail.com","coxinha123",3 ,2),
("pedro", 52 , "masculino", "pedro@gmail.com","coxinha123",3 ,2),
("duda", 25 , "feminino", "duda@gmail.com","coxinha123",5 , 3),
("sara", 40 , "feminino", "sara@gmail.com","coxinha123", 4 ,3),
("lucas", 18 , "masculino", "lucas@gmail.com","coxinha123",3 ,4);


select * from usuario;

#SELECT p.nome, COUNT(u.idUsuario) AS votos
#FROM personagem AS p
#inner JOIN usuario AS u ON (p.idPersonagem = u.fk_personagemFav)
#GROUP BY u.fk_personagemFav, p.nome;

#update usuario set fk_personagemFav = null where idUsuario = 1;

#UPDATE usuario
#SET fk_personagemFav = "5"
#WHERE idUsuario = 1;

