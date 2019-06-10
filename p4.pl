% PUNTO 4
elGranCandidato(Candidato):-
    ganaCandidato(Candidato),
    esJoven(Candidato).

ganaCandidato(Candidato):-
    esCandidato(Candidato),
    forall(partido(Candidato, Provincia, Partido),partidoGana(Partido, Provincia)).

esCandidato(Candidato):-
    candidato(Candidato, _, _).

esJoven(Candidato):-
    esCandidato(Candidato),
    candidato(Candidato, Edad, Partido),
    forall(candidato(_, ParaTodaEdad, Partido), Edad =< ParaTodaEdad).