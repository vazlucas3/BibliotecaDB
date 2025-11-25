USE BibliotecaDB;

INSERT INTO Autores (nome_autor) VALUES ('Machado de Assis'), ('J.K. Rowling'), ('George Orwell');

INSERT INTO Categorias (nome_categoria) VALUES ('Ficção'), ('Fantasia'), ('Distopia');

INSERT INTO Livros (titulo, ano, autor_id, categoria_id) VALUES
('Dom Casmurro', 1899, 1, 1),
('Harry Potter e a Pedra Filosofal', 1997, 2, 2),
('1984', 1949, 3, 3);

INSERT INTO Usuarios (nome, email) VALUES
('Ana Silva', 'ana@example.com'),
('João Pereira', 'joao@example.com');

INSERT INTO Emprestimos (livro_id, usuario_id, data_emprestimo, data_devolucao) VALUES
(1, 1, '2025-01-10', '2025-01-20'),
(2, 2, '2025-02-01', NULL);
