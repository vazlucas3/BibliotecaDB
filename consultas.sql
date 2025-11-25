-- Livros com seus autores
SELECT L.titulo, A.nome_autor
FROM Livros L
INNER JOIN Autores A ON L.autor_id = A.autor_id;

-- Empréstimos detalhados (JOIN com duas tabelas)
SELECT U.nome AS Usuario, L.titulo AS Livro, E.data_emprestimo, E.data_devolucao
FROM Emprestimos E
INNER JOIN Usuarios U ON E.usuario_id = U.usuario_id
INNER JOIN Livros L ON E.livro_id = L.livro_id;

-- Quantidade de livros por categoria (LEFT JOIN + GROUP BY)
SELECT C.nome_categoria, COUNT(L.livro_id) AS total
FROM Categorias C
LEFT JOIN Livros L ON L.categoria_id = C.categoria_id
GROUP BY C.nome_categoria;

-- Usuários que nunca pegaram livros (LEFT JOIN + WHERE NULL)
SELECT U.nome, U.email
FROM Usuarios U
LEFT JOIN Emprestimos E ON U.usuario_id = E.usuario_id
WHERE E.emprestimo_id IS NULL;
