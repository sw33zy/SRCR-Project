%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% PROLOG: Declaracoes iniciais
:-style_check(-discontiguous).
:-style_check(-singleton).

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
:- dynamic excecao/1.

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

%-vacinacaoCovid(Staff, Utente, Data, Vacina, Toma) :- nao(vacinacaoCovid(Staff, Utente, Data, Vacina, Toma)).

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

%_________________________________________________________________________________

% Conhecimento negativo
%_________________________________________________________________________________

-utente(Nu,Niss,N,Dn,E,T,M,P,Doencas,Idc):-
    nao(utente(Nu,Niss,N,Dn,E,T,M,P,Doencas,Idc)),
    nao(excecao(utente(Nu,Niss,N,Dn,E,T,M,P,Doencas,Idc))).

-utente(21,21,'Bernardo Portugal', data(12,10,2000), 'lordbjp9@gmail.com', 935234367, 'Braga', 'Estudante', ['Défice de atenção'], 1). 

-centro_saude(Idc,N,M,T,E):-
    nao(centro_saude(Idc,N,M,T,E)),
    nao(excecao(centro_saude(Idc,N,M,T,E))).

-centro_saude(11, 'hospital lusiadas','rua abilio mendes', 217704040, 'h-lusiadas@gmail.com').

-staff(Ids,Idc,N,E):-
    nao(staff(Ids,Idc,N,E)),
    nao(excecao(staff(Ids,Idc,N,E))).

-staff(10,1,'Kenzo Tenma','kenzoT@gmail.com').    

-vacinacaoCovid(Ids,Idu,D,V,T):-
    nao(vacinacaoCovid(Ids,Idu,D,V,T)),
    nao(excecao(vacinacaoCovid(Ids,Idu,D,V,T))).

-vacinacaoCovid(8,21,data(24,04,2021),'Moderna',1).    

%_________________________________________________________________________________

% Conhecimento imperfeito
%_________________________________________________________________________________

%---------------------------------------------------------------------------------
% Conhecimento imperfeito INCERTO (valor nulo tipo 1)
%---------------------------------------------------------------------------------

% Id do centro de saúde desconhecido
centro_saude(idc_desc, 'Hospital de Vila Verde', 'Av. Dr. Bernardo Brito Ferreira', 253310120, 'hospitalVV@saude.pt').
excecao(centro_saude(Idc,N,M,T,E)):-
    centro_saude(idc_desc,N,M,T,E).

% Designação do centro de saúde desconhecido
centro_saude(20, n_desc, 'Rua do Taxa', 252526122, 'centroinfias@gov.pt').
excecao(centro_saude(Idc,N,M,T,E)):-
    centro_saude(Idc,n_desc,M,T,E).

% Morada do centro de saúde desconhecido
centro_saude(21, 'Hospital de Coimbra', m_desc, 251426540, 'casec@chuc.min-saude.pt').
excecao(centro_saude(Idc,N,M,T,E)):-
    centro_saude(Idc,N,m_desc,T,E).

% Contacto do centro de saúde desconhecido
centro_saude(22, 'Hospital de Faro', 'Rua Leão Penedo', c_desc, 'chuf@faro.min-saude.pt').
excecao(centro_saude(Idc,N,M,T,E)):-
    centro_saude(Idc,N,M,c_desc,E). 

% E-mail do centro de saúde desconhecido
centro_saude(23, 'Centro de saúde de Amares', 'Rua 25 de Abril', 253909230, e_desc).
excecao(centro_saude(Idc,N,M,T,E)):-
    centro_saude(Idc,N,M,T,e_desc). 

%---------------------------------------------------------------------------------             

% Id do utente desconhecido

utente(idu_desc,30,'Pedro Mota', data(21,06,1965), 'p_Mota65@gmail.com', 962737383, 'Faro', 'Padeiro', ['Diabetes'], 7). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(idu_desc,Niss,N,Dn,E,T,M,P,Doencas,Idc).    

% NISS do utente desconhecido
utente(31,niss_desc,'Gabriela Gomes', data(01,08,1999), 'gabiGG@hotmail.com', 923456789, 'Porto', 'Estudante', [], 2). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,niss_desc,N,Dn,E,T,M,P,Doencas,Idc).  

