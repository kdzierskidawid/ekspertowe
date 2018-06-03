% Author:
% Date: 02.06.2018


% System ekspertowy do wyboru w-f z sekcji AZS

:- consult('wez.pl').

go :-
   write('Program pomo�e Ci wybra� w-f z sekcji AZS.'),nl,
   write('Na pytania odpowiadaj T dla tak, lub N dla nie.'),nl,
   czysc_zapisane_odpowiedzi,
   spr�buj_wszystkich_mo�liwo�ci.

spr�buj_wszystkich_mo�liwo�ci :-     % Przejdz jeszcze raz przez wszystkie mo�liwosci...
   wyborem_mo�e_by�(D),
   our_random,
   explain(D),
   
   fail.



% diagnoza

wyborem_mo�e_by�(koszykowka) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(jestes_wysoki,yes),
   u�ytkownik_m�wi(lubisz_biegac,yes).

wyborem_mo�e_by�(pilka_nozna) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(jestes_wysoki,no),
   u�ytkownik_m�wi(reka_noga,no).

wyborem_mo�e_by�(siatkowka) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(jestes_wysoki,yes),
   u�ytkownik_m�wi(lubisz_biegac,no).

wyborem_mo�e_by�(reczna) :-
   u�ytkownik_m�wi(sport_zespolowy,yes),
   u�ytkownik_m�wi(jestes_wysoki,no),
   u�ytkownik_m�wi(reka_noga,yes).

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
:- dynamic(zapisana_odp/2).


%   Pozbycie si� zapisanych odpowiedzi bez
%   bez zniesienia dynamicznej deklaracji.


czysc_zapisane_odpowiedzi :- retract(zapisana_odp(_,_)),fail.
czysc_zapisane_odpowiedzi.



%   Procedura uzyskania odpowiedzi u�ytkownika na ka�de pytanie w razie potrzeby,
%   lub zadaj pytanie, jesli nie zosta�o ono ju� zadane


u�ytkownik_m�wi(Q,A) :- zapisana_odp(Q,A).

u�ytkownik_m�wi(Q,A) :- \+ zapisana_odp(Q,_),
                  nl,nl,
                  zadaj_pytanie(Q),
                  wez_tak_lub_nie(Response),
                  asserta(zapisana_odp(Q,Response)),
                  Response = A.



% Tresci pyta�


zadaj_pytanie(jestes_wysoki) :-
   write('Jestes wysoki i chcesz by wzrost mia� wp�yw na sport, kt�ry Ci wybierzemy?'),nl.

zadaj_pytanie(lubisz_biegac) :-
   write('Czy chcesz aby sport by� zwi�zany z bieganiem? '),nl.

zadaj_pytanie(sport_zespolowy) :-
   write('Czy chcesz aby by� to sport zespo�owy? '),nl.

zadaj_pytanie(reka_noga) :-
   write('Wolisz gra� r�koma? '),nl.

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
   write('Czy nogi mog� by� ze sob� z��czone podczas jazdy? '),nl.

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
   write('Chcesz by zaj�cia by�y dosy� ruchliwe? '),nl.

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




%  Wyjasnienia na diagnozy


explain(koszykowka) :-
   write('koszyk�wka!'),nl.

explain(pilka_nozna) :-
   write('pi�ka no�na!'),nl.

explain(siatkowka) :-
   write('siatkowka!'),nl.


explain(reczna) :-
   write('reczna!'),nl.


explain(float_fitness) :-
   write('float_fitness!'),nl.

explain(plywanie) :-
   write('plywanie!'),nl.

explain(nurkowanie) :-
   write('nurkowanie!'),nl.

explain(ergometr_wioslarski) :-
   write('ergometr wioslarski!'),nl.

explain(zeglarstwo) :-
   write('�eglarstwo!'),nl.

explain(snowboard) :-
   write('snowboard!'),nl.

explain(narciarstwo) :-
   write('narciarstwo!'),nl.

explain(judo) :-
   write('judo!'),nl.

explain(karate) :-
   write('karate!'),nl.

explain(badminton) :-
   write('badminton!'),nl.

explain(tenis) :-
   write('tenis!'),nl.

explain(squash) :-
   write('squash!'),nl.

explain(tenis_stolowy) :-
   write('sto�owy!'),nl.

explain(fitness) :-
   write('fitness!'),nl.

explain(fitnessv2) :-
   write('fitness!'),nl.

explain(wspinaczka) :-
   write('wspinaczka!'),nl.

explain(fit_and_jump) :-
   write('fit_and_jump!'),nl.

explain(lekkoatletyka) :-
   write('lekkoatletyka!'),nl.

explain(kolarstwo) :-
   write('kolarstwo!'),nl.

explain(akrobatyka_powietrzna) :-
   write('akrobacje w powietrzu!'),nl.

explain(aerobik) :-
   write('aerobik!'),nl.

explain(trojboj_silowy) :-
   write('tr�jb�j si�owy!'),nl.

explain(jezdziectwo) :-
   write('je�dziectwo!'),nl.

explain(brydz) :-
   write('bryd�!'),nl.

explain(yoga) :-
   write('yoga!'),nl.


explain(brak_sportu) :-
   nl,
write('Jak wida� nic Ci nie odpowiada, najwidoczniej sport nie jest dla ka�dego.'),nl.