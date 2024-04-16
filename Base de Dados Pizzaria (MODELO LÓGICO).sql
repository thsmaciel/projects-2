-- criação tabela pizzaiolo

CREATE TABLE Pizzaiolo (
  idPizzaiolo int PRIMARY KEY UNIQUE,
  nome varchar(45) NOT NULL,
  salario float
);

-- criação tabela embalagem

CREATE TABLE Embalagem(
  idEmbalagem int PRIMARY KEY UNIQUE,
  material varchar(45) NOT NULL,
  tamanho varchar(45) NOT NULL,
  preco float NOT NULL
);

-- criação tabela receita

CREATE TABLE Receita(
  idReceita int PRIMARY KEY UNIQUE,
  instruções varchar(45) NOT NULL,
  autor varchar(45) NOT NULL
);

-- criação tabela pizza

CREATE TABLE Pizza (
  idPizza int PRIMARY KEY UNIQUE,
  tamanho varchar(45) NOT NULL,
  descricao varchar(45) NOT NULL,
  preco float NOT NULL,
  sabor varchar(45) NOT NULL,
  ingredientes varchar(45) NOT NULL,
  
  pizzaiolo_id int NOT NULL,
  embalagem_id int NOT NULL,
  receita_id int NOT NULL,
  
  -- chaves estrangeiras referenciando tabelas relacionadas
  
  FOREIGN KEY (pizzaiolo_id) REFERENCES Pizzaiolo(idPizzaiolo),
  FOREIGN KEY (embalagem_id) REFERENCES embalagem(idEmbalagem),
  FOREIGN KEY (receita_id) REFERENCES receita(idReceita)
  
);

-- inserção de valores em Pizzaiolo

INSERT into Pizzaiolo VALUES (1, 'Renata', 1200),
    (2, 'Fábio', 1800),
    (3, 'Marina', 2200),
    (4, 'André', 2700),
    (5, 'Carolina', 3200),
    (6, 'Roberto', 3700),
    (7, 'Samantha', 4200),
    (8, 'Guilherme', 1800),
    (9, 'Vanessa', 2200),
    (10, 'Juliano', 2700),
    (11, 'Helena', 3200),
    (12, 'Ronaldo', 3700),
    (13, 'Débora', 4200),
    (14, 'Leonardo', 1800),
    (15, 'Patricia', 2200),
    (16, 'Marcos', 2700),
    (17, 'Leticia', 3200),
    (18, 'Rodrigo', 3700),
    (19, 'Tatiana', 4200),
    (20, 'Renato', 1800),
    (21, 'Caroline', 2200),
    (22, 'Ana', 2700),
    (23, 'Bruno', 3200),
    (24, 'Camila', 3700),
    (25, 'Paulo', 4200),
    (26, 'Luciana', 1800),
    (27, 'Felipe', 2200),
    (28, 'Aline', 2700),
    (29, 'Thales', 3200),
    (30, 'Vitoria', 3700);

-- inserção de valores em Embalagens

INSERT INTO Embalagem VALUES (1, 'Papel', 'Pequeno', 1.5),
    (2, 'Plástico', 'Médio', 2.0),
    (3, 'Papelão', 'Grande', 2.5),
    (4, 'Alumínio', 'Pequeno', 1.8),
    (5, 'Vidro', 'Médio', 3.2),
    (6, 'Plástico', 'Grande', 2.7),
    (7, 'Papel', 'Pequeno', 1.6),
    (8, 'Alumínio', 'Médio', 2.1),
    (9, 'Plástico', 'Grande', 2.9),
    (10, 'Papelão', 'Pequeno', 1.7),
    (11, 'Vidro', 'Médio', 3.0),
    (12, 'Alumínio', 'Grande', 3.5),
    (13, 'Papel', 'Pequeno', 1.4),
    (14, 'Plástico', 'Médio', 2.2),
    (15, 'Papelão', 'Grande', 2.8),
    (16, 'Vidro', 'Pequeno', 1.9),
    (17, 'Alumínio', 'Médio', 2.3),
    (18, 'Papel', 'Grande', 3.0),
    (19, 'Plástico', 'Pequeno', 1.3),
    (20, 'Papelão', 'Médio', 2.4),
    (21, 'Vidro', 'Grande', 3.8),
    (22, 'Papel', 'Pequeno', 1.2),
    (23, 'Alumínio', 'Médio', 2.5),
    (24, 'Plástico', 'Grande', 3.2),
    (25, 'Papelão', 'Pequeno', 1.1),
    (26, 'Vidro', 'Médio', 2.6),
    (27, 'Alumínio', 'Grande', 3.0),
    (28, 'Papel', 'Pequeno', 1.0),
    (29, 'Plástico', 'Médio', 2.8),
    (30, 'Papelão', 'Grande', 3.5);

