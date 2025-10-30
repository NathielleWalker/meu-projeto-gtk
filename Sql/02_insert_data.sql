-- Vendedores
INSERT INTO vendedor (nome, cpf, email, telefone, instagram, senha) VALUES
('Lucas Carneiro', '12345678901', 'lucascarneiro@gmail.com', '11988887777', '@Lucascarneiro', '123456'),
('Ana Beatriz Medeiros',  '98765432100', 'anabiam@gmail.com',  '11999998888', '@anabia',  'abcdef');

-- Clientes
INSERT INTO cliente (nome, cpf, email, telefone, senha) VALUES
('Luiza Nunes', '11122233344', 'luizanunes@gmail.com', '11977776666', '654321'),
('Mariana Silva', '55566677788', 'mariana@hotmail.com', '11966665555', 'qwerty');

-- Endereços Clientes
INSERT INTO endereco (rua, numero, bairro, cidade, estado, cep, id_cliente)
VALUES
('Av. Parada Pinto', '123', 'Cachoeirinha', 'São Paulo', 'SP', '01001000', 1),
('Av. Paulista', '1000', 'Bela Vista', 'São Paulo', 'SP', '01311000', 2);


-- Endereços Vendedores
INSERT INTO endereco (rua, numero, bairro, cidade, estado, cep, id_vendedor)
VALUES
('Rua das Vendedoras', '50', 'Moema', 'São Paulo', 'SP', '04045000', 1),
('Rua da Moda', '77', 'Pinheiros', 'São Paulo', 'SP', '05422010', 2);

-- Produtos
INSERT INTO produto (nome, descricao, preco, estoque, id_vendedor) VALUES
('Vestido Floral', 'Vestido leve e elegante para o verão.', 149.90, 10, 1),
('Blusa Cropped', 'Cropped de algodão confortável.', 79.90, 15, 1),
('Bolsa de Couro', 'Bolsa artesanal em couro legítimo.', 249.90, 5, 2),
('Calça Jeans', 'Calça de modelagem reta.', 129.90, 8, 2);

-- Pedidos
INSERT INTO pedido (valor_total, id_cliente) VALUES
(229.80, 1),
(249.90, 2);

-- Itens dos pedidos
INSERT INTO contem (id_pedido, id_produto, preco_unitario, quantidade, subtotal) VALUES
(1, 1, 149.90, 1, 149.90),
(1, 2, 79.90, 1, 79.90),
(2, 3, 249.90, 1, 249.90);

-- Avaliações
INSERT INTO avaliacao_vendedor (id_cliente, id_vendedor, comentario, nota) VALUES
(1, 1, 'Atendimento excelente! Produtos de ótima qualidade.', 5),
(2, 2, 'Entrega rápida, recomendo.', 4);
