%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% PROLOG: Declaracoes iniciais


%Definicoes iniciais
:- op(900,xfy,'::').
:- discontiguous (::)/2. %Clausulas do operador (::)/2 podem não estar contiguas
:- dynamic '-'/1.
:- discontiguous '-'/1. %Clausulas do operador (::)/2 podem não estar contiguas
:- dynamic utente/10.
:- dynamic centro_saude/5.
:- dynamic staff/4.
:- dynamic vacinacaoCovid/5.
:- dynamic contatoFrequente/2.

%_______________________________________________________________________________________________________________________________________

							% BASE DE CONHECIMENTO
%_______________________________________________________________________________________________________________________________________

%----------------------------------------------------------------------------------------------------------------------------------------
% utente(Nº Utente, Nº Segurança Social, Nome, Data de Nascimento, Email, Telefone, Morada, Profissão, [Doenças_Crónicas], #centroSaúde)
%----------------------------------------------------------------------------------------------------------------------------------------
utente(1,1 , 'Jacarias',data(13,04,2000) , 'jacarias@gmail.com', 780100300, 'Rua do Moinho','Empreiteiro', ['Asma'], 1).
utente(2,2 , 'Maria',data(1,12,1992) , 'maria@gmail.com', 420100300, 'Rua das Duas Igrejas','Medica', ['Bronquite'], 2).
utente(3,3,'Paulo',data(20,05,1985),'paulo@gmail.com',966123456,'Rua do fim','Pintor',[],3).
utente(4,4,'Clara',data(3,01,2004),'clara@gmail.com',123456789,'Rua do inicio','Estudante',[],4).
utente(5,5,'Agostinho',data(16,07,1982),'agostinho@gmail.com',111111111,'Rua da Uva','Desempregado',['Asma','Bronquite'],5).
utente(6,6,'Fred',data(19,09,1991),'fred@gmail.com',222222222,'Rua dos Frangos','Engenheiro',[],6).
utente(7,7,'Carlos',data(23,10,1943),'carlos@gmail.com',333333333,'Travessa do Emigrante','Reformado',['Insuficiencia Renal'],4).
utente(8,8,'Jose',data(6,6,1930),'jose@gmail.com',444444444,'Travessa do Emigrante','Reformado',['Alzheimer'],4).
utente(9,9,'Josefa',data(10,11,1949),'josefa@gmail.com',555555555,'Lugar do Travesso','Reformado',[],7).
utente(10,10,'Alexandre',data(5,5,1995),'alex@gmail.com',666666666,'Rua dos Encalhados','Engenheiro',[],8).
utente(11,11,'Diana',data(13,03,2002),'diana@gmail.com',777777777,'Lugar dos cabaneiros','Estudante',[],8).
utente(12,12,'Ines',data(13,11,1999),'ines@gmail.com',888888888,'Rua do Cansado','Estudante',[],7).
utente(13,13,'Afonso',data(6,6,2006),'afonso@gmail.com',999999999,'Lugar da Lapa','Estudante',[],4).
utente(14,14,'Irineu',data(9,9,1970),'irineu@gmail.com',101010101,'Rua do Saber','Bibliotecario',[],6).
utente(15,15,'Marcelo',data(2,12,1998),'marcelo@gmail.com',929292929,'Praça da Sabedoria','Estudante',[],1).
utente(16,16,'Leonardo',data(5,12,2000),'leonardo@gmail.com',929292928,'Praça da Sabedoria','Estudante',[],1).

dataUtente(Id,D):-utente(Id,_,_,D,_,_,_,_,_,_).
doencasUtente(Id,D):-utente(Id,_,_,_,_,_,_,_,D,_).
profissaoUtente(Id,P):-utente(Id,_,_,_,_,_,_,P,_,_).
% ---------------------------------------------------------------------------------------------------------------------------------------
% centro_saúde(Idcentro, Nome, Morada, Telefone, Email)
% ---------------------------------------------------------------------------------------------------------------------------------------
centro_saude(1, 'Centro Freamunde', 'Rua das Couves', 100300400, 'centrofreamunde@gmail.com').
centro_saude(2, 'Centro Gaia', 'Rua do Hospital', 100300401, 'centrogaia@gmail.com').
centro_saude(3, 'Centro Maia', 'Rua de Maio', 100300402, 'centromaia@gmail.com').
centro_saude(4, 'Hospital de Braga', 'Rua da Universidade', 100300403, 'hospitalbraga@gmail.com').
centro_saude(5, 'Centro Vizela', 'Rua das Vuvuzelas', 100300404, 'centrovizela@gmail.com').
centro_saude(6, 'Hospital de Guimaraes', 'Rua dos Conquistadores', 100300405, 'hospitalguimaraes@gmail.com').
centro_saude(7, 'Hospital do Porto', 'Rua das Tripas', 100300406, 'hospitalporto@gmail.com').
centro_saude(8, 'Centro Barcelos', 'Rua dos Galos', 100300407, 'centrobarcelos@gmail.com').
centro_saude(9, 'Posto de Saúde de Dume', 'Rua da Dor', 987654321, 'saudedume@gmail.com').

% ---------------------------------------------------------------------------------------------------------------------------------------
% staff (Idstaff, #Idcentro, Nome, email)
% ---------------------------------------------------------------------------------------------------------------------------------------
staff(1,1,'Manuela Figueiredo','manuelaf@gmail.com').
staff(2,2,'Alberto Dias','berto@gmail.com').
staff(3,3,'Cecilia Rego','cila@gmail.com').
staff(4,4,'Ernesto Honesto','nestinho@gmail.com').
staff(5,5,'Margarida Flor','magui@gmail.com').
staff(6,6,'Simplicio Sousa','simples@gmail.com').
staff(7,7,'Carla Carlos','carla@gmail.com').
staff(8,1,'Manuel Pessegueiro','manelp@gmail.com').


% ---------------------------------------------------------------------------------------------------------------------------------------
% vacinação_Covid (Staff, Utente, Data, Vacina, Toma)
% ---------------------------------------------------------------------------------------------------------------------------------------
vacinacaoCovid(1,1, data(20,3,2021), 'Astrazeneca', 1).
vacinacaoCovid(2,1, data(20,4,2021), 'Astrazeneca', 2).
vacinacaoCovid(3,2, data(20,3,2021), 'Pfizer', 1).
vacinacaoCovid(4,2, data(20,4,2021), 'Pfizer', 2).
vacinacaoCovid(5,4, data(21,3,2021), 'Astrazeneca', 1).
vacinacaoCovid(6,3, data(18,3,2021), 'Astrazeneca', 1).
vacinacaoCovid(7,3, data(18,5,2021), 'Astrazeneca', 2).
vacinacaoCovid(7,5, data(21,3,2021), 'Sputnik', 1).
vacinacaoCovid(2,5, data(21,4,2021), 'Sputnik', 2).
vacinacaoCovid(2,6, data(21,3,2021), 'Pfizer', 1).
vacinacaoCovid(4,6, data(21,4,2021), 'Pfizer', 2).
vacinacaoCovid(8,15, data(21,4,2021), 'Pfizer', 1).
vacinacaoCovid(8,15, data(30,4,2021), 'Pfizer', 2).
vacinacaoCovid(8,16, data(21,4,2021), 'Pfizer', 2).

-vacinacaoCovid(Staff, Utente, Data, Vacina, Toma) :- nao(vacinacaoCovid(Staff, Utente, Data, Vacina, Toma)).

% ---------------------------------------------------------------------------------------------------------------------------------------
%Factos para ajudar a definir fases de vacinação.
% ---------------------------------------------------------------------------------------------------------------------------------------

% profissionalSaúde (Profissão)
profissionalSaude('Médico').
profissionalSaude('Médico').
profissionalSaude('Enfermeiro').
profissionalSaude('Enfermeira').
profissionalSaude('Assistente Saúde').
% profissionalSegurança (Profissão)
profissionalSeguranca('Policia').
profissionalSeguranca('Militar').



%_______________________________________________________________________________________________________________________________________

							% Funcionalidades
%_______________________________________________________________________________________________________________________________________



% ---------------------------------------------------------------------------------------------------------------------------------------
% fase_vacinacao (ID_Utente, Data de Inicio da Fase)
% ---------------------------------------------------------------------------------------------------------------------------------------
%Profissionais de saude e de segurança são vacinados a partir de dezembro
fase_vacinacao(Id,data(10,12,2020)):- profissaoUtente(Id,Prof), profissionalSaude(Prof).
fase_vacinacao(Id,data(10,12,2020)):- profissaoUtente(Id,Prof), profissionalSeguranca(Prof).
%Pessoas com mais de 70 anos, ou 50 anos com pelo menos uma doença de risco começam a partir de fevereiro
fase_vacinacao(Id,data(1,2,2021)):- dataUtente(Id,data(_,_,Ano)), Ano=<1950.
fase_vacinacao(Id,data(1,2,2021)):- doencasUtente(Id,Doencas),dataUtente(Id,data(_,_,Ano)), 
			intersetam(Doencas,['Asma','Bronquite','Insuficiencia cardiaca','Doenca coronaria','Insuficiencia renal']),Ano=<1970.
%Bombeiros, Professores e pessoas com mais de 50 anos começam a ser vacinados em abril 
fase_vacinacao(Id,data(1,4,2021)):- profissaoUtente(Id,Prof), pertence(Prof,['Bombeiro','Bombeira','Professor','Professora']).
fase_vacinacao(Id,data(1,4,2021)):- dataUtente(Id,data(_,_,Ano)), Ano=<1970.
%Crianças ate aos 10 anos e Pessoas acima dos 30 começam a partir de junho.
fase_vacinacao(Id,data(1,6,2021)):- dataUtente(Id,data(_,_,Ano)),Ano=<1990.
fase_vacinacao(Id,data(1,6,2021)):- dataUtente(Id,data(_,_,Ano)),Ano>=2010.



% ---------------------------------------------------------------------------------------------------------------------------------------
% Falta segunda toma ([ID Utentes])
% ---------------------------------------------------------------------------------------------------------------------------------------

tomaInc(IdU):- vacinacaoCovid(_,IdU,_,_,1), -vacinacaoCovid(_,IdU,_,_,2).

falta2toma(Res):- solucoes(IdU,tomaInc(IdU),Res).


% ---------------------------------------------------------------------------------------------------------------------------------------
%  Pessoas nao vacinadas ([ID Utentes])
% ---------------------------------------------------------------------------------------------------------------------------------------
utente_naoVacinado(X):-utente(X,_,_,_,_,_,_,_,_,_),-vacinacaoCovid(_,_,_,_,_).

naoVacinados(R):-solucoes(X,utente_naoVacinado(X),R).

% ---------------------------------------------------------------------------------------------------------------------------------------
%  Candidatos Vacinacao ([ID Utentes])
% ---------------------------------------------------------------------------------------------------------------------------------------

candidatosVacinacao(R):-naoVacinados(N),candidatosVacinacaoAux(N,R).

candidatosVacinacaoAux([],[]).
candidatosVacinacaoAux([H|T],[H|RES]):-	fase_vacinacao(H,_),
										candidatosVacinacaoAux(T,RES).
candidatosVacinacaoAux([_|T],N):-candidatosVacinacaoAux(T,N).

% ---------------------------------------------------------------------------------------------------------------------------------------
%  Vacinados ([ID Utentes])
% ---------------------------------------------------------------------------------------------------------------------------------------
%Receberam a primeira dose
vacinados1Toma(R):-solucoes(X,vacinacaoCovid(_,X,_,_,1),R).

% Receberam todas as doses e estão vacinados
vacinados(R):-solucoes(X,vacinacaoCovid(_,X,_,_,2),R).

% ---------------------------------------------------------------------------------------------------------------------------------------
%  Indevidamente Vacinados ([ID Utentes])
% ---------------------------------------------------------------------------------------------------------------------------------------

indevidamente_vacinados_aux([],[]).
indevidamente_vacinados_aux([(ID,Data)|T],[ID|Resultado]):- indevidamente_vacinado(ID,Data),
															indevidamente_vacinados_aux(T,Resultado).
indevidamente_vacinados_aux([_|T],R):-	indevidamente_vacinados_aux(T,R).

indevidamente_vacinados(R):- solucoes((X,Data),vacinacaoCovid(_,X,Data,_,1),Lista),
							 indevidamente_vacinados_aux(Lista,R).

% -------------------------------------------------------------------------------------------------------------------------------
%  Indevidamente Vacinado (Id Utente, Data da vacina)
% -------------------------------------------------------------------------------------------------------------------------------
indevidamente_vacinado_aux([],_).
indevidamente_vacinado_aux([H|_],D):- dataAnterior(D,H).
indevidamente_vacinado_aux(_,_):- fail.

%Uma vacinação indevida implica que a data de vacinação (D), aconteça antes das fases a que está aceite
indevidamente_vacinado(Id,DataVacina):-	solucoes(Datafase,fase_vacinacao(Id,Datafase),Lista),
										indevidamente_vacinado_aux(Lista,DataVacina).

% ---------------------------------------------------------------------------------------------------------------------------------------
% Evoluição da base de conhecimento
% ---------------------------------------------------------------------------------------------------------------------------------------
evolucao(Termo):-
    solucoes(Invariante, +Termo::Invariante, Lista),
    insercao(Termo),
    teste(Lista).

insercao(Termo) :-
    assert(Termo).
insercao(Termo) :-
    retract(Termo),!,fail.

%Invariante estrutural: Nao permitir a insercao de conhecimento repetido
+utente(Id, NSS,Nome,D,E,T,M,P,Doencas,CentroS) ::
	        (solucoes( (Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS), (utente(Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS)), S),
            comprimento(S,N),
            N==1).

%Invariante estrutural:nao permitir a insercao de conhecimento repetido
+centro_saude(Id,Nome,Morada,Tel,Email) ::
	        (solucoes( (Id,Nome,Morada,Tel,Email), (centro_saude(Id,Nome,Morada,Tel,Email)), S),
            comprimento(S,N),
            N==1).

%Invariante estrutural:nao permitir a insercao de conhecimento repetido
+staff(Id, Centro,Nome,Email) ::
	        (solucoes( (Id,Centro,Nome,Email), (staff(Id,Centro,Nome,Email)), S),
            comprimento(S,N),
            N==1).

%Invariante : O centro de saúde da staff existe.
+staff(_, Centro,Nome,Email) ::
			(solucoes( (Centro,Nome,Morada,Tel,Email), (centro_saude(Centro,Nome,Morada,Tel,Email)), S),
			comprimento(S,N),
			N>0).


%Invariante : Não pode ter tomada a mesma fase da vacina mais que uma vez
+vacinacaoCovid(S, U, D, V, T) ::
			(solucoes((S,U,D,V,T), vacinacaoCovid(S,U,D,V,T) , L),
            comprimento(L,N), N==1).


%Invariante : So pode ter tomado a 2 dose se tomou a primeira
+vacinacaoCovid(S,U,D,V,2)::
            (solucoes((S,U,D,V), vacinacaoCovid(S,U,D,V,'1'), Primeiros),
            comprimento(Primeiros,N),
			N==1).

%Invariante : A vacina da segunda toma tem de ser o mesmo modelo
+vacinacaoCovid(S, U, D, V, 2) ::
			(solucoes((S,U,D,V,1), vacinacaoCovid(S,U,D,V,_) , L),
            nth0(0,L,(_,_,_,C,_)),C==V).

%Invariante : A toma da vacina so pode ser 1 ou 2
+vacinacaoCovid(_,_,_,_,T)::(T>0,T<3).

%Invariante : O trabalhador que administrou a vacina tem de estar registado
+vacinacaoCovid(Staff,_,_,_,_)::
			(solucoes( (Staff,Centro,Nome,Email), (staff(Staff,Centro,Nome,Email)), L),
			comprimento(L,N),
			N>0).

%Invariante : O Utente que rebeu a vacina tem de estar registado
+vacinacaoCovid(_,Ut,_,_,T)::
			(solucoes( (Ut,NSS,Nome,D,E,T,M,P,Doencas,CentroS), (utente(Ut,NSS,Nome,D,E,T,M,P,Doencas,CentroS)), _),
			comprimento(_,N),
			N>0).


% ---------------------------------------------------------------------------------------------------------------------------------------
% Involuição da base de conhecimento
% ---------------------------------------------------------------------------------------------------------------------------------------
involucao(Termo) :-
	solucoes(Invariante,-Termo::Invariante,Lista),
	remocao(Termo),
	teste(Lista).

remocao(Termo) :- retract(Termo).
remocao(Termo) :-
		assert(Termo),!,fail.

%permite remover se existir na base de conhecimento:
-utente(Id, NSS,Nome,D,E,T,M,P,Doencas,CentroS) ::
	        (solucoes( (Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS), (utente(Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS)), S),
			comprimento(S,N),
            N==0).

%permite remover se existir na base de conhecimento:
-centro_saude(Id,Nome,Morada,Tel,Email) ::
	        (solucoes( (Id,Nome,Morada,Tel,Email),(centro_saude(Id,Nome,Morada,Tel,Email)), S),
            comprimento(S,N),
            N==0).

%permite remover se existir na base de conhecimento:
-staff(Id, Centro,Nome,Email) ::
	        (solucoes( (Id,Centro,Nome,Email), (staff(Id,Centro,Nome,Email)), S),
            comprimento(S,N),
            N==0).

%permite remover se existir na base de conhecimento:
-vacinacaoCovid(S, U, D, V, T) ::
			(solucoes((S,U,D,V,T), vacinacaoCovid(S,U,D,V,T) , L),
            comprimento(L,N),
			N==0).

%Não permite remover utentes com registos de vacinação
-utente(Id,_,_,_,_,_,_,_,_,_) ::(nao( vacinacaoCovid(_,Id,_,_,_))).

%Não permite remover a primeira toma vacina se a segunda esteja na base de conhecimento
-vacinacaoCovid(_, _, _, _, 1) :: (nao( vacinacaoCovid(_,_,_,_,2))).

%Não permite remover um centro de saúde se existir staff associada
-centro_saude(Id,_,_,_,_) ::
	        (solucoes((Staff,Id,Nome,Email), (staff(Staff,Id,Nome,Email)), S),
            comprimento(S,N),
            N==0).

%nota: Permite remover staff sem remover as vacinas administradas por estes.

% ---------------------------------------------------------------------------------------------------------------------------------------
% Data : Dia, Mês, Ano --> {V,F}
% ---------------------------------------------------------------------------------------------------------------------------------------

data(D, M, A) :-
	A >= 0,
    pertence(M, [1,3,5,7,8,10,12]),
	D >= 1,
	D =< 31.
data(D, M, A) :-
	A >= 0,
    pertence(M, [4,6,9,11]),
	D >= 1,
	D =< 30.
data(D, 2, A) :-
	A >= 0,
    A mod 4 =\= 0,
	D >= 1,
	D =< 28.
data(D, 2, A) :-
    A >= 0,
	A mod 4 =:= 0,
	D >= 1,
	D =< 29.
data(data(D, M, A)) :- data(D, M, A).

%Extensão do predicado dataAnterior: DataAnterior , DataSeguinte --> {V,F}

dataAnterior(data(_,_,A),data(_,_,Ano)):- A < Ano.
dataAnterior(data(_,M,A),data(_,Mes,Ano)):- A == Ano, M < Mes.
dataAnterior(data(D,M,A),data(Dia,Mes,Ano)):- A == Ano, M == Mes, D < Dia.

% ---------------------------------------------------------------------------------------------------------------------------------------
% Predicados sobre Listas
% ---------------------------------------------------------------------------------------------------------------------------------------

%Extensao do meta predicado teste: lista -->{V,F}
teste([]).
teste([R|LR]) :-
		R, teste(LR).

%Extensao do predicado comprimento: lista , Comprimento --> {V,F}
comprimento([],0).
comprimento([_|T],N):-comprimento(T,R), N is R+1.

%Extensao do predicado contem: Lista, Sublista -->{V,F}
contem(_,[]).
contem([],_):- fail.
contem(L,[H|T]) :- pertence(H,L), contem(L,T).


%Extensao do predicado contem: Lista, Lista -->{V,F}
intersetam([],_) :- fail.
intersetam(_,[]) :- fail.
intersetam(L,[H|_]):- pertence(H,L),!.
intersetam(L,[_|T]) :- intersetam(L,T).


intersecao([], _, []).
intersecao([H|T1], L2, [H|T3]) :- pertence(H, L2), !, intersecao(T1, L2, T3).
intersecao([_|T1], L2, L3) :- intersecao(T1, L2, L3).

%Extensao do predicado pertence: Elemento, lista --> {V,F}
pertence(X,[X|_]).
pertence(X,[_|L]):- pertence(X,L).

-pertence(X,R) :- nao(pertence(X,R)).

%Extensao do predicado apagaElemento: Elemento, lista, resultado --> {V,F}

apagaElemento(_,[],[]).
apagaElemento(X,[X|Y],L):- apagaElemento(X,Y,L).
apagaElemento(X,[H|T],[H|R]):- X \= H, apagaElemento(X,T,R).


%Extensao do predicado apagaRepetido: Lista, resultado --> {V,F}
apagaRepetido([],[]).
apagaRepetido([H|T],[H|Y]):-apagaElemento(H,T,NL), apagaRepetido(NL,Y).

%---------------------------------------------------------------------------------

% Extensao do meta-predicado si: Questao,Resposta -> {V,F}

si( Questao,verdadeiro ) :-
    Questao.
si( Questao,falso ) :-
    -Questao.
si( Questao,desconhecido ) :-
    nao( Questao ),
    nao( -Questao ).


% Extensao do meta-predicado nao: Questao -> {V,F}
nao( Questao ) :-
    Questao, !, fail.
nao(_).

solucoes(F,Q,S) :- findall(F,Q,S).


%---------------------------------------------------------------------------------
% Identificar utentes por critérios de seleção
%---------------------------------------------------------------------------------
listaIDUtente([],[]).
listaIDUtente([HID|TID],[UTS|T]) :-	solucoes(utente(HID,NSS,N,DN,E,T,M,P,DC,CS),utente(HID,NSS,N,DN,E,T,M,P,DC,CS),[UTS]),
									listaIDUtente(TID,T).
utentePorId(IdU,R) :- solucoes((IdU,NSS,N,DN,E,T,M,P,DC,CS),utente(IdU,NSS,N,DN,E,T,M,P,DC,CS),R).

utentePorNome(N,R) :- solucoes((IdU,NSS,N,DN,E,T,M,P,DC,CS),utente(IdU,NSS,N,DN,E,T,M,P,DC,CS),R).

utentePorDataNasc(D,M,A,R) :- solucoes((Id,NSS,N,data(D,M,A),E,T,P,DC,CS),utente(Id,NSS,N,data(D,M,A),E,T,_,P,DC,CS),R).

utentePorProf(P,R):- solucoes((IdU,N,P),utente(IdU,_,N,_,_,_,_,P,_,_),R).

%---------------------------------------------------------------------------------
% Identificar os centros de saude
%---------------------------------------------------------------------------------
todosCentrosSaude(R) :- solucoes(I,centro_saude(_,I,_,_,_),L),
			apagaRepetido(L,R).


centroSaudePorId(IdC,R):- solucoes((IdC,X,Y,Z,W),centro_saude(IdC,X,Y,Z,W),R).

centroSaudePorNome(N,R):- solucoes((X,N,Y,Z,W),centro_saude(X,N,Y,Z,W),R).

centroSaudePorTelemovel(C,R):- solucoes((X,Y,Z,C,W),centro_saude(X,Y,Z,C,W),R).


%________________________________________________________________________________________________________________________________________

							% Funcionalidades Extra
%________________________________________________________________________________________________________________________________________

%----------------------------------------------------------------------------------------------------------------------------------------
% contactoFrequente : #Utente, #Utente --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
contatoFrequente(1,2).
contatoFrequente(1,11).
contatoFrequente(2,3).
contatoFrequente(1,5).

%Invariante estrutural : Impedir conhecimento repetido
+contatoFrequente(UT1,UT2) ::
			(solucoes( (UT1,UT2), contatoFrequente(UT1,UT2), S),
			comprimento(S,N),
            N==1).

%Permite remover se existir na base de conhecimento:
-contatoFrequente(UT1,UT2) ::
			(solucoes( (UT1,UT2), contatoFrequente(UT1,UT2), S),
			comprimento(S,N),
            N==0).

%----------------------------------------------------------------------------------------------------------------------------------------
% contatosFrequentes : #Utente, [#Utente] --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
contatosFrequentes(X,R):-solucoes(Y,contatoFrequente(X,Y),R).

%----------------------------------------------------------------------------------------------------------------------------------------
%  estaProtegido : #Utente --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
estaProtegidoAux([]).
estaProtegidoAux([H|T]):-vacinacaoCovid(_,H,_,_,'2'),estaProtegidoAux(T).

estaProtegido(Id):-contatosFrequentes(Id,R),
    estaProtegidoAux(R).


%----------------------------------------------------------------------------------------------------------------------------------------
%  estaProtegido : #Centro, [#Staff] --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
staffDoCentro(IdCentro,Resultado):-solucoes(Y,staff(_,IdCentro,Y,_),Resultado).

%----------------------------------------------------------------------------------------------------------------------------------------
%  estaProtegido : #Centro, Numero --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
nstaffDoCentro(IdCentro,Resultado):-staffDoCentro(IdCentro,Lista),comprimento(Lista,Resultado).

%---------------------------------------------------------------------------------
%
% Identificar vacinações por centro de saude
%
%---------------------------------------------------------------------------------
vacina_aux(IdC,IdS,IdU,D,V,T,NCS,NU):-
					vacinacaoCovid(IdS,IdU,D,V,T), 
					staff(IdS,IdC,_,_),
					centro_saude(IdC,NCS,_,_,_),
					utente(IdU,_,NU,_,_,_,_,_,_,_).	

vacina2_aux(IdC,IdS,IdU,D,V,T,NCS,NU):-
					vacinacaoCovid(IdS,IdU,D,V,T), 
					staff(IdS,IdC,_,_),
					centro_saude(IdC,NCS,_,_,_),
					utente(IdU,_,NU,_,_,_,_,_,_,IdC).	

centrosSaudeComVacinas(R):- solucoes((NCS),vacina_aux(_,_,_,_,_,_,NCS,_),Y), apagaRepetido(Y,R).

%centrosSaudeSemVacinas_aux([],_,[]).
%centrosSaudeSemVacinas_aux([H,T1],L,[H|T2]) :- -pertence(H,L), centrosSaudeSemVacinas_aux(T1,L,T2).
%centrosSaudeSemVacinas_aux([H,T1],L,T2) :- centrosSaudeSemVacinas_aux(T1,L,T2).

%centrosSaudeSemVacinas(R) :- solucoes(NCS,centro_saude(NCS,_,_,_,_),L) ,,centrosSaudeSemVacinas_aux(L,Vac,R).
					

vacinacoesPorCentroSaude(NCS,R):- solucoes((NU,D,V,T),vacina_aux(_,_,_,D,V,T,NCS,NU),R).

utentesVacNoSeuCs(R):-solucoes((NCS),vacina2_aux(_,_,_,_,_,_,NCS,_),Y), apagaRepetido(Y,R).


%---------------------------------------------------------------------------------
%
% Identificar os utentes vacinados por um proficional (staff) num centrodesaude
%
%---------------------------------------------------------------------------------

utentes_aux(IdC,IdS,IdU,NCS,NU,NS):-vacinacaoCovid(IdS,IdU,_,_,_),
									staff(IdS,IdC,NS,_),
									centro_saude(IdC,NCS,_,_,_),
									utente(IdU,_,NU,_,_,_,_,_,_,_).

utentesStaff(NS,R):- solucoes(NU,utentes_aux(_,_,_,_,NU,NS),Y),
							apagaRepetido(Y,R).

utentesStaffID(IdS,R):- solucoes(NU,utentes_aux(_,IdS,_,_,NU,_),Y),
							apagaRepetido(Y,R).

utentesCentroSaude(NCS,R):- solucoes(NU,utentes_aux(_,_,_,NCS,NU,_),Y),
							apagaRepetido(Y,R).

utentesCentroSaudeID(IdC,R):- solucoes(NU,utentes_aux(IdC,_,_,_,NU,_),Y),
							apagaRepetido(Y,R).

%---------------------------------------------------------------------------------
%
% Quantidade de vacinas
%
%---------------------------------------------------------------------------------
vac_aux(V,IdS,NS,IdC,NCS):-vacinacaoCovid(IdS,_,_,V,_),
			staff(IdS,IdC,NS,_),
			centro_saude(IdC,NCS,_,_,_).

quantidadeVac(V,R):- solucoes(V,vacinacaoCovid(_,_,_,V,_),L),
						comprimento(L,R).

quantidadeStaff(NS,R):- solucoes(NS,vac_aux(_,_,NS,_,_),L),
						comprimento(L,R).

quantidadeStaffID(IdS,R):- solucoes(IdS,vac_aux(_,IdS,_,_,_),L),
						comprimento(L,R).

quantidadeCentro(NC,R):- solucoes(NC,vac_aux(_,_,_,_,NC),L),
						comprimento(L,R).

quantidadeCentroID(IdC,R):- solucoes(IdC,vac_aux(_,_,_,IdC,_),L),
						comprimento(L,R).


%Utentes de um centro
%----------------------------------------------------------------------------------------------------------------------------------------
%  utentesCentro : Centro, [#Utente]  --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
utentesCentro(C, R) :- solucoes(ID, utente(ID,_,_,_,_,_,_,_,_,C),R).

%----------------------------------------------------------------------------------------------------------------------------------------
%  utentesLocalidade : Localidade, [#Utente]  --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
utentesLocalidade(L,R):- solucoes(HID, utente(HID,_,_,_,_,_,L,_,_,_),R).

%----------------------------------------------------------------------------------------------------------------------------------------
%  contactosUtente : #Utente,   --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
contactosUtente(IdU,R) :- solucoes((IdU,Email,Tlm), utente(_,_,_,_,Email,Tlm,_,_,_,_),R).

%----------------------------------------------------------------------------------------------------------------------------------------
%  totalVacinas : Numero  --> {V,F}
%----------------------------------------------------------------------------------------------------------------------------------------
totalVacinas(R):- solucoes(V,vacinacaoCovid(_,_,_,V,_),L), comprimento(L,R).

