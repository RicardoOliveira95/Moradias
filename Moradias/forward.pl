:-  op( 800, fx, if).
:-  op( 700, xfx, then).
:-  op( 500, xfy, and).
:-  op( 300, xfy, or).

% Simple forward chaining in Prolog
demo:- new_derived_fact(P), !, % A new fact

write('De acordo com as opcoes por si escolhidas encontramos o seguinte Festival '),resultadowrite(P), nl,
assert(fact(P)),

demo. % Continue

demo:- write( 'Não existem outros festivais...'), nl. % All facts derived
new_derived_fact( Concl) :-
if Cond then Concl, % A rule
\+ fact( Concl), % Rule's conclusion not yet a fact
composed_fact( Cond). % Condition true?
composed_fact( Cond) :-
fact( Cond). % Simple fact
composed_fact( Cond1 and Cond2) :-
composed_fact( Cond1),
composed_fact( Cond2). % Both conjuncts true
composed_fact( Cond1 or Cond2) :-
composed_fact( Cond1);
composed_fact( Cond2).
