% Author:
% Date: 02.06.2018

wez_tak_lub_nie(Result) :- get(Char),              % pobierz znak
                         get0(_),                  % wykonaj return
                         interpret(Char,Result),
                         !.                        % przytnij tekst

wez_tak_lub_nie(Result) :- nl,
                         write('Wybierz T lub N:'),
                         wez_tak_lub_nie(Result).


interpret(84,yes).  % ASCII 84  = 'T'
interpret(116,yes). % ASCII 116 = 't'
interpret(78,no).   % ASCII 78  = 'N'
interpret(110,no).  % ASCII 110 = 'n'

