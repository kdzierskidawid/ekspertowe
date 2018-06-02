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
   our_random(1,9,R),
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
   
wyborem_mo�e_by�(squash) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,yes),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(siatka_miedzy_zawodnikami,no).
   
wyborem_mo�e_by�(tenis_stolowy) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,yes),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no).
   
wyborem_mo�e_by�(fitness) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(sport_silowy,yes),
   u�ytkownik_m�wi(lek_wysokosci,yes).
   
wyborem_mo�e_by�(wspinaczka) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(sport_silowy,yes),
   u�ytkownik_m�wi(lek_wysokosci,no).
   
wyborem_mo�e_by�(fit_and_jump) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(sport_silowy,no),
   u�ytkownik_m�wi(rozciaganiev2,yes).
   
wyborem_mo�e_by�(lekkoatletyka) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(sport_silowy,no),
   u�ytkownik_m�wi(rozciaganiev2,no),
   u�ytkownik_m�wi(naturalny_ruch,yes).
   
wyborem_mo�e_by�(kolarstwo) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,yes),
   u�ytkownik_m�wi(sport_silowy,no),
   u�ytkownik_m�wi(rozciaganiev2,no),
   u�ytkownik_m�wi(naturalny_ruch,no).
   
wyborem_mo�e_by�(akrobatyka_powietrzna) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,yes).
   
wyborem_mo�e_by�(fitnessv2) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,yes),
   u�ytkownik_m�wi(duzo_ruchu,yes),
   u�ytkownik_m�wi(sport_silowy2,yes).
   
   
wyborem_mo�e_by�(aerobik) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,yes),
   u�ytkownik_m�wi(duzo_ruchu,yes),
   u�ytkownik_m�wi(sport_silowy2,no),
   u�ytkownik_m�wi(muzyka,yes).
   
wyborem_mo�e_by�(fit_and_jump) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,yes),
   u�ytkownik_m�wi(duzo_ruchu,yes),
   u�ytkownik_m�wi(sport_silowy2,no),
   u�ytkownik_m�wi(muzyka,no).

wyborem_mo�e_by�(yoga) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,yes),
   u�ytkownik_m�wi(duzo_ruchu,no).
   
wyborem_mo�e_by�(trojboj_silowy) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,no),
   u�ytkownik_m�wi(sport_silowy3,yes),
   u�ytkownik_m�wi(podnoszenie_ciezarow,yes).

wyborem_mo�e_by�(wspinaczka) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,no),
   u�ytkownik_m�wi(sport_silowy3,yes),
   u�ytkownik_m�wi(podnoszenie_ciezarow,no).
   
wyborem_mo�e_by�(jezdziectwo) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,no),
   u�ytkownik_m�wi(sport_silowy3, no),
   u�ytkownik_m�wi(sport_ze_zwierzetami,yes).
   
wyborem_mo�e_by�(brydz) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,no),
   u�ytkownik_m�wi(sport_silowy3, no),
   u�ytkownik_m�wi(sport_ze_zwierzetami,no),
   u�ytkownik_m�wi(karciany,yes).
   
wyborem_mo�e_by�(brak_sportu) :-
   u�ytkownik_m�wi(sport_zespolowy,no),
   u�ytkownik_m�wi(sport_wodny,no),
   u�ytkownik_m�wi(sport_zimowy,no),
   u�ytkownik_m�wi(zwiazany_z_walka,no),
   u�ytkownik_m�wi(sport_z_partnerem,no),
   u�ytkownik_m�wi(sport_wytrzymalosciowy,no),
   u�ytkownik_m�wi(sport_ekstremalny,no),
   u�ytkownik_m�wi(zwiazane_z_rozciaganiem,no),
   u�ytkownik_m�wi(sport_silowy3, no),
   u�ytkownik_m�wi(sport_ze_zwierzetami,no),
   u�ytkownik_m�wi(karciany,no).
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

zadaj_pytanie(rozciaganiev2) :-
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

zadaj_pytanie(lek_wysokosci) :-
   write('Masz l�k wysokosci? '),nl.

