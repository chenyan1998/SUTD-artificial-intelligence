;Header and description

(define (domain logistics)

(:requirements :strips :typing)
(:types truck
        location - place)

(:predicates
(pkg-in ?loc - place) ;package in loc, location can be truck or any place
(truck-in ?loc - place) ;Truck in loc, location can be any place 
(connected ?loc - place ?loc - place) ;location x and location y is connected 
)


; ===== ACTIONS =======
(:action MOVE ;move from location x to y
    :parameters (?x - place ?y - place) 
    :precondition (and (truck-in ?x) (connected ?x ?y))
    :effect (and (truck-in ?y) (not (truck-in ?x)) )
)

(:action LOAD ;load package to truck at location x
    :parameters (?x - place) 
    :precondition (and (truck-in ?x) (pkg-in ?x) )
    :effect (and (pkg-in ?truck) (not (pkg-in ?x)) )
)

(:action UNLOAD ;unload package at location x
    :parameters (?x - place)
    :precondition (and (truck-in ?x) (pkg-in ?truck) )
    :effect (and (pkg-in ?x) (not (pkg-in ?truck)) )
)


)