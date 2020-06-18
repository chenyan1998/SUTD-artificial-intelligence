;Header and description

(define (domain logistics)

(:requirements :strips)

(:predicates
(pkg-in ?pkg ?loc) ;package x in loc, location can be truck or any place
(truck-in ?loc) ;Truck in loc, location can be any place 
(connected ?x ?y) ;location x and location y is connected 
)


; ===== ACTIONS =======
(:action MOVE ;move from location x to y
    :parameters (?x ?y) 
    :precondition (and (truck-in ?x) (connected ?x ?y))
    :effect (and (truck-in ?y) (not (truck-in ?x)) )
)

(:action LOAD ;load package to truck at location x
    :parameters (?pkg ?x) 
    :precondition (and (truck-in ?x) (pkg-in ?pkg ?x) )
    :effect (and (pkg-in ?pkg truck) (not (pkg-in ?pkg ?x)) )
)

(:action UNLOAD ;unload package at location x
    :parameters (?pkg ?x)
    :precondition (and (truck-in ?x) (pkg-in ?pkg truck) )
    :effect (and (pkg-in ?pkg ?x) (not (pkg-in ?pkg truck)) )
)


)