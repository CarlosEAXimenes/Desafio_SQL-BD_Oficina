INSERT INTO clientes (nome_cliente, cpf, telefone) VALUES
    ('Alice', '111111111', '(11) 1111-1111'),
    ('Bob', '222222222', '(22) 2222-2222'),
    ('Carol', '333333333', '(33) 3333-3333'),
    ('David', '444444444', '(44) 4444-4444'),
    ('Eva', '555555555', '(55) 5555-5555'),
    ('Fernando', '666666666', '(66) 6666-6666');


INSERT INTO carros (modelo, marca, ano, placa, id_cliente_carro) VALUES
    ('Fiesta', 'Ford', 2017, 'ABC1234', 1),
    ('Civic', 'Honda', 2021, 'XYZ5678', 2),
    ('Uno', 'Fiat', 2019, 'DEF4321', 3),
    ('Palio', 'Fiat', 2015, 'GHI5678', 1),
    ('Celta', 'Chevrolet', 2014, 'JKL1234', 4),
    ('HB20', 'Hyundai', 2018, 'MNO4321', 5);

INSERT INTO orcamento (valor_orcamento, data_orcamento, data_prazo, descricao_orcamento, forma_pagamento, id_cliente_orcamento, id_carro_orcamento) VALUES
    (1500.00, default, '2023-08-10', 'Troca de óleo e filtro', 'Dinheiro', 1, 1),
    (2500.00, '2023-07-10 11:30:00', '2023-09-15', 'Reparo na suspensão', 'Cartão Crédito', 2, 2),
    (1800.00, '2023-06-30 14:45:00', '2023-07-25', 'Troca de pastilhas de freio', 'Cartão Débito', 3, 3),
    (1200.00, default, '2023-08-05', 'Alinhamento e balanceamento', 'Dinheiro', 1, 4),
    (3000.00, '2023-07-20 16:10:00', '2023-08-30', 'Troca de correia dentada', 'Cartão Crédito', 4, 5),
    (2800.00, '2023-07-20 17:00:00', '2023-09-20', 'Troca de amortecedores', 'Dinheiro', 5, 6);

INSERT INTO estoque (nome_parte, valor_parte, quantidade) VALUES
    ('Óleo de motor', 45.00, 100),
    ('Filtro de óleo', 20.00, 50),
    ('Pastilha de freio', 80.00, 30),
    ('Correia dentada', 120.00, 20),
    ('Amortecedor', 250.00, 40),
    ('Bateria', 200.00, 25);

INSERT INTO servicos (nome_servico, descricao, valor) VALUES
    ('Troca de óleo', 'Substituição do óleo do motor e filtro de óleo', 100.00),
    ('Reparo na suspensão', 'Verificação e reparo de componentes da suspensão', 300.00),
    ('Alinhamento e balanceamento', 'Alinhamento das rodas e balanceamento dos pneus', 80.00),
    ('Troca de pastilhas de freio', 'Substituição das pastilhas de freio desgastadas', 150.00),
    ('Troca de correia dentada', 'Substituição da correia dentada do motor', 200.00),
    ('Troca de amortecedores', 'Substituição dos amortecedores desgastados', 250.00);


select * from servicos;
INSERT INTO estoque_orcamento (id_orcamento, id_parte) VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (3, 5),
    (4, 6);

INSERT INTO servicos_orcamento (id_orcamento, id_servico) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);
    
