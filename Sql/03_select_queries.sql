-- Seleciona todas as colunas de todos os produtos
SELECT * FROM produto;

-- Seleciona todos os clientes cadastrados
SELECT * FROM cliente;

-- Seleciona todos os vendedores cadastrados
SELECT * FROM vendedor;

-- Seleciona todos os pedidos realizados
SELECT * FROM pedido;

-- Seleciona todos os endereços
SELECT * FROM endereco;

-- Seleciona apenas nome e preço dos produtos
SELECT nome, preco FROM produto;

-- Seleciona os produtos com preço maior que 100 reais
SELECT * FROM produto
WHERE preco > 100;

-- Seleciona os produtos com preço menor ou igual a 50 reais
SELECT * FROM produto
WHERE preco <= 100;

-- Mostra todas as avaliações feitas, com nome do cliente e do vendedor
SELECT 
    avaliacao_vendedor.id_avaliacao,
    cliente.nome AS nome_cliente,
    vendedor.nome AS nome_vendedor,
    avaliacao_vendedor.comentario,
    avaliacao_vendedor.nota
FROM avaliacao_vendedor
JOIN cliente ON avaliacao_vendedor.id_cliente = cliente.id_cliente
JOIN vendedor ON avaliacao_vendedor.id_vendedor = vendedor.id_vendedor;


-- Mostra os produtos que estão dentro de cada pedido
SELECT 
    pedido.id_pedido,
    produto.nome AS nome_produto,
    contem.quantidade,
    contem.preco_unitario,
    contem.subtotal
FROM contem
JOIN pedido ON contem.id_pedido = pedido.id_pedido
JOIN produto ON contem.id_produto = produto.id_produto;


-- Mostra o endereço de cada cliente
SELECT 
    cliente.nome AS nome_cliente,
    endereco.rua,
    endereco.numero,
    endereco.bairro,
    endereco.cidade,
    endereco.estado,
    endereco.cep
FROM cliente
JOIN endereco ON cliente.id_cliente = endereco.id_cliente;


-- Mostra o endereço de cada vendedor
SELECT 
    vendedor.nome AS nome_vendedor,
    endereco.rua,
    endereco.numero,
    endereco.bairro,
    endereco.cidade,
    endereco.estado,
    endereco.cep
FROM vendedor
JOIN endereco ON vendedor.id_vendedor = endereco.id_vendedor;


-- Mostra os pedidos ordenados do mais recente para o mais antigo
SELECT * FROM pedido
ORDER BY data_pedido DESC;
