% prolog
% http://xkcd.com/287/
 
appetizer(mixed_fruit, 2.15).
appetizer(french_fries, 2.75).
appetizer(side_salad, 3.35).
appetizer(hot_wings, 3.55).
appetizer(mozzarella_sticks, 4.20).
appetizer(sampler_plate, 5.80).
 
order(L) :- order(L, 0, 0).
order([], Total, _) :- Total =:= 15.05.
order([A|As], Total, LastOrder) :-
Total < 15.05,
appetizer(A, P),
P >= LastOrder,
Total_ is Total + P,
order(As, Total_, P). 