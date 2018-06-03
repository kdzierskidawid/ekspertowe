% Author:
% Date: 02.06.2018


% System ekspertowy do wyboru w-f z sekcji AZS

:- consult('wez.pl').

go :-
   write('Program pomo¿e Ci wybraæ w-f z sekcji AZS.'),nl,
   write('Na pytania odpowiadaj T dla tak, lub N dla nie.'),nl,
   czysc_zapisane_odpowiedzi,
   spróbuj_wszystkich_mo¿liwoœci.

spróbuj_wszystkich_mo¿liwoœci :-     % Przejdz jeszcze raz przez wszystkie mo¿liwosci...
   wyborem_mo¿e_byæ(D),
   our_random,
   explain(D),
   
   fail.



% diagnoza

wyborem_mo¿e_byæ(koszykowka) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(jestes_wysoki,yes),
   u¿ytkownik_mówi(lubisz_biegac,yes).

wyborem_mo¿e_byæ(pilka_nozna) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(jestes_wysoki,no),
   u¿ytkownik_mówi(reka_noga,no).

wyborem_mo¿e_byæ(siatkowka) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(jestes_wysoki,yes),
   u¿ytkownik_mówi(lubisz_biegac,no).

wyborem_mo¿e_byæ(reczna) :-
   u¿ytkownik_mówi(sport_zespolowy,yes),
   u¿ytkownik_mówi(jestes_wysoki,no),
   u¿ytkownik_mówi(reka_noga,yes).

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

wyborem_mo¿e_byæ(squash) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,yes),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(siatka_miedzy_zawodnikami,no).

wyborem_mo¿e_byæ(tenis_stolowy) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,yes),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no).

wyborem_mo¿e_byæ(fitness) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(sport_silowy,yes),
   u¿ytkownik_mówi(lek_wysokosci,yes).

wyborem_mo¿e_byæ(wspinaczka) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(sport_silowy,yes),
   u¿ytkownik_mówi(lek_wysokosci,no).

wyborem_mo¿e_byæ(fit_and_jump) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(sport_silowy,no),
   u¿ytkownik_mówi(rozciaganiev2,yes).

wyborem_mo¿e_byæ(lekkoatletyka) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(sport_silowy,no),
   u¿ytkownik_mówi(rozciaganiev2,no),
   u¿ytkownik_mówi(naturalny_ruch,yes).

wyborem_mo¿e_byæ(kolarstwo) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,yes),
   u¿ytkownik_mówi(sport_silowy,no),
   u¿ytkownik_mówi(rozciaganiev2,no),
   u¿ytkownik_mówi(naturalny_ruch,no).

wyborem_mo¿e_byæ(akrobatyka_powietrzna) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,yes).

wyborem_mo¿e_byæ(fitnessv2) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,yes),
   u¿ytkownik_mówi(duzo_ruchu,yes),
   u¿ytkownik_mówi(sport_silowy2,yes).


wyborem_mo¿e_byæ(aerobik) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,yes),
   u¿ytkownik_mówi(duzo_ruchu,yes),
   u¿ytkownik_mówi(sport_silowy2,no),
   u¿ytkownik_mówi(muzyka,yes).

wyborem_mo¿e_byæ(fit_and_jump) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,yes),
   u¿ytkownik_mówi(duzo_ruchu,yes),
   u¿ytkownik_mówi(sport_silowy2,no),
   u¿ytkownik_mówi(muzyka,no).

wyborem_mo¿e_byæ(yoga) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,yes),
   u¿ytkownik_mówi(duzo_ruchu,no).

wyborem_mo¿e_byæ(trojboj_silowy) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,no),
   u¿ytkownik_mówi(sport_silowy3,yes),
   u¿ytkownik_mówi(podnoszenie_ciezarow,yes).

wyborem_mo¿e_byæ(wspinaczka) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,no),
   u¿ytkownik_mówi(sport_silowy3,yes),
   u¿ytkownik_mówi(podnoszenie_ciezarow,no).

wyborem_mo¿e_byæ(jezdziectwo) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,no),
   u¿ytkownik_mówi(sport_silowy3, no),
   u¿ytkownik_mówi(sport_ze_zwierzetami,yes).

wyborem_mo¿e_byæ(brydz) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,no),
   u¿ytkownik_mówi(sport_silowy3, no),
   u¿ytkownik_mówi(sport_ze_zwierzetami,no),
   u¿ytkownik_mówi(karciany,yes).

wyborem_mo¿e_byæ(brak_sportu) :-
   u¿ytkownik_mówi(sport_zespolowy,no),
   u¿ytkownik_mówi(sport_wodny,no),
   u¿ytkownik_mówi(sport_zimowy,no),
   u¿ytkownik_mówi(zwiazany_z_walka,no),
   u¿ytkownik_mówi(sport_z_partnerem,no),
   u¿ytkownik_mówi(sport_wytrzymalosciowy,no),
   u¿ytkownik_mówi(sport_ekstremalny,no),
   u¿ytkownik_mówi(zwiazane_z_rozciaganiem,no),
   u¿ytkownik_mówi(sport_silowy3, no),
   u¿ytkownik_mówi(sport_ze_zwierzetami,no),
   u¿ytkownik_mówi(karciany,no).

