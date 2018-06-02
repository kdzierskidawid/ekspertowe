% Author:
% Date: 02.06.2018


% System ekspertowy do wyboru w-f z sekcji AZS

:- consult('wez.pl').

go :-
   write('Program pomo�e Ci wybra� w-f z sekcji AZS.'),nl,
   write('Na pytania odpowiadaj T dla tak, lub N dla nie.'),nl,
   czysc_zapisane_odpowiedzi,
   spr�buj_wszystkich_mo�liwo�ci.

spr�buj_wszystkich_mo�liwo�ci :-     % Backtrack through all possibilities...
   wyborem_mo�e_by�(D),
   explain(D),
   fail.

spr�buj_wszystkich_mo�liwo�ci.       % ...then succeed with no further action.


%
% Diagnostic knowledge base
%   (conditions under which to give each diagnosis)
%

wyborem_mo�e_by�(koszykowka) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(jestes_wysoki,yes),
   u�ytkownik_m�wi(lubisz_biegac,yes).
   
wyborem_mo�e_by�(pilka_nozna) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(reka_noga,no),
   u�ytkownik_m�wi(lubisz_biegac,yes).

wyborem_mo�e_by�(siatkowka) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(jestes_wysoki,yes),
   u�ytkownik_m�wi(reka_noga,yes),
   u�ytkownik_m�wi(lubisz_biegac,no).

wyborem_mo�e_by�(float_fitness) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,yes),
   u�ytkownik_m�wi(stroj_kapielowy,yes),
   u�ytkownik_m�wi(rozciaganie,yes).
   
wyborem_mo�e_by�(plywanie) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,yes),
   u�ytkownik_m�wi(stroj_kapielowy,yes),
   u�ytkownik_m�wi(rozciaganie,no),
   u�ytkownik_m�wi(techniczne_plywanie,yes).
   
wyborem_mo�e_by�(nurkowanie) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,yes),
   u�ytkownik_m�wi(stroj_kapielowy,yes),
   u�ytkownik_m�wi(rozciaganie,no),
   u�ytkownik_m�wi(techniczne_plywanie,no).
   
wyborem_mo�e_by�(ergometr_wioslarski) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,yes),
   u�ytkownik_m�wi(stroj_kapielowy,no),
   u�ytkownik_m�wi(cwiczenie_silowe,yes).
   
wyborem_mo�e_by�(zeglarstwo) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,yes),
   u�ytkownik_m�wi(stroj_kapielowy,no),
   u�ytkownik_m�wi(cwiczenie_silowe,no).
   
wyborem_mo�e_by�(snowboard) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,yes),
   u�ytkownik_m�wi(nogi_zlaczone,yes).

wyborem_mo�e_by�(narciarstwo) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,yes),
   u�ytkownik_m�wi(nogi_zlaczone,no).
   
wyborem_mo�e_by�(judo) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,yes),
   u�ytkownik_m�wi(cwiczenie_silowe,yes).

wyborem_mo�e_by�(karate) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,yes),
   u�ytkownik_m�wi(cwiczenie_silowe,no).
   
wyborem_mo�e_by�(badminton) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,yes),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(siatka_miedzy_zawodnikami,yes),
   u�ytkownik_m�wi(gra_lotka,yes).
   
wyborem_mo�e_by�(tenis) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,yes),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(siatka_miedzy_zawodnikami,yes),
   u�ytkownik_m�wi(gra_lotka,no).
   
   
   
%
% Case knowledge base
%   (information supplied by the user during the consultation)
%

:- dynamic(zapisana_odp/2).

   % (Clauses get added as user answers questions.)


%
% Procedure to get rid of the stored answers
% without abolishing the dynamic declaration
%

czysc_zapisane_odpowiedzi :- retract(zapisana_odp(_,_)),fail.
czysc_zapisane_odpowiedzi.


%
% Procedure to retrieve the user's answer to each question when needed,
% or ask the question if it has not already been asked
%

