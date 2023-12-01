%Trabalho realizdo por Cauê Mendonça e Gabriela Marculino

% Base de dados dos filmes
filme(holandes_voador, [terror, aventura], 1999, [ana, jones]).
filme(rua_80, [comedia, drama, classico], 2020, [jose, maria]).
filme(time_da_pesada, [esporte, comedia], 1990, [jose, maria]).
filme(roma, [documentario], 2012, [jones]).
filme(terremoto, [catastrofe, drama, aventura], 2000, [ana, jose, jones, maria]).
filme(ela_e_ele, [romance], 2016, [ana, jones]).
filme(danca_fatal, [acao], 2016, [jones, maria]).

% Consultas
% a) Quais os nomes dos filmes que ocorreram em 2016?
consulta_a(Nome) :- filme(Nome, _, 2016, _).

% b) Quais os atores do filme “terremoto”?
consulta_b(Atores) :- filme(terremoto, _, _, Atores).

% c) Quais os filmes, e seus respectivos anos, que foram protagonizados apenas pelos atores Ana e Jones?
consulta_c(Nome, Ano) :- filme(Nome, _, Ano, Atores), sort(Atores, [ana, jones]).

% d) Qual o gênero do filme protagonizado por José e Maria no ano de 1990?
consulta_d(Genero) :- filme(_, Genero, 1990, Atores), sort(Atores, [jose, maria]).

% e) Quais são todos os filmes da locadora?
consulta_e(Nomes) :- findall(Nome, filme(Nome, _, _, _), Nomes).

% f) Quais os filmes, com seus respectivos gêneros e anos de estreia, que são protagonizados exatamente por dois atores?
consulta_f(Nome, Genero, Ano) :- filme(Nome, Genero, Ano, Atores), length(Atores, 2).