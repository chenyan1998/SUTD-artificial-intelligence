(define (problem logistics-prob) 
(:domain logistics)
(:objects changi tampinese bedok truck)

(:init
    (pkg-in bedok)
    (truck-in tampinese)
    (connected changi bedok) (connected bedok changi)
    (connected changi tampinese) (connected tampinese changi)
    (connected bedok tampinese) (connected tampinese bedok)
)

(:goal (and (pkg-in changi)))

)