%
:- dynamic(zapisana_odp/2).


%   Pozbycie siê zapisanych odpowiedzi bez
%   bez zniesienia dynamicznej deklaracji.


czysc_zapisane_odpowiedzi :- retract(zapisana_odp(_,_)),fail.
czysc_zapisane_odpowiedzi.



%   Procedura uzyskania odpowiedzi u¿ytkownika na ka¿de pytanie w razie potrzeby,
%   lub zadaj pytanie, jesli nie zosta³o ono ju¿ zadane


u¿ytkownik_mówi(Q,A) :- zapisana_odp(Q,A).

u¿ytkownik_mówi(Q,A) :- \+ zapisana_odp(Q,_),
                  nl,nl,
                  zadaj_pytanie(Q),
                  wez_tak_lub_nie(Response),
                  asserta(zapisana_odp(Q,Response)),
                  Response = A.



% Tresci pytañ


zadaj_pytanie(jestes_wysoki) :-
   write('Jestes wysoki i chcesz by wzrost mia³ wp³yw na sport, który Ci wybierzemy?'),nl.

zadaj_pytanie(lubisz_biegac) :-
   write('Czy chcesz aby sport by³ zwi¹zany z bieganiem? '),nl.

zadaj_pytanie(sport_zespolowy) :-
   write('Czy chcesz aby by³ to sport zespo³owy? '),nl.

zadaj_pytanie(reka_noga) :-
   write('Wolisz graæ rêkoma? '),nl.

zadaj_pytanie(sport_wodny) :-
   write('Czy chcesz, aby to byl sport wodny? '),nl.

zadaj_pytanie(stroj_kapielowy) :-
   write('Czy chcesz nosic stroj kapielowy? '),nl.

zadaj_pytanie(rozciaganie) :-
   write('Czy zale¿y Ci na rozci¹ganiu siê? '),nl.

zadaj_pytanie(rozciaganiev2) :-
   write('Czy zale¿y Ci na rozci¹ganiu siê? '),nl.

zadaj_pytanie(techniczne_plywanie) :-
   write('Czy zale¿y Ci na p³ywaniu okreslona technika? '),nl.

zadaj_pytanie(cwiczenie_silowe) :-
   write('Czy zale¿y Ci na nabraniu sily? '),nl.

zadaj_pytanie(sport_zimowy) :-
   write('Czy chcesz, aby to by³ sport zimowy? '),nl.

zadaj_pytanie(nogi_zlaczone) :-
   write('Czy nogi mog¹ byæ ze sob¹ z³¹czone podczas jazdy? '),nl.

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

zadaj_pytanie(lek_wysokosci) :-
   write('Masz lêk wysokosci? '),nl.

zadaj_pytanie(sport_silowy) :-
   write('Sport silowy? '),nl.

zadaj_pytanie(sport_silowy2) :-
   write('Sport silowy? '),nl.

zadaj_pytanie(sport_silowy3) :-
   write('Sport silowy? '),nl.

zadaj_pytanie(naturalny_ruch) :-
   write('Lubisz normalna aktywnosc fizyczna? '),nl.

zadaj_pytanie(sport_ekstremalny) :-
   write('Lubisz dawkê adrenaliny? '),nl.

zadaj_pytanie(zwiazane_z_rozciaganiem) :-
   write('Chcesz sie porozciagac? '),nl.

zadaj_pytanie(duzo_ruchu) :-
   write('Chcesz by zajêcia by³y dosyæ ruchliwe? '),nl.

zadaj_pytanie(muzyka) :-
   write('Chcesz, aby æwiczeniom towarzyszy³a muzyka? '),nl.

zadaj_pytanie(podnoszenie_ciezarow) :-
   write('Czy chcesz podnosiæ ciê¿ary? '),nl.

zadaj_pytanie(sport_ze_zwierzetami) :-
   write('Chcesz æwiczyc przy asyscie zwierz¹t? '),nl.

zadaj_pytanie(karciany) :-
   write('Lubisz gre w karty? '),nl.

zadaj_pytanie(brak_sportu) :-
   write('Lubisz gre w karty? '),nl.

zadaj_pytanie() :-
   write('Czy... ? '),nl.




%  Wyjasnienia na diagnozy


explain(koszykowka) :-
   write('koszykówka!'),nl.

explain(pilka_nozna) :-
   write('pi³ka no¿na!'),nl.

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
   write('¿eglarstwo!'),nl.

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
   write('sto³owy!'),nl.

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
   write('trójbój si³owy!'),nl.

explain(jezdziectwo) :-
   write('jeŸdziectwo!'),nl.

explain(brydz) :-
   write('bryd¿!'),nl.

explain(yoga) :-
   write('yoga!'),nl.


explain(brak_sportu) :-
   nl,
write('Jak widaæ nic Ci nie odpowiada, najwidoczniej sport nie jest dla ka¿dego.'),nl.