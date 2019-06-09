% PUNTO 5
ajusteConsultora(Partido, Provincia, VerdaderoPorcentaje):-
    partidoGana(Partido, Provincia),
    intencionDeVotoEn(Provincia, Partido, Porcentaje),
    VerdaderoPorcentaje is Porcentaje - 20.

ajusteConsultora(Partido, Provincia, VerdaderoPorcentaje):-
    not(partidoGana(Partido, Provincia)),
    intencionDeVotoEn(Provincia, Partido, Porcentaje),
    VerdaderoPorcentaje is Porcentaje + 5.

partidoGana(Partido, Provincia):-
     intencionDeVotoEn(Provincia, Partido, Porcentaje),
     intencionDeVotoEn(Provincia, rojo, Porcentaje1),
     intencionDeVotoEn(Provincia, azul, Porcentaje2),
     intencionDeVotoEn(Provincia, amarillo, Porcentaje3),
     Porcentaje >= Porcentaje1,
     Porcentaje >= Porcentaje2,
     Porcentaje >= Porcentaje3.