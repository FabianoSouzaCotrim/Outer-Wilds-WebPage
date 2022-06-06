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

select * from usuario;

#update usuario set fk_personagemFav = null where idUsuario = 1;

#insert into usuario(nome, idade, genero, email, senha)
#values("fabiano", 21 , "masculino", "fabiano@gmail.com","coxinha123");

#UPDATE usuario
#SET fk_personagemFav = "5"
#WHERE idUsuario = 1;

