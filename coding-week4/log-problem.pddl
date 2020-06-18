(define (problem logistics-0) 
(:domain logistics)
(:objects loc1 loc3 loc2 truck - place )

(:init
    (pkg-in loc2)
    (truck-in loc3)
    (connected loc1 loc2) (connected loc2 loc1)
    (connected loc1 loc3) (connected loc3 loc1)
    (connected loc2 loc3) (connected loc3 loc2)
)

(:goal (and (pkg-in loc1)))


)