-- inserção de valores em Receita

INSERT INTO Receita VALUES (1, 'Misture os ingredientes e asse por 30 minutos.', 'Ana'),
    (2, 'Cozinhe os ingredientes em fogo médio por 20 minutos.', 'Carlos'),
    (3, 'Pique os vegetais e adicione o molho.', 'Maria'),
    (4, 'Frite os ingredientes até dourar.', 'João'),
    (5, 'Asse em forno pré-aquecido a 180°C por 40 minutos.', 'Laura'),
    (6, 'Refogue os ingredientes em azeite por 15 minutos.', 'Pedro'),
    (7, 'Misture os ingredientes e leve à geladeira por 2 horas.', 'Ana'),
    (8, 'Cozinhe os vegetais no vapor por 10 minutos.', 'Sofia'),
    (9, 'Bata todos os ingredientes no liquidificador.', 'Gabriel'),
    (10, 'Marine a carne com os temperos por 1 hora.', 'Mariana'),
    (11, 'Misture os ingredientes e leve ao forno por 25 minutos.', 'Eduardo'),
    (12, 'Refogue a cebola e o alho, adicione o tomate e cozinhe por 20 minutos.', 'Luiza'),
    (13, 'Cozinhe a massa em água fervente por 10 minutos.', 'Ana'),
    (14, 'Asse em forno pré-aquecido a 200°C por 35 minutos.', 'Rafael'),
    (15, 'Ferva o leite com a baunilha e o açúcar.', 'Carla'),
    (16, 'Misture os ingredientes e leve à geladeira por 1 hora.', 'Renato'),
    (17, 'Cozinhe o arroz em água e sal por 15 minutos.', 'Patrícia'),
    (18, 'Bata as claras em neve e misture delicadamente aos demais ingredientes.', 'Fernando'),
    (19, 'Refogue a carne com cebola, alho e pimentão.', 'Vanessa'),
    (20, 'Corte os legumes em rodelas e cozinhe por 20 minutos.', 'Carlos'),
    (21, 'Misture os ingredientes secos, adicione os líquidos e leve ao forno por 30 minutos.', 'Ana'),
    (22, 'Frite os pedaços de frango em óleo quente até ficarem dourados.', 'Felipe'),
    (23, 'Misture o creme de leite ao chocolate derretido e leve à geladeira por 4 horas.', 'Juliana'),
    (24, 'Cozinhe o feijão em panela de pressão por 20 minutos.', 'Mateus'),
    (25, 'Asse os pães em forno pré-aquecido a 180°C por 25 minutos.', 'Laura'),
    (26, 'Misture os ingredientes e leve à geladeira por 3 horas.', 'Gustavo'),
    (27, 'Refogue a cebola e o alho, adicione o frango desfiado e cozinhe por 15 minutos.', 'Luiza'),
    (28, 'Corte as frutas em pedaços e bata no liquidificador com gelo.', 'Renata'),
    (29, 'Cozinhe o macarrão em água fervente por 8 minutos.', 'Sofia'),
    (30, 'Misture os ingredientes e leve ao forno por 40 minutos.', 'Pedro');

-- inserção de valores em Pizza

