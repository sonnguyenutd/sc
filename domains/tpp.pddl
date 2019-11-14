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


(:action act_tpp-propositional_267851
	:parameters ( ?goods_524119774 - goods ?goods_524119776 - goods ?truck_524119775 - truck ?level_524119777 - level ?level_524119773 - level ?market_524119772 - market)
	:precondition (and 
			(loaded ?goods_524119776 ?truck_524119775 ?level_524119777) 
			(next ?level_524119777 ?level_524119773) 
			(ready-to-load ?goods_524119774 ?market_524119772 ?level_524119773)
	)
	:effect (and 
		(loaded ?goods_524119776 ?truck_524119775 ?level_524119773) 
		(loaded ?goods_524119774 ?truck_524119775 ?level_524119773) 
		(not (loaded ?goods_524119774 ?truck_524119775 ?level_524119777)) 
		(ready-to-load ?goods_524119776 ?market_524119772 ?level_524119777) 
		(not (stored ?goods_524119774 ?level_524119773))
	)
)


(:action act_tpp-propositional_291336
	:parameters ( ?goods_570093189 - goods ?truck_570093186 - truck ?goods_570093188 - goods ?level_570093190 - level ?level_570093185 - level ?level_570093187 - level)
	:precondition (and 
			(loaded ?goods_570093189 ?truck_570093186 ?level_570093190) 
			(next ?level_570093185 ?level_570093187) 
			(next ?level_570093185 ?level_570093190) 
			(stored ?goods_570093188 ?level_570093187)
	)
	:effect (and 
		(not (loaded ?goods_570093188 ?truck_570093186 ?level_570093185)) 
		(next ?level_570093187 ?level_570093185) 
		(stored ?goods_570093189 ?level_570093190)
	)
)

)