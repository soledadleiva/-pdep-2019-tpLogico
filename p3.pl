% PUNTO 3
leGanaA(Candidato1, Candidato2, Provincia):-
    compiteEnProvincia(Candidato1, Provincia),
    not(compiteEnProvincia(Candidato2, Provincia)).

leGanaA(Candidato1, Candidato2, Provincia):-
    compiteEnProvincia(Candidato1, Provincia),
    compiteEnProvincia(Candidato2, Provincia),
    mayorPorcentaje(Candidato1, Candidato2, Provincia).

leGanaA(Candidato1, Candidato2, Provincia):-
    candidato(Candidato1, _, Partido),
    candidato(Candidato2, _, Partido),
    intencionDeVotoEn(Provincia, Partido, _).

compiteEnProvincia(Candidato1, Provincia):-
    candidato(Candidato1, _, Partido),
    partido(Provincia, Partido, _).

mayorPorcentaje(Candidato1, Candidato2, Provincia):-
    candidato(Candidato1, _, Partido1),
    candidato(Candidato2, _, Partido2),
    intencionDeVotoEn(Provincia, Partido1, Porcentaje1),
    intencionDeVotoEn(Provincia, Partido2, Porcentaje2),
    Porcentaje1 > Porcentaje2.