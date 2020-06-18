(define (problem logistics-prob) 
(:domain logistics)
(:objects changi tampinese bedok truck pkg1 pkg2)

(:init
    (pkg-in pkg1 bedok)
    (pkg-in pkg2 changi)
    (truck-in tampinese)
    (connected changi bedok) (connected bedok changi)
    (connected changi tampinese) (connected tampinese changi)
    (connected bedok tampinese) (connected tampinese bedok)
)

(:goal (and (pkg-in pkg1 changi) (pkg-in pkg2 bedok)))

)
