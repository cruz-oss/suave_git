select * from categorias;
select * from pedidos;
select * from clientes; 
select ID_Cliente AS 'codigo', Nome As 'cliente', Sexo As 'Genero' from clientes; 
select * from clientes;
select sum(Qtd_Filhos) As filhos from clientes; 
select * from clientes where Qtd_Filhos < 1 and Estado_Civil = 'S';
select Nome, 
	   Renda_Anual, Qtd_Filhos,
       case
       when Renda_Anual > 70000 then 'alto'
       when Renda_Anual between 60000 and 70000 then 'Médio'
       else 'Baixo'
       end as faixa_salarial
       from clientes
       where (Estado_Civil = 'S') and not Qtd_Filhos < 1; 

-- Aulas de sql Filtros usando  where
select *
from produtos
where Preco_Unit >= 1800;      

select *
from produtos
where Marca_Produto = 'DELL' or Marca_Produto = 'SAMSUNG';

select *
from clientes
where Estado_Civil = 'S' and Sexo = 'M'; 

select *
from pedidos
where Data_Venda >= '2019-01-03';

-- Funções de agregação 
select 
count(distinct Escolaridade)
from clientes; 

-- sum, avg, min e max
select 
sum(Receita_Venda) AS 'soma_total',
avg(Receita_Venda) As 'media_total',
min(Receita_Venda) As 'Minimo_total',
max(Receita_Venda) As 'Maximo_total'
from pedidos;

-- Group by
select
sexo,
count(*) As 'Qt.Clientes'
from clientes
group by sexo; 

select 
Marca_Produto, 
count(*) As 'Qt.Produtos'
from produtos
group by Marca_Produto;

select * from produtos;
select 
  ID_Produto, Marca_Produto,
  sum(Preco_Unit) As 'PrecoTotal',
  sum(Custo_Unit) As 'CustoTotal'
  from produtos
  group by ID_Produto, Marca_Produto
  order by 'PrecoTotal', 'CustoTotal' desc;
  
  -- Tabelas com INNER JOIN
  select * from pedidos;
  select * from lojas;
  
  -- Tabela A --> Tabela fato --> Tabela Pedidos
  -- Tabela B --> Tabela Dimensão -- Tabela Lojas
  
  -- Chave Primária (Lojas) --> ID_Loja
  -- Chave Estrangeira (Pedidos) --> ID_Loja
  select
     pedidos.*,
     lojas.Loja,
     lojas.Gerente,
     lojas.Telefone
   from pedidos
   inner join lojas
       on pedidos.ID_Loja = lojas.ID_Loja;

-- Exemplos com inner join
select clientes.Email, pedidos.ID_Produto, pedidos.Receita_Venda
from clientes
inner join pedidos on clientes.ID_Cliente = pedidos.ID_Cliente;   

-- seleções de tabelas em treinamento
select * from pedidos; 
     
       
  
  
  
