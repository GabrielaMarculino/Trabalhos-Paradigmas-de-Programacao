%Trabalho realizdo por Cauê Mendonça e Gabriela Marculino

% Fatos
homem(jose).
homem(claudio).
homem(mario).
mulher(laura).
mulher(joana).
pai_mae(jose, claudio).
pai_mae(jose, mario).
pai_mae(claudio, joana).
pai_mae(laura, joana).
pai_mae(mario, carolina).

% Regras
pai(X, Y) :- pai_mae(X, Y), homem(X).
mae(X, Y) :- pai_mae(X, Y), mulher(X).
filho(Y, X) :- pai_mae(X, Y), homem(Y).
filha(Y, X) :- pai_mae(X, Y), mulher(Y).

% Consultas
% Para encontrar o pai de alguém: pai(Pai, Filho).
% Para encontrar a mãe de alguém: mae(Mae, Filho).
% Para verificar se alguém é filho de alguém: filho(Filho, Pai).
% Para verificar se alguém é filha de alguém: filha(Filha, Pai).