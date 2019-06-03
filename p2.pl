% PUNTO 2 
esPicante(Provincia):-
    partido(Provincia, azul, Habitantes),
    partido(Provincia, amarillo, Habitantes),
    Habitantes >= 1000000. 

esPicante(Provincia):-
    partido(Provincia, azul, Habitantes),
    partido(Provincia, rojo, Habitantes),
    Habitantes >= 1000000.

esPicante(Provincia):-
    partido(Provincia, rojo, Habitantes),
    partido(Provincia, amarillo, Habitantes),
    Habitantes >= 1000000.