zadaj_pytanie(sport_silowy) :-
   write('Sport silowy? '),nl.
   
zadaj_pytanie(sport_silowy2) :-
   write('Sport silowy? '),nl.
   
zadaj_pytanie(sport_silowy3) :-
   write('Sport silowy? '),nl.
   
zadaj_pytanie(naturalny_ruch) :-
   write('Lubisz normalna aktywnosc fizyczna? '),nl.
   
zadaj_pytanie(sport_ekstremalny) :-
   write('Lubisz dawk� adrenaliny? '),nl.
   
zadaj_pytanie(zwiazane_z_rozciaganiem) :-
   write('Chcesz sie porozciagac? '),nl.
   
zadaj_pytanie(duzo_ruchu) :-
   write('Czy chcesz sie troch� rozrusza�? '),nl.
   
zadaj_pytanie(muzyka) :-
   write('Chcesz, aby �wiczeniom towarzyszy�a muzyka? '),nl.
   
zadaj_pytanie(podnoszenie_ciezarow) :-
   write('Czy chcesz podnosi� ci�ary? '),nl.
   
zadaj_pytanie(sport_ze_zwierzetami) :-
   write('Chcesz �wiczyc przy asyscie zwierz�t? '),nl.
   
zadaj_pytanie(karciany) :-
   write('Lubisz gre w karty? '),nl.
   
zadaj_pytanie(brak_sportu) :-
   write('Lubisz gre w karty? '),nl.
   
zadaj_pytanie() :-
   write('Czy... ? '),nl.



%
%  Explanations for the various diagnoses
%

explain(koszykowka) :-
   nl,
   write('koszyk�wka!'),nl.
   
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
   
explain(squash) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie squash!'),nl.
   
explain(tenis_stolowy) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie tenis sto�owy!'),nl.
   
explain(fitness) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie fitness!'),nl.
   
explain(fitnessv2) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie fitness!'),nl.

explain(wspinaczka) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie wspinaczka!'),nl.
   
explain(fit_and_jump) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie fit_and_jump!'),nl.
   
explain(lekkoatletyka) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie lekkoatletyka!'),nl.
   
explain(kolarstwo) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie kolarstwo!'),nl.
   
explain(akrobatyka_powietrzna) :-
   nl,
   write('Idealnym sportem dla Ciebie b�d� akrobacje w powietrzu!'),nl.
   
explain(aerobik) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie aerobik!'),nl.
   
explain(trojboj_silowy) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie tr�jb�j si�owy!'),nl.
   
explain(jezdziectwo) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie je�dziectwo!'),nl.
   
explain(brydz) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie bryd�!'),nl.

explain(yoga) :-
   nl,
   write('Idealnym sportem dla Ciebie b�dzie yoga!'),nl.
   
explain(brak_sportu) :-
   nl,
   write('Jak wida� nic Ci nie odpowiada, id� lepiej pogra� w lola, przymule!'),nl.
   


num(0):-
nl,
   write('Idealnym sportem dla Ciebie b�dzie '),nl.
num(1):-
nl,
   write('Doskonale! Sport dla Ciebie to '),nl.
num(2):-
nl,
   write('Nie p�kaj, czeka na Ciebie  '),nl.
num(3):-
nl,
   write('O tak! Nie mog�es trafic lepiej niz na '),nl.
num(4):-
nl,
   write('Troche ruchu jeszcze nikomu nie zaszkodzilo, '),nl.
num(5):-
nl,
   write('Raz, dwa, trzy, jak sie patrzy '),nl.
num(6):-
nl,
   write('Krotko i na temat,  '),nl.
num(7):-
nl,
   write('Co tu w trawie piszczy? To '),nl.
num(8):-
nl,
   write('Poszczescilo Ci sie, '),nl.
num(9):-
nl,
   write('Tak, tak, tak! '),nl.


our_random(Lower,Upper,R):-

    %% 1. con
    num(R),

    %% 2. lower
    R >= Lower,

    %% 3. upper
    R =< Upper.






