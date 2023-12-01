%Trabalho realizdo por Cauê Mendonça e Gabriela Marculino

% Predicado imprimeLista que recebe uma lista como argumento
imprimeLista([]). % Caso base: se a lista está vazia, não faz nada
imprimeLista([Head|Tail]) :- % Caso recursivo: divide a lista em cabeça e cauda
    format('~w~n', [Head]), % Imprime a cabeça da lista
    imprimeLista(Tail). % Chama recursivamente com a cauda da lista