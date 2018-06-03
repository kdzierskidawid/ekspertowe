% Author:
% Date: 02.06.2018

/* random(N,N2,R).
1. domain - variable
2. rules - constraints
3. Solution
*/

num(0):-
nl,
   write('Idealnym sportem dla Ciebie bêdzie ').
num(1):-
nl,
   write('Doskonale! Sport dla Ciebie to ').
num(2):-
nl,
   write('Nie pêkaj, czeka na Ciebie  ').
num(3):-
nl,
   write('O tak! Nie mog³es trafic lepiej niz na ').
num(4):-
nl,
   write('Troche ruchu jeszcze nikomu nie zaszkodzilo, ').
num(5):-
nl,
   write('Raz, dwa, trzy, jak sie patrzy ').
num(6):-
nl,
   write('Krotko i na temat,  ').
num(7):-
nl,
   write('Co tu w trawie piszczy? To ').
num(8):-
nl,
   write('Poszczescilo Ci sie, ').
num(9):-
nl,
   write('Tak, tak, tak! ').

our_random :-
        random(0,9,R),
        num(R).