% Nome do utente desconhecido
utente(32,32, n_desc, data(12,11,1980), 'gervasio@cafeeafins.com', 976374860, 'Lisboa', 'Gestor de armazém', [], 5). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,Niss,n_desc,Dn,E,T,M,P,Doencas,Idc).  

% Data de nascimento do utente desconhecida
utente(33,33, 'Johan Liebert', d_desc, 'johanLiebert@hotmail.com', 936587938, 'Travessa do Emigrante', 'Estudante', [], 4). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,Niss,N,d_desc,E,T,M,P,Doencas,Idc). 

% Contactos do utente desconhecidos
utente(34,34, 'João Livre', data(03,12,1950), e_desc, c_desc, 'Avenida da Liberdade', 'Reformado', ['Asma', 'Doença Pulmonar'], 1). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,Niss,N,Dn,e_desc, c_desc,M,P,Doencas,Idc). 

% Morada do utente desconhecida
utente(35,35, 'Ana Carvalho', data(21,03,2000), 'anaHCarvalho@gmail.com', 914253745, m_desc, 'Estudante', [], 4). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,Niss,N,Dn,E,T,m_desc,P,Doencas,Idc). 

% Centro de saúde do utente desconhecida
utente(36,36, 'Mariana Peixoto', data(30,07,1996), 'mariana.p.p@gmail.com', 980928221, 'Rua dos Aliados', 'Estudante', [], idc_desc). 
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,Niss,N,DN,E,T,M,P,Doencas,idc_desc).          

%---------------------------------------------------------------------------------

% Id do staff desconhecido
staff(ids_desc, 4, 'Dinis Brito', 'dinisbrito@saudenorte.gov.pt').
excecao(staff(Ids,Idc,N,E)):-
    staff(ids_desc,Idc,N,E).    

% Centro de saúde do staff desconhecido
staff(40, idc_desc, 'Julia Bernardes', 'j_bernardes70@gmail.com').
excecao(staff(Ids,Idc,N,E)):-
    staff(Ids,idc_desc,N,E).   

% Nome do staff desconhecido
staff(41, 1, n_desc, 'anamedina@gmail.com').
excecao(staff(Ids,Idc,N,E)):-
    staff(Ids,Idc,n_desc,E).

% Email do staff desconhecido
staff(42, 6, 'Marco Paulo', e_desc).
excecao(staff(Ids,Idc,N,E)):-
    staff(Ids,Idc,N,e_desc).   

%---------------------------------------------------------------------------------

% Id do staff que administrou a vacina desconhecido
vacinacaoCovid(ids_desc, 7, data(28,04,2021), 'Pfizer', 1).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
    vacinacaoCovid(ids_desc,Idu,D,V,T).

% Id do utente que recebeu a vacina desconhecido
vacinacaoCovid(1, idu_desc, data(20,03,2021), 'Moderna', 1).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
    vacinacaoCovid(Ids,idu_desc,D,V,T).

% Data em que foi administrada a vacina desconhecida
vacinacaoCovid(2, 8, d_desc, 'Astrazeneca', 1).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
    vacinacaoCovid(Ids,Idu,d_desc,V,T).

% Designação da vacina administrada desconhecida
vacinacaoCovid(3, 8, data(08,01,2021), d_desc, 2).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
    vacinacaoCovid(Ids,Idu,D,d_desc,T).

% Toma da vacina administrada desconhecida
vacinacaoCovid(4, 9, data(12,02,2021), 'Pfizer', t_desc).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
    vacinacaoCovid(Ids,Idu,D,V,t_desc).


%---------------------------------------------------------------------------------
% Conhecimento imperfeito IMPRECISO (valor nulo tipo 2)
%---------------------------------------------------------------------------------

