-- Inserção de dados e Queries 

show tables;
SELECT * FROM client;
SELECT * FROM Product;

use ecommerce;

-- O que inserir no Cliente? 

-- idclient, Fname, Lname,  CPF, Adress 

INSERT INTO Client (Fname, Lname, CPF, Adress)
VALUES 
    ('Gustavo', 'Lima', '22233311199', 'Santa Catarina'),
    ('Léo', 'Santana', '11122233344', 'Bahia'),
    ('Marilia', 'Mendonça', '55566677711', 'Goias'),
    ('Julia', 'Farias', '32222155455', 'Minas Gerais'),
    ('Maria', 'Fagundes', '99922244433', 'São Paulo');
 
 
-- O que inserir no Produto (idProduct, Pname, category)
	 
ALTER TABLE Product ADD COLUMN category VARCHAR(255);

insert into Product  (Pname, category) 
VALUES 
('Kaiak', 'Perfume'), 
('Fone', 'Eletronico'),
('Tenys Pé', 'Cuidado Pessoal'),
('Tenis', 'Calçado'),
('Vodka', 'Bebida Alcolica');

-- Inserir quantidade de Produto/Estoque

ALTER TABLE productstorage ADD COLUMN idProduct INT;

INSERT INTO productstorage (storageLocation, idProduct, quantity)
VALUES
    ('Santa Catarina', 6, '01'),
    ('Bahia', 7, '3'),
    ('Goias', 8, '2'),
    ('Minas Gerais', 9, '5'),
    ('São Paulo', 10, '10');
 
 
-- Numero de Pedido por cliente

ALTER TABLE Orders ADD COLUMN Client INT;
ALTER TABLE Orders ADD COLUMN quantity int;

INSERT INTO Orders (idOrder, idOrderClient, quantity)
VALUES (1, 9, 5);


-- Status Pagamento

INSERT INTO payment (idPayment)
VALUES 
('Boleto'),
('Cartão Débito'), 
('Cartão Crédito'),
('Pix');


-- Transporte 

INSERT INTO OrdersTransport (idOrdersTransport, status)
VALUES 
('codigo_de_rastreio_1', 'Produto Entregue'),
('codigo_de_rastreio_2', 'Produto Recusado');
