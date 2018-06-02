% Author:
% Date: 02.06.2018


% System ekspertowy do wyboru w-f z sekcji AZS

:- consult('wez.pl').

go :-
   write('Program pomo¿e Ci wybraæ w-f z sekcji AZS.'),nl,
   write('Na pytania odpowiadaj T dla tak, lub N dla nie.'),nl,
   czysc_zapisane_odpowiedzi,
   spróbuj_wszystkich_mo¿liwoœci.

spróbuj_wszystkich_mo¿liwoœci :-     % Backtrack through all possibilities...
   wyborem_mo¿e_byæ(D),
   explain(D),
   fail.

spróbuj_wszystkich_mo¿liwoœci.       % ...then succeed with no further action.


%
% Diagnostic knowledge base
%   (conditions under which to give each diagnosis)
%

wyborem_mo¿e_byæ(koszykowka) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(jestes_wysoki,yes),
   u¿ytkownik_mówi(lubisz_biegac,yes).
   
wyborem_mo¿e_byæ(pilka_nozna) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(reka_noga,no),
   u¿ytkownik_mówi(lubisz_biegac,yes).

wyborem_mo¿e_byæ(siatkowka) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(jestes_wysoki,yes),
   u¿ytkownik_mówi(reka_noga,yes),
   u¿ytkownik_mówi(lubisz_biegac,no).

wyborem_mo¿e_byæ(float_fitness) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,yes),
   u¿ytkownik_mówi(stroj_kapielowy,yes),
   u¿ytkownik_mówi(rozciaganie,yes).
   
wyborem_mo¿e_byæ(plywanie) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,yes),
   u¿ytkownik_mówi(stroj_kapielowy,yes),
   u¿ytkownik_mówi(rozciaganie,no),
   u¿ytkownik_mówi(techniczne_plywanie,yes).
   
wyborem_mo¿e_byæ(nurkowanie) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,yes),
   u¿ytkownik_mówi(stroj_kapielowy,yes),
   u¿ytkownik_mówi(rozciaganie,no),
   u¿ytkownik_mówi(techniczne_plywanie,no).
   
wyborem_mo¿e_byæ(ergometr_wioslarski) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,yes),
   u¿ytkownik_mówi(stroj_kapielowy,no),
   u¿ytkownik_mówi(cwiczenie_silowe,yes).
   
wyborem_mo¿e_byæ(zeglarstwo) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,yes),
   u¿ytkownik_mówi(stroj_kapielowy,no),
   u¿ytkownik_mówi(cwiczenie_silowe,no).
   
wyborem_mo¿e_byæ(snowboard) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,yes),
   u¿ytkownik_mówi(nogi_zlaczone,yes).

wyborem_mo¿e_byæ(narciarstwo) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,yes),
   u¿ytkownik_mówi(nogi_zlaczone,no).
   
wyborem_mo¿e_byæ(judo) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,yes),
   u¿ytkownik_mówi(cwiczenie_silowe,yes).

wyborem_mo¿e_byæ(karate) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,yes),
   u¿ytkownik_mówi(cwiczenie_silowe,no).
   
wyborem_mo¿e_byæ(badminton) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,yes),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(siatka_miedzy_zawodnikami,yes),
   u¿ytkownik_mówi(gra_lotka,yes).
   
wyborem_mo¿e_byæ(tenis) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,yes),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(siatka_miedzy_zawodnikami,yes),
   u¿ytkownik_mówi(gra_lotka,no).
   
   
   
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

u¿ytkownik_mówi(Q,A) :- zapisana_odp(Q,A).

u¿ytkownik_mówi(Q,A) :- \+ zapisana_odp(Q,_),
                  nl,nl,
                  zadaj_pytanie(Q),
                  wez_tak_lub_nie(Response),
                  asserta(zapisana_odp(Q,Response)),
                  Response = A.


%
% Texts of the questions
%

zadaj_pytanie(jestes_wysoki) :-
   write('Jestes wysoki i chcesz by wzrost mia³ wp³yw na sport, który Ci wybierzemy?'),nl.

zadaj_pytanie(lubisz_biegac) :-
   write('Czy chcesz aby sport by³ zwi¹zany z bieganiem? '),nl.

zadaj_pytanie(sport_zespolowy) :-
   write('Czy chcesz aby by³ to sport zespo³owy? '),nl.

zadaj_pytanie(reka_noga) :-
   write('Wolisz graæ rêkoma ni¿ nogami? '),nl.
   
zadaj_pytanie(sport_wodny) :-
   write('Czy chcesz, aby to byl sport wodny? '),nl.

zadaj_pytanie(stroj_kapielowy) :-
   write('Czy chcesz nosic stroj kapielowy? '),nl.

zadaj_pytanie(rozciaganie) :-
   write('Czy zale¿y Ci na rozci¹ganiu siê? '),nl.
   
zadaj_pytanie(techniczne_plywanie) :-
   write('Czy zale¿y Ci na p³ywaniu okreslona technika? '),nl.
   
zadaj_pytanie(cwiczenie_silowe) :-
   write('Czy zale¿y Ci na nabraniu sily? '),nl.
   
zadaj_pytanie(sport_zimowy) :-
   write('Czy chcesz, aby to by³ sport zimowy? '),nl.

zadaj_pytanie(nogi_zlaczone) :-
   write('Czy chcesz miec wieksza kontrole nad praca nóg? '),nl.

zadaj_pytanie(zwiazany_z_walka) :-
   write('Czy chcesz popracowac nad Twoimi umiejêtnosciami walki? '),nl.

zadaj_pytanie(sport_z_partnerem) :-
   write('Czy masz partnera do wspó³pracy? '),nl.

zadaj_pytanie(sport_wytrzymalosciowy) :-
   write('Czy chcesz sprawdzic swoja kondycje? '),nl.

zadaj_pytanie(siatka_miedzy_zawodnikami) :-
   write('Czy chcesz aby od przeciwnika dzielila Cie jedynie siatka? '),nl.

zadaj_pytanie(gra_lotka) :-
   write('Czy preferujesz grê lotk¹? '),nl.
   
zadaj_pytanie() :-
   write('Czy... ? '),nl.



%
%  Explanations for the various diagnoses
%

explain(koszykowka) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie koszykówka!'),nl.
   
explain(pilka_nozna) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie pi³ka no¿na!'),nl.

explain(siatkowka) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie siatkowka!'),nl.
   
explain(float_fitness) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie float_fitness!'),nl.
   
explain(plywanie) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie plywanie!'),nl.

explain(nurkowanie) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie nurkowanie!'),nl.

explain(ergometr_wioslarski) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie ergometr wioslarski!'),nl.
   
explain(zeglarstwo) :-
   nl,
   write('Koniecznie spróbuj ¿eglarstwa!'),nl.
   
explain(snowboard) :-
   nl,
   write('Snowboard to jest to!'),nl.
   
explain(narciarstwo) :-
   nl,
   write('Kamil Stoch nowego pokolenia? Spróbuj narciarstwa!'),nl.

explain(judo) :-
   nl,
   write('Nie odklepuj zanim nie spróbujesz! Judo to jest to!'),nl.
   
explain(karate) :-
   nl,
   write('Przybywajcie wyzwania i próby, przybywajcie trudy ¿ycia – ja jestem gotów na karate!'),nl.
   

explain(badminton) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie badminton!'),nl.
   
explain(tenis) :-
   nl,
   write('Idealnym sportem dla Ciebie bêdzie tenis!'),nl.








