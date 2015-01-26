% Make a simple knowledge base. Represent some of your favorite
% books and authors.
author(apprenticeship, dave_hoover).
author(getting_real, jason_fried).
author(rework, jason_fried).

% Find all books in your knowledge base written by one author.
author(Book, jason_fried).

% Make a knowledge base representing musicians and instruments.
plays(john, guitar).
plays(watson, guitar).
plays(lennon, piano).
plays(me, none).

% Also represent musicians and their genre of music.

genre(john, rock).
genre(watson, pop).
genre(lennon, jazz).
genre(me, dance).


% Find all musicians who play the guitar.
plays(Musician, guitar).
