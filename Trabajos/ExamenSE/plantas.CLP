(defrule tipo-problemas_plantas1
(initial-fact)
=>
(printout t "La planta crece poco si/no?" crlf)
(assert (tipo-problema (read)))
)

(defrule preguntas
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "La planta tiene color amarillo palido (si/no)?" crlf)
(assert (problemas-planta(read)))
)
(defrule preguntas1
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "Las hojas tiene color pardo rojiso(si/no)?" crlf)
(assert (problemas-planta2(read)))
)

(defrule preguntas2
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "La raiz de la planta tiene poco crecimiento (si/no)?" crlf)
(assert (problemas-planta3(read)))
)

(defrule preguntas3
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "Una planta tiene tallo fusiforme  (si/no)?" crlf)
(assert (problemas-planta4(read)))
)

(defrule preguntas4
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "Una planta tiene color purpura  (si/no)?" crlf)
(assert (problemas-planta5(read)))
)

(defrule preguntas5
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "La planta tiene un retraso en la madurez  (si/no)?" crlf)
(assert (problemas-planta6(read)))
)

(defrule preguntas6
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "Los bordes de las hojas aparecen chamuscados (si/no)?" crlf)
(assert (problemas-planta7(read)))
)

(defrule preguntas7
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "La planta tiene tallos debilitados (si/no)?" crlf)
(assert (problemas-planta8(read)))
)

(defrule preguntas8
(or(tipo-problema no)(tipo-problema si))
=>
(printout t "La planta tiene semillas o frutas marchitas (si/no)?" crlf)
(assert (problemas-planta9(read)))
)

(defrule resultado1
(or(tipo-problema si)
(problemas-planta si)
(problemas-planta2 si))
=>
(assert(deficiencia-nitrogeno))
(printout t "Tiene deficiencia nitrogeno" crlf)
)

(defrule resultado2
(or(problemas-planta3 si)
(problemas-planta4 si)
(problemas-planta5 si)
(problemas-planta6 si))
=>
(assert(deficiencia-fosforo))
(printout t "Tiene deficiencia fosforo" crlf)
)

(defrule resultado3
(or(problemas-planta7 si)
(problemas-planta8 si)
(problemas-planta9 si))
=>
(assert(deficiencia-potasio))
(printout t "Tiene deficiencia potasio" crlf)
)
