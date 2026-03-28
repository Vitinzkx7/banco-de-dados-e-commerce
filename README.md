# Contexto e Objetivos

Esse projeto é um desafio proposto no bootcamp GenAI & Dados da DIO com o Bradesco. O objetivo é construir um sistema de banco de dados relacional voltado para um e-commerce especializado em videogames de edição especial e de colecionador.


Os objetivos do projeto são: modelar e estruturar um banco de dados relacional completo para um sistema de e-commerce; organizar dados de produtos de nicho (edições especiais e de colecionador de videogames); entender como relacionamentos entre tabelas suportam operações comerciais como cadastro de clientes, pedidos, estoque e pagamentos; aplicar boas práticas de modelagem de dados e normalização; e explorar como um banco de dados bem estruturado sustenta a experiência de compra em uma plataforma digital.


# Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes entidades (tabelas) centrais:

Produtos (Videogames): Armazena os dados de cada jogo disponível no e-commerce, incluindo título, plataforma, tipo de edição (padrão, especial, de colecionador), descrição, preço e quantidade em estoque.

Clientes: Contém as informações dos usuários cadastrados na plataforma, como nome, e-mail, CPF, endereço e data de cadastro.

Pedidos: Registra cada transação realizada, associando um cliente a um ou mais produtos, com data do pedido, status (pendente, enviado, entregue, cancelado) e valor total.

Itens do Pedido: Tabela intermediária que detalha quais produtos compõem cada pedido, com quantidade e preço unitário no momento da compra.

Pagamentos: Gerencia as formas de pagamento utilizadas em cada pedido (cartão de crédito, boleto, PIX), status da transação e data de confirmação.

Estoque: Controla a disponibilidade de cada produto, incluindo entradas, saídas e alertas de reposição.

Fornecedores: Armazena os dados das distribuidoras e fornecedores que abastecem o e-commerce com os produtos.


# O que é um banco de dados relacional e por que usá-lo em um e-commerce?


Um banco de dados relacional é um sistema de armazenamento de dados que organiza as informações em tabelas estruturadas (com linhas e colunas), conectadas entre si por meio de chaves primárias e estrangeiras.

No contexto de um e-commerce, esse modelo é ideal por diversas razões:

Integridade dos dados: As relações entre tabelas garantem que um pedido só possa existir se houver um cliente e produtos válidos associados a ele, evitando registros inconsistentes ou órfãos.

Consultas complexas: Com SQL, é possível cruzar dados de múltiplas tabelas em uma única consulta, por exemplo, listar todos os pedidos de um cliente específico junto com os detalhes dos produtos adquiridos e o status do pagamento.

Escalabilidade e organização: À medida que o catálogo de produtos cresce (como acontece em um e-commerce de edições especiais, com lançamentos constantes), o banco relacional mantém a organização sem degradação de desempenho.

Controle transacional (ACID): Operações críticas, como a confirmação de um pagamento e a baixa do estoque, acontecem de forma atômica, consistente, isolada e durável, garantindo a confiabilidade da plataforma.


# Por que um e-commerce de videogames de edição especial tem necessidades específicas de banco de dados?

Edições especiais e de colecionador possuem características únicas que exigem um banco de dados mais detalhado do que o de um e-commerce convencional.

Estoque limitado: Itens de colecionador são produzidos em quantidades restritas. O banco precisa controlar unidades disponíveis com precisão e bloquear vendas além do estoque.

Múltiplos atributos de produto: Além do título e plataforma, é necessário registrar: conteúdo incluso (artbook, soundtrack, figura, steelbook), número de série, dimensões da embalagem e número de edição (ex: "cópia 342 de 5.000").

Precificação dinâmica: O valor de mercado de itens raros pode variar. O banco precisa registrar o preço de venda no momento do pedido, não apenas o preço atual do produto.

Rastreabilidade: Colecionadores valorizam saber a procedência dos itens. O relacionamento entre Produtos e Fornecedores garante essa rastreabilidade dentro da plataforma.


# Visão Geral do Projeto
O projeto banco-de-dados-e-commerce modela um sistema de banco de dados relacional completo para uma loja virtual especializada em videogames de edição especial e de colecionador.

A estrutura contempla desde o cadastro de produtos e clientes até o controle de pedidos, pagamentos e estoque, seguindo as boas práticas de modelagem relacional com normalização e uso de chaves estrangeiras para garantir integridade referencial.

# Principais Conceitos Aplicados


Modelagem Relacional: Estruturação dos dados em tabelas normalizadas com relacionamentos do tipo 1:N (um cliente para muitos pedidos) e N:M (muitos produtos para muitos pedidos, via tabela intermediária de itens).

Chaves Primárias e Estrangeiras: Cada tabela possui uma chave primária única (ex: id_produto, id_cliente) e as tabelas dependentes referenciam essas chaves por meio de chaves estrangeiras, garantindo consistência.

Normalização: O banco foi estruturado para evitar redundância de dados, seguindo as formas normais (1FN, 2FN e 3FN), separando responsabilidades entre as entidades.
SQL (Structured Query Language): Linguagem utilizada para criar, manipular e consultar os dados. O projeto inclui scripts DDL (criação das tabelas) e DML (inserção e consulta de dados de exemplo).

Controle de Estoque: Lógica implementada para atualizar automaticamente a disponibilidade dos produtos a cada pedido confirmado, evitando overselling de itens de colecionador.


# Tecnologia Utilizada
O banco de dados foi desenvolvido utilizando MySQL, com scripts .sql organizados na pasta Videogames Specials Editions do repositório.


# Glossário

DDL (Data Definition Language): Subconjunto do SQL utilizado para criar e modificar a estrutura do banco de dados, como os comandos CREATE TABLE, ALTER TABLE e DROP TABLE.

DML (Data Manipulation Language): Subconjunto do SQL utilizado para inserir, atualizar, deletar e consultar dados nas tabelas, como INSERT, UPDATE, DELETE e SELECT.
Chave Primária (Primary Key): Coluna ou conjunto de colunas que identifica de forma única cada registro dentro de uma tabela. Não pode conter valores nulos ou duplicados.

Chave Estrangeira (Foreign Key): Coluna que estabelece um vínculo entre duas tabelas, referenciando a chave primária de outra tabela e garantindo a integridade referencial do banco.

Normalização: Processo de organização das tabelas e colunas de um banco de dados com o objetivo de reduzir a redundância de dados e melhorar a integridade das informações.

Integridade Referencial: Garantia de que os relacionamentos entre tabelas permaneçam consistentes, por exemplo, impedindo que um pedido referencie um produto que não existe no banco.

ACID: Acrônimo para Atomicidade, Consistência, Isolamento e Durabilidade — conjunto de propriedades que garantem a confiabilidade das transações em um banco de dados relacional.

Cardinalidade: Descreve o tipo de relacionamento entre duas tabelas: um-para-um (1:1), um-para-muitos (1:N) ou muitos-para-muitos (N:M).

Edição de Colecionador: Versão especial de um jogo produzida em quantidade limitada, geralmente incluindo itens físicos exclusivos como artbooks, trilhas sonoras, figuras e embalagens diferenciadas.
