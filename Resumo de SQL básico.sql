-- CONSULTANDO UMA ÚNICA TABELA
-- Recuperar todas as colunas da tabela pais:
select * 
from pais;

 -- Recuperar as colunas id e nome da tabela cidade:
 select id_cidade, nome
 from cidade;

-- Recuperar os nomes das cidades ordenados pela coluna classificação em ordem crescente (asc) padrão:alter
select nome
from cidade
order by classificacao asc;

-- Recuperar os nomes das cidades ordenadas pela coluna classificação em ordem decrescente (desc):
select nome
from cidade
order by classificacao desc;

--  APELIDOS/ALIAS
-- COLUNAS
select nome as nome_cidades
from cidade;

-- TABELAS
select pa.nome, ci.nome
from cidade as ci
join pais as pa
on ci.id_pais = pa.id_pais;

-- FILTRANDO RESULTADOS 
-- OPERADORES DE COMPARAÇÃO 
-- RECUPERAR OS NOMES DAS CIDADES CUJO CLASSIFCAÇÃO É MAIOR QUE 3:
select nome
from cidade
where classificacao  > 3;

-- Recuperar os nomes das cidades que são nem Berlim nem Madrid:
select nome
from cidade 
where nome!= 'Berlim'
  and nome!= 'Madrid';
  
  -- OPERADORES DE TEXTO
  -- Pesquisar nomes de cidades que comecem com um "P" ou termina com um "s":
  select nome
  from cidade
  where nome like 'p%'
     or nome like '%s';
     
-- Pesquise nomes de cidades que comecem com qualquer letra seguida de "ublin" (como Bublin, na Irlanda, ou Lublin, na Polônia):
select nome
from cidade
where nome like '_ublin';

-- OUTROS OPERADORES 
-- Pecuperar os nomes das cidades com uma população entre 500.000 e 5milhoes:
select nome
from cidade
where populacao between 500000 and 5000000;

-- Recuperar os nomes das cidades que não tem um valor de classificação:
select nome
from cidade
where classificacao is not null;

-- Recuperar os nomes das cidades localizadas em países cujo identificador é 1, 4, 7 ou 8:
select nome
from cidade
where id_pais in (1, 4, 7, 8);

-- CONSULTANDO VÁRIAS TABELAS 
-- INNER JOIN 
-- JOIN(ou explicitamente INNER JOIN) retorna linhas cujos valores em ambas as tabelas são correspondentes.
select cidade.nome, pais.nome
from cidade
inner join pais
 on cidade.id_pais = pais.id_pais;
 
-- LEFT JOIN 
-- LEFT JOIN retorna todas as linhas da tabela da esquerda com as linhas correspondentes na tabela da direita.
-- Se não houver linhas correspondentes, os valores retornados da segunda tabela serãi NULL.
select cidade.nome, pais.nome
from cidade
left join pais
 on cidade.id_pais = pais.id_pais;
 
-- RIGHT JOIN 
-- RIGHT JOIN RETORNA TODAS AS LINHAS DA TABELA DA DIREITA COM AS LINHAS CORRESPONDENTES NA TABELA DA ESQUERDA. 
-- SE NÃO HOUVER LINHAS CORRESPONDENTES, OS VALORES RETORNADOS DA SEGUNDA TABELAS SERÃO NULL.
select cidade.nome, pais.nome
from cidade
right join pais
 on cidade.id_pais = pais.id_pais;
 
 -- FULL JOIN
 -- FULL JOIN (ou explicitamente FULL JOIN OUTER JOIN) retorna todas as linhas de ambas as tabelas. Se não houver uma linha correspondente na segunda tabela,
 -- valores NULL serão retornados.alter
 select cidade.nome , pais.nome
 from cidade
 full  join pais
   on cidade.id_pais = pais.id_pais;
   
-- CROSS JOIN
-- CROSS JOIN retorna todas as combinações possíveis de linhas das duas tabelas. Há duas sintaxes disponivel.
select cidade.nome , pais.nome
from cidade
cross join pais;

select cidade.nome , pais.nome
from cidade , pais;

-- NATURAL JOIN
-- NATURAL JOIN une as tabelas de acordo com todas as colunas com o mesmo nome.
select cidade.nome , pais.nome
from cidade
natural join pais;


 
  
  
  
  
  
  
 
 