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