% não se sabe se um centro de saude tem ID 50 ou 51
excecao(centro_saude(50, 'Centro Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).
excecao(centro_saude(51, 'Centro Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).

% não se sabe se um centro tem o nome 'Centro de Famalicão' ou 'Posto de Saúde de Famalicão'
excecao(centro_saude(50, 'Centro de Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).
excecao(centro_saude(50,'Posto de Saúde de Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).

% não se sabe se um centro de saude tem morada morada 'Rua da Família' ou 'Rua do Estranho'
excecao(centro_saude(50, 'Centro de Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).
excecao(centro_saude(50, 'Centro de Famalicão', 'Rua do Estranho', 252436383, 'centrofamalicao@gmail.com')).

% não se sabe se um centro de saude tem contacto 253027000 ou 221212121
excecao(centro_saude(50, 'Centro Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).
excecao(centro_saude(50, 'Centro Famalicão', 'Rua da Família', 221212121, 'centrofamalicao@gmail.com')).

% não se sabe se um centro de saude tem e-mail 'centrofamalicao@gmail.com' ou 'centrofamalicao@saude.gov.pt'
excecao(centro_saude(50, 'Centro Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@gmail.com')).
excecao(centro_saude(50, 'Centro Famalicão', 'Rua da Família', 252436383, 'centrofamalicao@saude.gov.pt')).


%---------------------------------------------------------------------------------

% não se sabe se o ID de um utente e 60 ou 61
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(61, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).

% não se sabe se o NISS de um utente e 60 ou 61
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(60, 61, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).

% não se sabe se o nome de um utente e 'Maria Vasconcelos' ou 'Mário Vasconcelos'
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(60, 60, 'Mário Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).

% não se sabe se a data de nascimento um utente é data(03,04,1980) ou data(03,04,1990)
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1990), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).

% não se sabe se o nº de telefone um utente é 936382633 ou 252534645
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 252534645, 'Praça da Alegria', 'Florista', [], 3)).

% não se sabe se a morada um utente é 'Praça da Alegria' ou 'Rua da Alegria'
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Rua da Alegria', 'Florista', [], 3)).

% não se sabe se a profissão um utente é 'Florista' ou 'Chefe'
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)).
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Chefe', [], 3)).

% não se sabe se o ID do centro de saúde um utente é 3,4 ou 5
excecao(utente(60, 60, 'Maria Vasconcelos', data(03,04,1980), ' ', 936382633, 'Praça da Alegria', 'Florista', [], C)):- pertence(C, [3,4,5]).

% não se sabe se a data de nascimento de um utente mas sabe-se que está entre 1980 e 1990
excecao(utente(60, 60, 'Maria Vasconcelos', data(D,M,A), ' ', 936382633, 'Praça da Alegria', 'Florista', [], 3)):- A >= 1980 , A =< 1990.  %>

%---------------------------------------------------------------------------------

% não se sabe se o ID de um staff é 70 ou 71
excecao(staff(70, 4, 'Bruna Magalhães', 'BrunaMagalhãesMedica@saude.pt')).
excecao(staff(71, 4, 'Bruna Magalhães', 'BrunaMagalhãesMedica@saude.pt')).

% não se sabe se o ID do centro de saúde de um staff é 4 ou 5
excecao(staff(70, 4, 'Bruna Magalhães', 'BrunaMagalhãesMedica@saude.pt')).
excecao(staff(70, 5, 'Bruna Magalhães', 'BrunaMagalhãesMedica@saude.pt')).

% não se sabe se o nome de um staff é 4 ou 5
excecao(staff(70, 4, 'Bruna Magalhães', 'BrunaMagalhãesMedica@saude.pt')).
excecao(staff(70, 5, 'Bruna Magalhães', 'BrunaMagalhãesMedica@saude.pt')).

% não se sabe se o e-mail de um staff é 'BrunaMagalhãesMedica@saude.pt', 'BrunaMagalhãesMedica@gov.saude.pt' ou  'BrunaMagalhãesMedica@gov-saude.pt'
excecao(staff(70, 4, 'Bruna Magalhães', E)):- 
			pertence(E, ['BrunaMagalhãesMedica@saude.pt','BrunaMagalhãesMedica@gov.saude.pt','BrunaMagalhãesMedica@gov-saude.pt']).


%---------------------------------------------------------------------------------


%não se sabe se o ID do staff que administrou a vacina é 1 ou 2
excecao(vacinacaoCovid(1,10, data(20,04,2021), 'Moderna', 1)).
excecao(vacinacaoCovid(2,10, data(20,04,2021), 'Moderna', 1)).

%não se sabe se o ID do utente a quem foi administrada a vacina é 10 ou 11
excecao(vacinacaoCovid(1,10, data(20,04,2021), 'Moderna', 1)).
excecao(vacinacaoCovid(1,11, data(20,04,2021), 'Moderna', 1)).

%não se sabe se a data em que foi administrada a vacina foi entre janeiro de 2021 e abril de 2021
excecao(vacinacaoCovid(1,10, data(D,M,2021), 'Moderna', 1)):- M >= 1, M =< 4.

%não se sabe se a designação da vacina administrada
excecao(vacinacaoCovid(1,10, data(20,04,2021), N, 1)):- pertence(N, ['Moderna', 'Pfizer', 'Astrazeneca', 'Sputnik']).

%não se sabe se a toma da vacina administrada é 1 ou 2
excecao(vacinacaoCovid(1,10, data(20,04,2021), 'Moderna', 2)).
excecao(vacinacaoCovid(1,10, data(20,04,2021), 'Moderna', 1)).

%---------------------------------------------------------------------------------
% Conhecimento imperfeito INTERDITO (valor nulo tipo 3)
%---------------------------------------------------------------------------------

% Id do centro de saúde secreto  
centro_saude(idc_secret, 'Hospital Pedro Hispano', 'R. de Dr. Eduardo Torres, Sra. da Hora', 229391000, 'consulta@ulsm.min-saude.pt').
nulo(idc_secret).

+centro_saude(Idc,Nc,M,T,E)::(solucoes((idc_secret,Nc,M,T,E),
    (centro_saude(Idc, 'Hospital Pedro Hispano', 'R. de Dr. Eduardo Torres, Sra. da Hora', 229391000, 'consulta@ulsm.min-saude.pt'),
    nao(nulo(Idc))),S),comprimento(S,N),N==0).

excecao(centro_saude(Idc,Nc,M,T,E)):- centro_saude(idc_secret,Nc,M,T,E).


% Id do utente
utente(idu_secret, 70, 'Guilherme Rodrigues', data(30,09,1940), ' ', 936382634, 'Praça Conde de Agrolongo', 'Reformado', [], 4).
nulo(idu_secret).

+utente(Idu,Niss,Nu,Dn,E,T,M,P,Doencas,Idc)::(solucoes((idu_secret,Niss,Nu,Dn,E,T,M,P,Doencas,Idc),
    (utente(IdU, 70, 'Guilherme Rodrigues', data(30,09,1940), ' ', 936382634, 'Praça Conde de Agrolongo', 'Reformado', [], 4),
    nao(nulo(IdU))),S),comprimento(S,N),N==0).

excecao(utente(Idu,Niss,Nu,Dn,E,T,M,P,Doencas,Idc)):-
    utente(idu_secret,Niss,Nu,Dn,E,T,M,P,Doencas,Idc).

% Id do staff
staff(ids_secret, 6, 'Luís Dias', 'lgamtdias@gov-saude.pt').
nulo(ids_secret).

+staff(Ids,Idc,Ns,E)::(solucoes((ids_secret,Idc,Ns,E),
    (staff(Ids, 6, 'Luís Dias', 'lgamtdias@gov-saude.pt'),
    nao(nulo(Ids))),S),comprimento(S,N),N==0).

excecao(staff(Ids,Idc,Ns,E)):-
    staff(ids_secret,Idc,Ns,E).
    
% Id da vacinação
vacinacaoCovid(ids_secret,16, data(12,02,2021), 'Sputnik', 1).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
	vacinacaoCovid(ids_secret,Idu,D,V,T).
nulo(ids_secret).
+vacinacaoCovid(Ids,Idu,D,V,T)::(solucoes((ids_secret,Idu,D,V,T),
	(vacinacaoCovid(Ids,16, data(12,02,2021), 'Sputnik', 1),
	nao(nulo(Ids))),S), comprimento(S,N),N==0).

% Id do staff
vacinacaoCovid(8,idu_secret, data(02,03,2021), 'Astrazeneca', 1).
excecao(vacinacaoCovid(Ids,Idu,D,V,T)):-
	vacinacaoCovid(Ids,idu_secret,D,V,T).
nulo(idu_secret).
+vacinacaoCovid(Ids,Idu,D,V,T)::(solucoes((Ids,idu_secret,D,V,T),
	(vacinacaoCovid(8, Idu,  data(02,03,2021), 'Astrazeneca', 1),
	nao(nulo(Idu))),S), comprimento(S,N),N==0).

%---------------------------------------------------------------------------------
% Conhecimento imperfeito INCERTO E IMPRECISO
%---------------------------------------------------------------------------------

% Não se conhece o nome do utente, mas sabe-se que o seu NISS é 80 ou 81

utente(80,80,nome_desc,data(29,10,1987),' ',938382713,'Avenida Antero de Quental','Enfermeiro',[],5).
utente(80,81,nome_desc,data(29,10,1987),' ',938382713,'Avenida Antero de Quental','Enfermeiro',[],5).
excecao(utente(Idu,Niss,N,Dn,E,T,M,P,Doencas,Idc)):-
    utente(Idu,Niss,nome_desc,Dn,E,T,M,P,Doencas,Idc).    

excecao(utente(80,80,nome_desc,data(29,10,1987),' ',938382713,'Avenida Antero de Quental','Enfermeiro',[],5)).
excecao(utente(80,81,nome_desc,data(29,10,1987),' ',938382713,'Avenida Antero de Quental','Enfermeiro',[],5)).

%_________________________________________________________________________________

% Evolução do conhecimento 
%_________________________________________________________________________________

evolucao(Termo):-
    solucoes(Invariante, +Termo::Invariante, Lista),
    insercao(Termo),
    teste(Lista).

insercao(Termo) :-
    assert(Termo).
insercao(Termo) :-
    retract(Termo),!,fail.

% Extensao do predicado que permite a evolucao do conhecimento POSITIVO para outro POSITIVO: Qnovo,Qpassado --> {V,F}

evolucao_PP(Qnovo, Qpassado):-
    si(Qpassado, verdadeiro),
    remocao(Qpassado),
    insercao(Qnovo).


% Extensao do predicado que permite a evolucao do conhecimento NEGATIVO para POSITIVO: Qnovo --> {V,F}

evolucao_NP(Qnovo):-
    si(-Qnovo, verdadeiro),
    si(Qnovo,falso),
    remocao(-Qnovo),
    insercao(Qnovo).


% Extensao do predicado que permite a evolucao do conhecimento INCERTO para POSITIVO: Qnovo, Qpassado--> {V,F}

evolucao_IncP(Qnovo, Qpassado):-
    si(Qpassado,verdadeiro),
    remocao(Qpassado),
    insercao(Qnovo).


% Extensao do predicado que permite a evolucao do conhecimento IMPRECISO para POSITIVO: Qnovo, Qpassado1, Qpassado2 --> {V,F}

evolucao_ImpP(Qnovo,Qpassado1,Qpassado2):-
    si(Qpassado1,desconhecido),
    si(Qpassado2,desconhecido),
    remocao(excecao(Qpassado1)),
    remocao(excecao(Qpassado2)),
    insercao(Qnovo).


% Extensao do predicado que permite a evolucao do conhecimento INCERTO para IMPRECISO: Qnovo1, Qnovo2, Qpassado --> {V,F}

evolucao_IncImp(Qnovo1, Qnovo2, Qpassado):-
    si(Qpassado,verdadeiro),
    remocao(Qpassado),
    insercao(excecao(Qnovo1)),
    insercao(excecao(Qnovo2)).


% Extensao do predicado que permite a evolucao do conhecimento IMPRECISO para INCERTO: Qnovo, Qnovo_ex, Qpassado1, Qpassado2 --> {V,F}

evolucao_ImpInc(Qnovo,Qnovo_ex, Qnovo_exx, Qpassado1, Qpassado2):-
    si(Qpassado1,desconhecido),
    si(Qpassado2,desconhecido),
    remocao(excecao(Qpassado1)),
    remocao(excecao(Qpassado2)),
    insercao(Qnovo),
    insercao((excecao(Qnovo_ex) :- Qnovo_exx)).


%-----------------------------------------------------------------------------------------------

%Extensão do predicado que permite inserir conhecimento incerto no caso de um staff com nome desconhecido

evolucao(staff(Ids,Idc,Nome_desconhecido,E), staff, incerto, nome):-
    evolucao(staff(Ids,Idc,Nome_desconhecido,E)),
    insercao((excecao(staff(Ids,Idc,Nome,E)) :-
                    staff(Ids,Idc,Nome_desconhecido,E))).

%Extensão do predicado que permite inserir conhecimento incerto no caso de um utente com nome desconhecido

evolucao(utente(Idu,Niss,Nome_desconhecido,Dn,E,T,M,P,Doencas,Idc), utente, incerto, nome):-
    evolucao(utente(Idu,Niss,Nome_desconhecido,Dn,E,T,M,P,Doencas,Idc)),
    insercao((excecao(utente(Idu,Niss,Nome,Dn,E,T,M,P,Doencas,Idc)):-
                    utente(Idu,Niss,Nome_desconhecido,Dn,E,T,M,P,Doencas,Idc))).

%Extensão do predicado que permite inserir conhecimento incerto no caso de um centrp com nome desconhecido

evolucao(centro_saude(Idc,Nome_desconhecido,M,T,E), centro_saude, incerto, nome):-
    evolucao(centro_saude(Idc,Nome_desconhecido,M,T,E)),
    insercao((excecao(centro_saude(Idc,Nome,M,T,E)):-
                    centro_saude(Idc,Nome_desconhecido,M,T,E))).

%----------------------------------------------------------------------

%Extensão do predicado que permite inserir conhecimento impreciso no caso de um utente com ano de nascença dentro de um conjunto de valores

evolucao(utente(Idu,Niss,N,Ano_impreciso,E,T,M,P,Doencas,Idc), utente, impreciso, ano, LimiteInferior, LimiteSuperior):-
    insercao((excecao(utente(Idu,Niss,N,data(D,M,Ano_impreciso),E,T,M,P,Doencas,Idc)):-
                    Ano_impreciso >= LimiteInferior, Ano_impreciso =< LimiteSuperior)).

%----------------------------------------------------------------------

%Extensão do predicado que permite inserir conhecimento interdito no caso de um utente com nome secreto

evolucao(utente(Idu,Niss,Nome_interdito,Dn,E,T,M,P,Doencas,Idc), utente, interdito, nome):-
    evolucao(utente(Idu,Niss,Nome_interdito,Dn,E,T,M,P,Doencas,Idc)),
    insercao((excecao(utente(IdUt,NissUt,Nome,Data,Emp,Tel,Mor,Prof,DoencasUt,IdcUt)):-
                utente(IdUt,NissUt,Nome_interdito,Data,Emp,Tel,Mor,Prof,DoencasUt,IdcUt))), 
    insercao(nulo(Nome_interdito)).


%_________________________________________________________________________________

% Involução do conhecimento 
%_________________________________________________________________________________

involucao(Termo) :-
	solucoes(Invariante,-Termo::Invariante,Lista),
	remocao(Termo),
	teste(Lista).

remocao(Termo) :- retract(Termo).
remocao(Termo) :-
		assert(Termo),!,fail.

%Extensão do predicado que permite remover conhecimento incerto no caso de um staff com nome desconhecido

involucao(staff(Ids,Idc,Nome_desconhecido,E), staff, incerto, nome):-
    involucao(staff(Ids,Idc,Nome_desconhecido,E)),
    remocao((excecao(staff(Ids,Idc,Nome,E)) :-
                    staff(Ids,Idc,Nome_desconhecido,E))).


%Extensão do predicado que permite remover conhecimento incerto no caso de um utente com nome desconhecido

involucao(utente(Idu,Niss,Nome_desconhecido,Dn,E,T,M,P,Doencas,Idc), utente, incerto, nome):-
    involucao(utente(Idu,Niss,Nome_desconhecido,Dn,E,T,M,P,Doencas,Idc)),
    remocao((excecao(utente(Idu,Niss,Nome,Dn,E,T,M,P,Doencas,Idc)):-
                    utente(Idu,Niss,Nome_desconhecido,Dn,E,T,M,P,Doencas,Idc))).

%Extensão do predicado que permite remover conhecimento incerto no caso de um centrp com nome desconhecido

involucao(centro_saude(Idc,Nome_desconhecido,M,T,E), centro_saude, incerto, nome):-
    involucao(centro_saude(Idc,Nome_desconhecido,M,T,E)),
    remocao((excecao(centro_saude(Idc,Nome,M,T,E)):-
                    centro_saude(Idc,Nome_desconhecido,M,T,E))).

%----------------------------------------------------------------------

%Extensão do predicado que permite remover conhecimento impreciso no caso de um utente com ano de nascença dentro de um conjunto de valores

involucao(utente(Idu,Niss,N,Ano_impreciso,E,T,M,P,Doencas,Idc), utente, impreciso, ano, LimiteInferior, LimiteSuperior):-
    remocao((excecao(utente(Idu,Niss,N,data(D,M,Ano_impreciso),E,T,M,P,Doencas,Idc)):-
                    Ano_impreciso >= LimiteInferior, Ano_impreciso =< LimiteSuperior)).

%----------------------------------------------------------------------

%Extensão do predicado que permite remover conhecimento interdito no caso de um utente com nome secreto

involucao(utente(Idu,Niss,Nome_interdito,Dn,E,T,M,P,Doencas,Idc), utente, interdito, nome):-
    involucao(utente(Idu,Niss,Nome_interdito,Dn,E,T,M,P,Doencas,Idc)),
    remocao((excecao(utente(IdUt,NissUt,Nome,Data,Emp,Tel,Mor,Prof,DoencasUt,IdcUt)):-
                utente(IdUt,NissUt,Nome_interdito,Data,Emp,Tel,Mor,Prof,DoencasUt,IdcUt))), 
    remocao(nulo(Nome_interdito)).

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

tomaInc(IdU):- vacinacaoCovid(_,IdU,_,_,1), solucoes((IdU,2),vacinacaoCovid(_,IdU,_,_,2),S),
                comprimento(S,N),
                N == 0.

falta2toma(Res):- solucoes(IdU,tomaInc(IdU),Res).


% ---------------------------------------------------------------------------------------------------------------------------------------
%  Pessoas nao vacinadas ([ID Utentes])
% ---------------------------------------------------------------------------------------------------------------------------------------
utente_naoVacinado(X):-utente(X,_,_,_,_,_,_,_,_,_),solucoes(X,vacinacaoCovid(_,X,_,_,_),S),
                       comprimento(S,N),
                       N == 0.

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
% Invariantes - Inserção
% ---------------------------------------------------------------------------------------------------------------------------------------

%Invariante estrutural: Nao permitir a insercao de exceções repetidas
+excecao(T) :: (solucoes(T, excecao(T), R),
                  comprimento(R, 1)).

%Invariante estrutural: Nao permitir a insercao de conhecimento repetido
+utente(Id, NSS,Nome,D,E,T,M,P,Doencas,CentroS) ::
	        (solucoes((Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS),(utente(Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS)), S),
            comprimento(S,N),
            N==1).

% Invariante que impede a inserção de conhecimento positivo relativo a um utente com nome interdito
+utente(Id,NSS,Nu,D,E,T,M,P,Doencas,CentroS) :: (solucoes((Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS), 
                        (utente(Id,NSS,Nome,D,E,T,M,P,Doencas,CentroS), nulo(Nome)), S),
                        comprimento(S,N),
                        N==0).

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
+staff(_, Centro,_,_) ::
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
% Invariantes - Remoção
% ---------------------------------------------------------------------------------------------------------------------------------------

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

% Extensao do meta-predicado si: Questao,Resposta -> {V,F,D}

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

utentesVacNoSeuCs(R):-solucoes((NU),vacina2_aux(_,_,_,_,_,_,_,NU),Y), apagaRepetido(Y,R).


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

