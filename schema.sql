CREATE DATABASE BibliotecaDB;
GO
USE BibliotecaDB;
GO

CREATE TABLE Autores (
    autor_id INT IDENTITY PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL
);

CREATE TABLE Categorias (
    categoria_id INT IDENTITY PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE Livros (
    livro_id INT IDENTITY PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    ano INT,
    autor_id INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(categoria_id)
);

CREATE TABLE Usuarios (
    usuario_id INT IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);

CREATE TABLE Emprestimos (
    emprestimo_id INT IDENTITY PRIMARY KEY,
    livro_id INT NOT NULL,
    usuario_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (livro_id) REFERENCES Livros(livro_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);
