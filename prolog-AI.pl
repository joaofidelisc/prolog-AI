maior(X,Y) :- X > Y, !.
problema(preparador_fisico):- preparo_fisico(ruim).
problema(equipe_tecnica):- atritos(constantes), situacao_psicologica(ruim).
problema(time):- preparo_fisico(bom), situacao_de_gols(ruim).
problema(insatisfacao_financeira):- atritos(constantes), salarios(atrasado).
atritos(constantes):- jogador(X), tecnico(Y), discute(X,Y).
atritos(constantes):- jogador(X), jogador(Y), discute(X,Y).
situacao_psicologica(ruim):- jogador(X), suspenso(X).
situacao_psicologica(ruim):- jogador(X), cortado(X).
situacao_de_gols(ruim):- gols_sofridos(X), gols_feitos(Y), maior(X,Y).
suspenso(X):- cartao_vermelho(X).
preparo_fisico(ruim):- jogador(X),lento(X).
preparo_fisico(ruim):- jogador(X),lesao(X).
preparo_fisico(bom) :- not(preparo_fisico(ruim)).

%Situacao inicial definida
jogador(lucas).
lento(lucas).
jogador(_X).
cartao_vermelho(_X).
jogador(_Y).
discute(_X, _Y).
gols_sofridos(3).
gols_feitos(5).


/*
%Situacao 1 definida - output - X = preparador_fisico.
jogador(joao).
lento(joao).
cartao_vermelho(nao_existe).
gols_sofridos(0).
gols_feitos(0).
tecnico(zeus).
*/

/*
%Situacao 2 definida - output - X = equipe_tecnica.
jogador(sara).
lento(ninguem).
lesao(ninguem).
cartao_vermelho(sara).
tecnico(zeus).
discute(sara,zeus).
*/

/*
%Situacao 3 definida - output - X = time.
jogador(joao).
lento(naoLento).
lesao(semLesao).
gols_sofridos(3).
gols_feitos(2).
tecnico(zeus).
discute(ninguem, ninguem).
cartao_vermelho(naoExiste).
salarios(normal).
cortado(naoTem).
*/

/*
%Situacao 4 definida - output - X = insatisfacao_financeira.
jogador(sara).
tecnico(zeus).
discute(sara, zeus).
salarios(atrasado).

lento(ninguemLento).
cartao_vermelho(semCartaoVermelho).
gols_sofridos(0).
gols_feitos(0).
lesao(ninguemLesionado).
cortado(ninguemCortado).
*/


