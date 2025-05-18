create database Biblioteca; 

use Biblioteca;


create table Funcionario(
Id_Funcionario Int not null primary key ,
nome varchar(255) not null,
cargo varchar(50) not null, 
turno varchar(5));

create table usuario(
Id_Usuario int primary key not null,
nome varchar(255) not null,
endereço varchar(255), 
telefone varchar(255), 
Data_Cadastro date not null);

create table livro(
Id_livro int primary key not null,
Titulo_livro varchar(255),
Autor_livro varchar(255),
Genero_livro varchar(255),
Data_Publicação date); 

create table categoria(
Id_Categoria int primary key not null,
Id_livro int,
Nome_Categoria varchar(255), 
Descrição varchar(255), 
FOREIGN KEY (Id_livro) REFERENCES livro(Id_livro)
);

create table emprestimo(
Id_emprestimo int primary key not null, 
Id_Usuario int,
Id_livro int, 
Data_Emprestimo date not null, 
Data_Devolução date not null,
St varchar(20) not null,
foreign key (Id_Usuario) references usuario(Id_usuario), 
foreign key (Id_livro) references livro(Id_livro)); 

SELECT 
    f.Id_Funcionario, 
    f.cargo, 
    f.turno, 
    u.nome AS nome_usuario, 
    l.Titulo_livro, 
    e.Data_Emprestimo, 
    e.Data_Devolução, 
    e.St AS status_emprestimo
FROM 
    Funcionario f
JOIN 
    usuario u ON f.Id_Funcionario = u.Id_Usuario  -- A relação entre Funcionario e Usuario depende de sua lógica, ajuste se necessário
JOIN 
    emprestimo e ON u.Id_Usuario = e.Id_Usuario  -- Relacionando os usuários ao empréstimo
JOIN 
    livro l ON e.Id_livro = l.Id_livro;  -- Relacionando os livros ao empréstimo






        