INSERT INTO Pizza VALUES (1, 'Grande', 'Calabresa', 30.0, 'Calabresa', 'Molho de tomate, queijo, calabresa fatiada, cebola, azeitona', 5, 3, 1),
    (2, 'Média', 'Margherita', 25.0, 'Margherita', 'Molho de tomate, queijo mussarela, tomate, manjericão fresco', 6, 2, 2),
    (3, 'Pequena', 'Quatro Queijos', 20.0, 'Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo catupiry', 7, 1, 3),
    (4, 'Grande', 'Frango com Catupiry', 32.0, 'Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 8, 3, 4),
    (5, 'Média', 'Portuguesa', 28.0, 'Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovos, azeitona, orégano', 9, 2, 5),
    (6, 'Pequena', 'Calabresa', 18.0, 'Calabresa', 'Molho de tomate, queijo, calabresa fatiada, cebola, azeitona', 10, 1, 6),
    (7, 'Grande', 'Margherita', 30.0, 'Margherita', 'Molho de tomate, queijo mussarela, tomate, manjericão fresco', 11, 3, 7),
    (8, 'Média', 'Quatro Queijos', 25.0, 'Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo catupiry', 12, 2, 8),
    (9, 'Pequena', 'Frango com Catupiry', 20.0, 'Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 13, 1, 9),
    (10, 'Grande', 'Portuguesa', 32.0, 'Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovos, azeitona, orégano', 14, 3, 10),
    (11, 'Média', 'Calabresa', 28.0, 'Calabresa', 'Molho de tomate, queijo, calabresa fatiada, cebola, azeitona', 15, 2, 11),
    (12, 'Pequena', 'Margherita', 18.0, 'Margherita', 'Molho de tomate, queijo mussarela, tomate, manjericão fresco', 16, 1, 12),
    (13, 'Grande', 'Quatro Queijos', 30.0, 'Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo catupiry', 17, 3, 13),
    (14, 'Média', 'Frango com Catupiry', 25.0, 'Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 18, 2, 14),
    (15, 'Pequena', 'Portuguesa', 20.0, 'Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovos, azeitona, orégano', 19, 1, 15),
    (16, 'Grande', 'Calabresa', 32.0, 'Calabresa', 'Molho de tomate, queijo, calabresa fatiada, cebola, azeitona', 20, 3, 16),
    (17, 'Média', 'Margherita', 28.0, 'Margherita', 'Molho de tomate, queijo mussarela, tomate, manjericão fresco', 21, 2, 17),
    (18, 'Pequena', 'Quatro Queijos', 18.0, 'Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo catupiry', 22, 1, 18),
    (19, 'Grande', 'Frango com Catupiry', 30.0, 'Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 23, 3, 19),
    (20, 'Média', 'Portuguesa', 25.0, 'Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovos, azeitona, orégano', 24, 2, 20),
    (21, 'Pequena', 'Calabresa', 20.0, 'Calabresa', 'Molho de tomate, queijo, calabresa fatiada, cebola, azeitona', 25, 1, 21),
    (22, 'Grande', 'Margherita', 32.0, 'Margherita', 'Molho de tomate, queijo mussarela, tomate, manjericão fresco', 26, 3, 22),
    (23, 'Média', 'Quatro Queijos', 28.0, 'Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo catupiry', 27, 2, 23),
    (24, 'Pequena', 'Frango com Catupiry', 18.0, 'Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 28, 1, 24),
    (25, 'Grande', 'Portuguesa', 30.0, 'Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovos, azeitona, orégano', 29, 3, 25),
    (26, 'Média', 'Calabresa', 25.0, 'Calabresa', 'Molho de tomate, queijo, calabresa fatiada, cebola, azeitona', 30, 2, 26),
    (27, 'Pequena', 'Margherita', 20.0, 'Margherita', 'Molho de tomate, queijo mussarela, tomate, manjericão fresco', 1, 1, 27),
    (28, 'Grande', 'Quatro Queijos', 32.0, 'Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo parmesão, queijo gorgonzola, queijo catupiry', 2, 3, 28),
    (29, 'Média', 'Frango com Catupiry', 28.0, 'Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 3, 2, 29),
    (30, 'Pequena', 'Portuguesa', 18.0, 'Portuguesa', 'Molho de tomate, queijo, presunto, cebola, ovos, azeitona, orégano', 4, 1, 30);

-- todas as pizzas e os pizzaiolos aptos a produzi-las
SELECT p.idPizza, p.descricao AS Pizza, pizz.nome AS Pizzaiolo, p.tamanho
FROM Pizza p
INNER JOIN Pizzaiolo pizz ON p.pizzaiolo_id = pizz.idPizzaiolo;

-- todas as pizzas e seus ingredientes
SELECT idPizza, descricao AS Pizza, ingredientes AS Ingredientes
FROM Pizza;

-- todos os ingredientes e as pizzas onde são utilizados
SELECT ing.ingredientes AS Ingrediente, p.descricao AS Pizza
FROM Pizza p
INNER JOIN (SELECT DISTINCT idPizza, ingredientes FROM Pizza) AS ing ON p.idPizza = ing.idPizza;

-- sabores de todas as pizzas, o nome dos pizzaiolos que as fazem e as instruções para produzi-las

SELECT p.sabor AS Sabor, pi.nome AS Pizzaiolo, r.instruções AS Instruções
FROM Pizza p
INNER JOIN Pizzaiolo pi ON p.pizzaiolo_id = pi.idPizzaiolo
INNER JOIN Receita r ON p.receita_id = r.idReceita;

