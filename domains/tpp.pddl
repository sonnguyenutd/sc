(define (domain TPP-Propositional)
(:requirements :strips :typing)
(:types place locatable level - object
	depot market - place
	truck goods - locatable)

(:predicates (loaded ?g - goods ?t - truck ?l - level)
	     (ready-to-load ?g - goods ?m - market ?l - level) 
	     (stored ?g - goods ?l - level) 
	     (on-sale ?g - goods ?m -  market ?l - level)
	     (next ?l1 ?l2 - level)
	     (at ?t - truck ?p - place)
	     (connected ?p1 ?p2 - place))

(:action drive
 :parameters (?t - truck ?from ?to - place)
 :precondition (and (at ?t ?from) (connected ?from ?to))
 :effect (and (not (at ?t ?from)) (at ?t ?to)))

; ### LOAD ###
; ?l1 is the level of ?g ready to be loaded at ?m before loading
; ?l2 is the level of ?g ready to be loaded at ?m after loading
; ?l3 is the level of ?g in ?t before loading
; ?l4 is the level of ?g in ?t after loading

(:action load
 :parameters (?g - goods ?t - truck ?m - market ?l1 ?l2 ?l3 ?l4 - level)
 :precondition (and (at ?t ?m) (loaded ?g ?t ?l3)
		    (ready-to-load ?g ?m ?l2) (next ?l2 ?l1) (next ?l4 ?l3))
 :effect (and (loaded ?g ?t ?l4) (not (loaded ?g ?t ?l3)) 
	      (ready-to-load ?g ?m ?l1) (not (ready-to-load ?g ?m ?l2))))


; ### UNLOAD ###
; ?l1 is the level of ?g in ?t before unloading
; ?l2 is the level of ?g in ?t after unloading
; ?l3 is the level of ?g in ?d before unloading
; ?l4 is the level of ?g in ?d after unloading

(:action unload
 :parameters (?g - goods ?t - truck ?d - depot ?l1 ?l2 ?l3 ?l4 - level)
 :precondition (and (at ?t ?d) (loaded ?g ?t ?l2)
		    (stored ?g ?l3) (next ?l2 ?l1) (next ?l4 ?l3))
 :effect (and (loaded ?g ?t ?l1) (not (loaded ?g ?t ?l2)) 
	      (stored ?g ?l4) (not (stored ?g ?l3))))


; ### BUY ###
; ?l1 is the level of ?g on sale at ?m before buying
; ?l2 is the level of ?g on sale at ?m after buying 
; ?l3 is the level of ?g ready to be loaded at ?m before buying
; ?l4 is the level of ?g ready to be loaded at ?m after buying

(:action buy
 :parameters (?t - truck ?g - goods ?m - market ?l1 ?l2 ?l3 ?l4 - level)
 :precondition (and (at ?t ?m) (on-sale ?g ?m ?l2) (ready-to-load ?g ?m ?l3)
		    (next ?l2 ?l1) (next ?l4 ?l3))
 :effect (and (on-sale ?g ?m ?l1) (not (on-sale ?g ?m ?l2)) 
	      (ready-to-load ?g ?m ?l4) (not (ready-to-load ?g ?m ?l3))))


(:action act_tpp-propositional_110123
	:parameters ( ?level_452196956 - level ?market_452196958 - market ?level_452196955 - level ?goods_452196959 - goods ?truck_452196957 - truck)
	:precondition (and 
			(loaded ?goods_452196959 ?truck_452196957 ?level_452196956) 
			(next ?level_452196956 ?level_452196955) 
			(ready-to-load ?goods_452196959 ?market_452196958 ?level_452196956)
	)
	:effect (and 
		(loaded ?goods_452196959 ?truck_452196957 ?level_452196955) 
		(ready-to-load ?goods_452196959 ?market_452196958 ?level_452196955) 
		(not (stored ?goods_452196959 ?level_452196956))
	)
)

(:action act_tpp-propositional_151805
	:parameters ( ?level_410340240 - level ?truck_410340236 - truck ?goods_410340235 - goods ?market_410340238 - market ?goods_410340239 - goods ?level_410340237 - level)
	:precondition (and 
			(loaded ?goods_410340235 ?truck_410340236 ?level_410340237) 
			(next ?level_410340237 ?level_410340240) 
			(ready-to-load ?goods_410340239 ?market_410340238 ?level_410340237)
	)
	:effect (and 
		(loaded ?goods_410340235 ?truck_410340236 ?level_410340240) 
		(ready-to-load ?goods_410340239 ?market_410340238 ?level_410340240) 
		(not (stored ?goods_410340235 ?level_410340237))
	)
)

(:action act_tpp-propositional_16116
	:parameters ( ?level_14754751 - level ?goods_14754753 - goods ?truck_14754752 - truck ?level_14754754 - level ?level_14754750 - level)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(next ?level_14754751 ?level_14754754)
	)
)

(:action act_tpp-propositional_16223
	:parameters ( ?truck_14754752 - truck ?level_14754750 - level ?goods_14754753 - goods ?level_14754751 - level ?level_14754754 - level)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754751)
	)
)

(:action act_tpp-propositional_151506
	:parameters ( ?level_14754750 - level ?level_14754754 - level ?goods_14754753 - goods ?level_14754751 - level ?truck_14754752 - truck)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754750)
	)
)

(:action act_tpp-propositional_30538
	:parameters ( ?level_9466532 - level ?level_9466533 - level ?goods_9466534 - goods ?truck_9466535 - truck)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(not (loaded ?goods_9466534 ?truck_9466535 ?level_9466532)) 
		(next ?level_9466533 ?level_9466532) 
		(stored ?goods_9466534 ?level_9466533) 
		(stored ?goods_9466534 ?level_9466532)
	)
)

)