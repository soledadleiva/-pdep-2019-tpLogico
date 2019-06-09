% PUNTO 2 
esPicante(Provincia):-
    partido(Provincia, azul, Habitantes),
    partido(Provincia, amarillo, Habitantes),
    masDe1MillonDeHabitantes(Habitantes).

esPicante(Provincia):-
    partido(Provincia, azul, Habitantes),
    partido(Provincia, rojo, Habitantes),
    masDe1MillonDeHabitantes(Habitantes).

esPicante(Provincia):-
    partido(Provincia, rojo, Habitantes),
    partido(Provincia, amarillo, Habitantes),
    masDe1MillonDeHabitantes(Habitantes).

masDe1MillonDeHabitantes(Habitantes):-
    Habitantes >= 1000000.