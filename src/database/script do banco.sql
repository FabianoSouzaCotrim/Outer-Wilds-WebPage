create database outerWilds;

use outerWilds;
create table usuario(
	idUsuario int primary key auto_increment not null,
    nome varchar(145),
	idade int,
    genero varchar(45),
    email varchar(45),
    senha varchar(45),
    fk_planetaFav int
);
    
    
    create table planeta(
		idPlaneta int primary key auto_increment not null,
        nome varchar(45)
    );