u�ytkownik_m�wi(Q,A) :- zapisana_odp(Q,A).

u�ytkownik_m�wi(Q,A) :- \+ zapisana_odp(Q,_),
                  nl,nl,
                  zadaj_pytanie(Q),
                  wez_tak_lub_nie(Response),
                  asserta(zapisana_odp(Q,Response)),
                  Response = A.


%
% Texts of the questions
%

zadaj_pytanie(jestes_wysoki) :-
   write('Jestes wysoki i chcesz by wzrost mia� wp�yw na sport, kt�ry Ci wybierzemy?'),nl.

zadaj_pytanie(lubisz_biegac) :-
   write('Czy chcesz aby sport by� zwi�zany z bieganiem? '),nl.

zadaj_pytanie(sport_zespolowy) :-
   write('Czy chcesz aby by� to sport zespo�owy? '),nl.

zadaj_pytanie(reka_noga) :-
   write('Wolisz gra� r�koma ni� nogami? '),nl.
   
zadaj_pytanie(sport_wodny) :-
   write('Czy chcesz, aby to byl sport wodny? '),nl.

zadaj_pytanie(stroj_kapielowy) :-
   write('Czy chcesz nosic stroj kapielowy? '),nl.

zadaj_pytanie(rozciaganie) :-
   write('Czy zale�y Ci na rozci�ganiu si�? '),nl.
   
zadaj_pytanie(techniczne_plywanie) :-
   write('Czy zale�y Ci na p�ywaniu okreslona technika? '),nl.
   
zadaj_pytanie(cwiczenie_silowe) :-
   write('Czy zale�y Ci na nabraniu sily? '),nl.
   
zadaj_pytanie(sport_zimowy) :-
   write('Czy chcesz, aby to by� sport zimowy? '),nl.

zadaj_pytanie(nogi_zlaczone) :-
   write('Czy chcesz miec wieksza kontrole nad praca n�g? '),nl.

zadaj_pytanie(zwiazany_z_walka) :-
   write('Czy chcesz popracowac nad Twoimi umiej�tnosciami walki? '),nl.

zadaj_pytanie(sport_z_partnerem) :-
   write('Czy masz partnera do wsp�pracy? '),nl.

zadaj_pytanie(sport_wytrzymalosciowy) :-
   write('Czy chcesz sprawdzic swoja kondycje? '),nl.

zadaj_pytanie(siatka_miedzy_zawodnikami) :-
   write('Czy chcesz aby od przeciwnika dzielila Cie jedynie siatka? '),nl.

zadaj_pytanie(gra_lotka) :-
   write('Czy preferujesz gr� lotk�? '),nl.
   
zadaj_pytanie() :-
   write('Czy... ? '),nl.



%
%  Explanations for the various diagnoses
%

explain(koszykowka) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie koszyk�wka!'),nl.
   
explain(pilka_nozna) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie pi�ka no�na!'),nl.

explain(siatkowka) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie siatkowka!'),nl.
   
explain(float_fitness) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie float_fitness!'),nl.
   
explain(plywanie) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie plywanie!'),nl.

explain(nurkowanie) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie nurkowanie!'),nl.

explain(ergometr_wioslarski) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie ergometr wioslarski!'),nl.
   
explain(zeglarstwo) :-
   nl,
   write('Koniecznie spr�buj �eglarstwa!'),nl.
   
explain(snowboard) :-
   nl,
   write('Snowboard to jest to!'),nl.
   
explain(narciarstwo) :-
   nl,
   write('Kamil Stoch nowego pokolenia? Spr�buj narciarstwa!'),nl.

explain(judo) :-
   nl,
   write('Nie odklepuj zanim nie spr�bujesz! Judo to jest to!'),nl.
   
explain(karate) :-
   nl,
   write('Przybywajcie wyzwania i pr�by, przybywajcie trudy �ycia � ja jestem got�w na karate!'),nl.
   

explain(badminton) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie badminton!'),nl.
   
explain(tenis) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie tenis!'),nl.







