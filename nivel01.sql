select * from categorias;
select * from pedidos;
select * from categorias, clientes; 
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
