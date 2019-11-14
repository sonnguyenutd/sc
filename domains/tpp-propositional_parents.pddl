(:action act_act_tpp-propositional_301955_302420
	:parameters ( ?goods_524119776 - goods ?truck_524119775 - truck ?level_524119773 - level ?goods_524119774 - goods ?level_524119777 - level ?market_524119772 - market)
	:precondition (and 
			(loaded ?goods_524119776 ?truck_524119775 ?level_524119777) 
			(next ?level_524119777 ?level_524119773) 
			(ready-to-load ?goods_524119774 ?market_524119772 ?level_524119773)
	)
	:effect (and 
		(loaded ?goods_524119774 ?truck_524119775 ?level_524119773) 
		(not (loaded ?goods_524119774 ?truck_524119775 ?level_524119777)) 
		(loaded ?goods_524119776 ?truck_524119775 ?level_524119773) 
		(next ?level_524119773 ?level_524119777) 
		(ready-to-load ?goods_524119776 ?market_524119772 ?level_524119777) 
		(not (stored ?goods_524119774 ?level_524119773))
	)
)

(:action act_act_tpp-propositional_301955_302421
	:parameters ( ?goods_524119776 - goods ?truck_524119775 - truck ?level_524119773 - level ?goods_524119774 - goods ?level_524119777 - level ?market_524119772 - market)
	:precondition (and 
			(loaded ?goods_524119776 ?truck_524119775 ?level_524119777) 
			(next ?level_524119777 ?level_524119773) 
			(ready-to-load ?goods_524119774 ?market_524119772 ?level_524119773)
	)
	:effect (and 
		(not (loaded ?goods_524119774 ?truck_524119775 ?level_524119773)) 
		(next ?level_524119773 ?level_524119777) 
		(not (ready-to-load ?goods_524119776 ?market_524119772 ?level_524119773))
	)
)

(:action act_act_tpp-propositional_301956_302422
	:parameters ( ?level_570093185 - level ?level_570093187 - level ?truck_570093186 - truck ?level_570093190 - level ?goods_570093189 - goods ?goods_570093188 - goods)
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

(:action act_act_tpp-propositional_301957_302423
	:parameters ( ?market_490522218 - market ?goods_490522215 - goods ?level_490522217 - level ?level_490522214 - level ?level_490522216 - level)
	:precondition (and 
			(next ?level_490522217 ?level_490522214) 
			(ready-to-load ?goods_490522215 ?market_490522218 ?level_490522217) 
			(ready-to-load ?goods_490522215 ?market_490522218 ?level_490522214) 
			(stored ?goods_490522215 ?level_490522216)
	)
	:effect (and 
		(next ?level_490522214 ?level_490522217) 
		(ready-to-load ?goods_490522215 ?market_490522218 ?level_490522216)
	)
)

(:action act_act_tpp-propositional_301958_302424
	:parameters ( ?market_589032564 - market ?level_589032565 - level ?level_589032567 - level ?truck_589032568 - truck ?level_589032566 - level ?goods_589032569 - goods)
	:precondition (and 
			(loaded ?goods_589032569 ?truck_589032568 ?level_589032566) 
			(next ?level_589032566 ?level_589032567) 
			(next ?level_589032565 ?level_589032567) 
			(ready-to-load ?goods_589032569 ?market_589032564 ?level_589032567)
	)
	:effect (and 
		(not (loaded ?goods_589032569 ?truck_589032568 ?level_589032567)) 
		(next ?level_589032565 ?level_589032566) 
		(not (ready-to-load ?goods_589032569 ?market_589032564 ?level_589032566))
	)
)

(:action act_act_tpp-propositional_301959_302425
	:parameters ( ?goods_525100563 - goods ?level_525100559 - level ?market_525100561 - market ?level_525100562 - level ?level_525100560 - level)
	:precondition (and 
			(next ?level_525100560 ?level_525100562) 
			(next ?level_525100562 ?level_525100560) 
			(ready-to-load ?goods_525100563 ?market_525100561 ?level_525100559) 
			(stored ?goods_525100563 ?level_525100560)
	)
	:effect (and 
		(next ?level_525100559 ?level_525100560) 
		(not (ready-to-load ?goods_525100563 ?market_525100561 ?level_525100560)) 
		(ready-to-load ?goods_525100563 ?market_525100561 ?level_525100562) 
		(not (stored ?goods_525100563 ?level_525100559))
	)
)

(:action act_act_tpp-propositional_301960_302426
	:parameters ( ?market_5337862 - market ?level_5337860 - level ?goods_5337861 - goods ?level_5337859 - level)
	:precondition (and 
			(next ?level_5337860 ?level_5337859) 
			(ready-to-load ?goods_5337861 ?market_5337862 ?level_5337860) 
			(stored ?goods_5337861 ?level_5337860)
	)
	:effect (and 
		(next ?level_5337859 ?level_5337860) 
		(ready-to-load ?goods_5337861 ?market_5337862 ?level_5337859)
	)
)

(:action act_act_tpp-propositional_301960_302427
	:parameters ( ?market_5337862 - market ?level_5337860 - level ?goods_5337861 - goods ?level_5337859 - level)
	:precondition (and 
			(next ?level_5337860 ?level_5337859) 
			(ready-to-load ?goods_5337861 ?market_5337862 ?level_5337860) 
			(stored ?goods_5337861 ?level_5337860)
	)
	:effect (and 
		(next ?level_5337859 ?level_5337860) 
		(not (ready-to-load ?goods_5337861 ?market_5337862 ?level_5337859))
	)
)

(:action act_act_tpp-propositional_301961_302428
	:parameters ( ?market_33452037 - market ?level_33452039 - level ?level_33452036 - level ?level_33452035 - level ?goods_33452038 - goods)
	:precondition (and 
			(next ?level_33452039 ?level_33452036) 
			(ready-to-load ?goods_33452038 ?market_33452037 ?level_33452039) 
			(stored ?goods_33452038 ?level_33452035)
	)
	:effect (and 
		(next ?level_33452036 ?level_33452039) 
		(next ?level_33452036 ?level_33452035) 
		(next ?level_33452039 ?level_33452035) 
		(ready-to-load ?goods_33452038 ?market_33452037 ?level_33452035) 
		(ready-to-load ?goods_33452038 ?market_33452037 ?level_33452036)
	)
)

(:action act_act_tpp-propositional_301961_302429
	:parameters ( ?market_33452037 - market ?level_33452039 - level ?level_33452036 - level ?level_33452035 - level ?goods_33452038 - goods)
	:precondition (and 
			(next ?level_33452039 ?level_33452036) 
			(ready-to-load ?goods_33452038 ?market_33452037 ?level_33452039) 
			(stored ?goods_33452038 ?level_33452035)
	)
	:effect (and 
		(next ?level_33452039 ?level_33452035) 
		(not (ready-to-load ?goods_33452038 ?market_33452037 ?level_33452036))
	)
)

(:action act_act_tpp-propositional_301962_302430
	:parameters ( ?goods_50220328 - goods ?market_50220326 - market ?level_50220329 - level ?level_50220327 - level)
	:precondition (and 
			(next ?level_50220327 ?level_50220329) 
			(ready-to-load ?goods_50220328 ?market_50220326 ?level_50220327) 
			(stored ?goods_50220328 ?level_50220329)
	)
	:effect (and 
		(next ?level_50220329 ?level_50220327) 
		(ready-to-load ?goods_50220328 ?market_50220326 ?level_50220329) 
		(stored ?goods_50220328 ?level_50220327)
	)
)

(:action act_act_tpp-propositional_301963_302431
	:parameters ( ?market_139355815 - market ?level_139355814 - level ?goods_139355816 - goods ?level_139355817 - level)
	:precondition (and 
			(next ?level_139355817 ?level_139355814) 
			(ready-to-load ?goods_139355816 ?market_139355815 ?level_139355814) 
			(stored ?goods_139355816 ?level_139355817)
	)
	:effect (and 
		(next ?level_139355814 ?level_139355817) 
		(ready-to-load ?goods_139355816 ?market_139355815 ?level_139355817)
	)
)

(:action act_act_tpp-propositional_301963_302432
	:parameters ( ?market_139355815 - market ?level_139355814 - level ?goods_139355816 - goods ?level_139355817 - level)
	:precondition (and 
			(next ?level_139355817 ?level_139355814) 
			(ready-to-load ?goods_139355816 ?market_139355815 ?level_139355814) 
			(stored ?goods_139355816 ?level_139355817)
	)
	:effect (and 
		(next ?level_139355814 ?level_139355817) 
		(not (ready-to-load ?goods_139355816 ?market_139355815 ?level_139355817))
	)
)

(:action act_act_tpp-propositional_301964_302433
	:parameters ( ?level_201393660 - level ?level_201393661 - level ?goods_201393657 - goods ?market_201393659 - market ?level_201393658 - level)
	:precondition (and 
			(next ?level_201393661 ?level_201393658) 
			(ready-to-load ?goods_201393657 ?market_201393659 ?level_201393658) 
			(stored ?goods_201393657 ?level_201393660)
	)
	:effect (and 
		(next ?level_201393658 ?level_201393660) 
		(ready-to-load ?goods_201393657 ?market_201393659 ?level_201393661)
	)
)

(:action act_act_tpp-propositional_301965_302434
	:parameters ( ?level_238717371 - level ?market_238717369 - market ?goods_238717370 - goods ?level_238717368 - level)
	:precondition (and 
			(next ?level_238717368 ?level_238717371) 
			(ready-to-load ?goods_238717370 ?market_238717369 ?level_238717371) 
			(stored ?goods_238717370 ?level_238717371)
	)
	:effect (and 
		(next ?level_238717371 ?level_238717368) 
		(ready-to-load ?goods_238717370 ?market_238717369 ?level_238717368) 
		(stored ?goods_238717370 ?level_238717368)
	)
)

(:action act_act_tpp-propositional_301966_302435
	:parameters ( ?level_518198618 - level ?market_518198620 - market ?truck_518198617 - truck ?level_518198615 - level ?goods_518198616 - goods ?level_518198619 - level)
	:precondition (and 
			(loaded ?goods_518198616 ?truck_518198617 ?level_518198618) 
			(next ?level_518198618 ?level_518198615) 
			(ready-to-load ?goods_518198616 ?market_518198620 ?level_518198619)
	)
	:effect (and 
		(loaded ?goods_518198616 ?truck_518198617 ?level_518198619) 
		(not (loaded ?goods_518198616 ?truck_518198617 ?level_518198615)) 
		(next ?level_518198619 ?level_518198615) 
		(next ?level_518198618 ?level_518198619) 
		(not (ready-to-load ?goods_518198616 ?market_518198620 ?level_518198618)) 
		(ready-to-load ?goods_518198616 ?market_518198620 ?level_518198615) 
		(not (stored ?goods_518198616 ?level_518198615))
	)
)

(:action act_act_tpp-propositional_301966_302436
	:parameters ( ?market_518198620 - market ?level_518198618 - level ?level_518198615 - level ?truck_518198617 - truck ?goods_518198616 - goods ?level_518198619 - level)
	:precondition (and 
			(loaded ?goods_518198616 ?truck_518198617 ?level_518198618) 
			(next ?level_518198618 ?level_518198615) 
			(ready-to-load ?goods_518198616 ?market_518198620 ?level_518198619)
	)
	:effect (and 
		(not (loaded ?goods_518198616 ?truck_518198617 ?level_518198619)) 
		(not (loaded ?goods_518198616 ?truck_518198617 ?level_518198615)) 
		(next ?level_518198615 ?level_518198618) 
		(next ?level_518198619 ?level_518198618) 
		(ready-to-load ?goods_518198616 ?market_518198620 ?level_518198618) 
		(stored ?goods_518198616 ?level_518198615)
	)
)

(:action act_act_tpp-propositional_301966_302437
	:parameters ( ?market_518198620 - market ?level_518198618 - level ?truck_518198617 - truck ?level_518198615 - level ?goods_518198616 - goods ?level_518198619 - level)
	:precondition (and 
			(loaded ?goods_518198616 ?truck_518198617 ?level_518198618) 
			(next ?level_518198618 ?level_518198615) 
			(ready-to-load ?goods_518198616 ?market_518198620 ?level_518198619)
	)
	:effect (and 
		(loaded ?goods_518198616 ?truck_518198617 ?level_518198619) 
		(loaded ?goods_518198616 ?truck_518198617 ?level_518198615) 
		(next ?level_518198615 ?level_518198619) 
		(next ?level_518198619 ?level_518198615) 
		(next ?level_518198619 ?level_518198618) 
		(ready-to-load ?goods_518198616 ?market_518198620 ?level_518198618) 
		(stored ?goods_518198616 ?level_518198618) 
		(not (stored ?goods_518198616 ?level_518198615))
	)
)

(:action act_act_tpp-propositional_301967_302438
	:parameters ( ?truck_202735543 - truck ?goods_202735544 - goods ?level_202735546 - level ?level_202735545 - level ?level_202735542 - level ?goods_202735541 - goods)
	:precondition (and 
			(loaded ?goods_202735541 ?truck_202735543 ?level_202735545) 
			(loaded ?goods_202735544 ?truck_202735543 ?level_202735546) 
			(stored ?goods_202735544 ?level_202735542)
	)
	:effect (and 
		(loaded ?goods_202735541 ?truck_202735543 ?level_202735546) 
		(next ?level_202735542 ?level_202735546) 
		(next ?level_202735546 ?level_202735542) 
		(not (stored ?goods_202735544 ?level_202735545))
	)
)

(:action act_act_tpp-propositional_301967_302439
	:parameters ( ?truck_202735543 - truck ?goods_202735544 - goods ?level_202735546 - level ?level_202735545 - level ?level_202735542 - level ?goods_202735541 - goods)
	:precondition (and 
			(loaded ?goods_202735541 ?truck_202735543 ?level_202735545) 
			(loaded ?goods_202735544 ?truck_202735543 ?level_202735546) 
			(stored ?goods_202735544 ?level_202735542)
	)
	:effect (and 
		(not (loaded ?goods_202735541 ?truck_202735543 ?level_202735546)) 
		(loaded ?goods_202735544 ?truck_202735543 ?level_202735542) 
		(next ?level_202735542 ?level_202735546) 
		(next ?level_202735546 ?level_202735545) 
		(not (stored ?goods_202735544 ?level_202735546))
	)
)

(:action act_act_tpp-propositional_301968_302440
	:parameters ( ?truck_411546936 - truck ?goods_411546938 - goods ?truck_411546934 - truck ?level_411546937 - level ?level_411546935 - level ?level_411546933 - level)
	:precondition (and 
			(loaded ?goods_411546938 ?truck_411546934 ?level_411546937) 
			(loaded ?goods_411546938 ?truck_411546936 ?level_411546935) 
			(stored ?goods_411546938 ?level_411546933)
	)
	:effect (and 
		(not (loaded ?goods_411546938 ?truck_411546936 ?level_411546937)) 
		(loaded ?goods_411546938 ?truck_411546934 ?level_411546933) 
		(next ?level_411546935 ?level_411546937)
	)
)

(:action act_act_tpp-propositional_301969_302441
	:parameters ( ?goods_440732226 - goods ?truck_440732228 - truck ?goods_440732229 - goods ?level_440732227 - level ?level_440732225 - level ?truck_440732230 - truck)
	:precondition (and 
			(loaded ?goods_440732229 ?truck_440732230 ?level_440732225) 
			(loaded ?goods_440732229 ?truck_440732228 ?level_440732225) 
			(stored ?goods_440732226 ?level_440732227)
	)
	:effect (and 
		(loaded ?goods_440732226 ?truck_440732228 ?level_440732227) 
		(not (loaded ?goods_440732229 ?truck_440732230 ?level_440732227)) 
		(next ?level_440732227 ?level_440732225)
	)
)

(:action act_act_tpp-propositional_301970_302442
	:parameters ( ?truck_542874651 - truck ?truck_542874652 - truck ?level_542874654 - level ?level_542874653 - level ?goods_542874650 - goods)
	:precondition (and 
			(loaded ?goods_542874650 ?truck_542874652 ?level_542874653) 
			(loaded ?goods_542874650 ?truck_542874651 ?level_542874653) 
			(stored ?goods_542874650 ?level_542874654)
	)
	:effect (and 
		(loaded ?goods_542874650 ?truck_542874652 ?level_542874654) 
		(not (loaded ?goods_542874650 ?truck_542874651 ?level_542874654)) 
		(next ?level_542874654 ?level_542874653) 
		(not (stored ?goods_542874650 ?level_542874653))
	)
)

(:action act_act_tpp-propositional_301970_302443
	:parameters ( ?truck_542874651 - truck ?truck_542874652 - truck ?level_542874654 - level ?level_542874653 - level ?goods_542874650 - goods)
	:precondition (and 
			(loaded ?goods_542874650 ?truck_542874652 ?level_542874653) 
			(loaded ?goods_542874650 ?truck_542874651 ?level_542874653) 
			(stored ?goods_542874650 ?level_542874654)
	)
	:effect (and 
		(loaded ?goods_542874650 ?truck_542874652 ?level_542874654) 
		(loaded ?goods_542874650 ?truck_542874651 ?level_542874654) 
		(next ?level_542874653 ?level_542874654) 
		(not (stored ?goods_542874650 ?level_542874653))
	)
)

(:action act_act_tpp-propositional_301970_302444
	:parameters ( ?truck_542874651 - truck ?truck_542874652 - truck ?level_542874654 - level ?level_542874653 - level ?goods_542874650 - goods)
	:precondition (and 
			(loaded ?goods_542874650 ?truck_542874652 ?level_542874653) 
			(loaded ?goods_542874650 ?truck_542874651 ?level_542874653) 
			(stored ?goods_542874650 ?level_542874654)
	)
	:effect (and 
		(not (loaded ?goods_542874650 ?truck_542874652 ?level_542874654)) 
		(loaded ?goods_542874650 ?truck_542874651 ?level_542874654) 
		(next ?level_542874654 ?level_542874653) 
		(not (stored ?goods_542874650 ?level_542874653))
	)
)

(:action act_act_tpp-propositional_301971_302445
	:parameters ( ?truck_556325281 - truck ?level_556325279 - level ?goods_556325282 - goods ?level_556325280 - level ?goods_556325278 - goods)
	:precondition (and 
			(loaded ?goods_556325282 ?truck_556325281 ?level_556325280) 
			(loaded ?goods_556325278 ?truck_556325281 ?level_556325279) 
			(stored ?goods_556325278 ?level_556325279)
	)
	:effect (and 
		(not (loaded ?goods_556325282 ?truck_556325281 ?level_556325279)) 
		(loaded ?goods_556325278 ?truck_556325281 ?level_556325280) 
		(next ?level_556325279 ?level_556325280) 
		(stored ?goods_556325282 ?level_556325279) 
		(stored ?goods_556325278 ?level_556325280)
	)
)

(:action act_act_tpp-propositional_301972_302446
	:parameters ( ?goods_101874313 - goods ?level_101874311 - level ?truck_101874314 - truck ?level_101874312 - level ?goods_101874310 - goods)
	:precondition (and 
			(loaded ?goods_101874310 ?truck_101874314 ?level_101874311) 
			(loaded ?goods_101874313 ?truck_101874314 ?level_101874312) 
			(stored ?goods_101874310 ?level_101874312)
	)
	:effect (and 
		(loaded ?goods_101874310 ?truck_101874314 ?level_101874312) 
		(not (loaded ?goods_101874313 ?truck_101874314 ?level_101874311)) 
		(stored ?goods_101874313 ?level_101874312) 
		(not (stored ?goods_101874313 ?level_101874311))
	)
)

(:action act_act_tpp-propositional_301972_302447
	:parameters ( ?goods_101874313 - goods ?level_101874311 - level ?truck_101874314 - truck ?level_101874312 - level ?goods_101874310 - goods)
	:precondition (and 
			(loaded ?goods_101874310 ?truck_101874314 ?level_101874311) 
			(loaded ?goods_101874313 ?truck_101874314 ?level_101874312) 
			(stored ?goods_101874310 ?level_101874312)
	)
	:effect (and 
		(loaded ?goods_101874310 ?truck_101874314 ?level_101874312) 
		(loaded ?goods_101874313 ?truck_101874314 ?level_101874311)
	)
)

(:action act_act_tpp-propositional_301972_302448
	:parameters ( ?goods_101874313 - goods ?level_101874311 - level ?level_101874312 - level ?truck_101874314 - truck ?goods_101874310 - goods)
	:precondition (and 
			(loaded ?goods_101874310 ?truck_101874314 ?level_101874311) 
			(loaded ?goods_101874313 ?truck_101874314 ?level_101874312) 
			(stored ?goods_101874310 ?level_101874312)
	)
	:effect (and 
		(not (loaded ?goods_101874313 ?truck_101874314 ?level_101874311)) 
		(next ?level_101874311 ?level_101874312) 
		(not (stored ?goods_101874313 ?level_101874312)) 
		(stored ?goods_101874310 ?level_101874311)
	)
)

(:action act_act_tpp-propositional_301973_302449
	:parameters ( ?market_156835148 - market ?level_156835144 - level ?goods_156835143 - goods ?goods_156835146 - goods ?truck_156835147 - truck ?level_156835145 - level)
	:precondition (and 
			(loaded ?goods_156835146 ?truck_156835147 ?level_156835144) 
			(ready-to-load ?goods_156835143 ?market_156835148 ?level_156835145) 
			(stored ?goods_156835146 ?level_156835145)
	)
	:effect (and 
		(loaded ?goods_156835143 ?truck_156835147 ?level_156835144) 
		(loaded ?goods_156835146 ?truck_156835147 ?level_156835145) 
		(next ?level_156835145 ?level_156835144) 
		(ready-to-load ?goods_156835143 ?market_156835148 ?level_156835144) 
		(ready-to-load ?goods_156835146 ?market_156835148 ?level_156835144)
	)
)

(:action act_act_tpp-propositional_301974_302450
	:parameters ( ?truck_260529962 - truck ?goods_260529964 - goods ?level_260529966 - level ?level_260529965 - level ?level_260529963 - level)
	:precondition (and 
			(loaded ?goods_260529964 ?truck_260529962 ?level_260529965) 
			(next ?level_260529965 ?level_260529966) 
			(stored ?goods_260529964 ?level_260529963)
	)
	:effect (and 
		(loaded ?goods_260529964 ?truck_260529962 ?level_260529963) 
		(not (loaded ?goods_260529964 ?truck_260529962 ?level_260529966)) 
		(next ?level_260529965 ?level_260529963) 
		(next ?level_260529966 ?level_260529963) 
		(next ?level_260529963 ?level_260529965) 
		(stored ?goods_260529964 ?level_260529966)
	)
)

(:action act_act_tpp-propositional_301974_302451
	:parameters ( ?truck_260529962 - truck ?goods_260529964 - goods ?level_260529966 - level ?level_260529965 - level ?level_260529963 - level)
	:precondition (and 
			(loaded ?goods_260529964 ?truck_260529962 ?level_260529965) 
			(next ?level_260529965 ?level_260529966) 
			(stored ?goods_260529964 ?level_260529963)
	)
	:effect (and 
		(not (loaded ?goods_260529964 ?truck_260529962 ?level_260529963)) 
		(loaded ?goods_260529964 ?truck_260529962 ?level_260529966) 
		(next ?level_260529966 ?level_260529965) 
		(next ?level_260529963 ?level_260529966) 
		(next ?level_260529963 ?level_260529965) 
		(stored ?goods_260529964 ?level_260529966) 
		(stored ?goods_260529964 ?level_260529965)
	)
)

(:action act_act_tpp-propositional_301974_302452
	:parameters ( ?truck_260529962 - truck ?goods_260529964 - goods ?level_260529966 - level ?level_260529965 - level ?level_260529963 - level)
	:precondition (and 
			(loaded ?goods_260529964 ?truck_260529962 ?level_260529965) 
			(next ?level_260529965 ?level_260529966) 
			(stored ?goods_260529964 ?level_260529963)
	)
	:effect (and 
		(loaded ?goods_260529964 ?truck_260529962 ?level_260529963) 
		(loaded ?goods_260529964 ?truck_260529962 ?level_260529966) 
		(next ?level_260529965 ?level_260529963) 
		(next ?level_260529966 ?level_260529965)
	)
)

(:action act_act_tpp-propositional_301975_302453
	:parameters ( ?level_13525373 - level ?goods_13525370 - goods ?truck_13525371 - truck ?level_13525374 - level ?goods_13525372 - goods)
	:precondition (and 
			(loaded ?goods_13525370 ?truck_13525371 ?level_13525373) 
			(loaded ?goods_13525372 ?truck_13525371 ?level_13525374)
	)
	:effect (and 
		(loaded ?goods_13525372 ?truck_13525371 ?level_13525373) 
		(loaded ?goods_13525370 ?truck_13525371 ?level_13525374) 
		(next ?level_13525374 ?level_13525373) 
		(not (stored ?goods_13525370 ?level_13525374)) 
		(not (stored ?goods_13525372 ?level_13525374)) 
		(stored ?goods_13525372 ?level_13525373)
	)
)

(:action act_act_tpp-propositional_301975_302454
	:parameters ( ?goods_13525370 - goods ?level_13525373 - level ?truck_13525371 - truck ?level_13525374 - level ?goods_13525372 - goods)
	:precondition (and 
			(loaded ?goods_13525370 ?truck_13525371 ?level_13525373) 
			(loaded ?goods_13525372 ?truck_13525371 ?level_13525374)
	)
	:effect (and 
		(not (loaded ?goods_13525372 ?truck_13525371 ?level_13525373)) 
		(loaded ?goods_13525370 ?truck_13525371 ?level_13525374) 
		(next ?level_13525373 ?level_13525374) 
		(not (stored ?goods_13525370 ?level_13525373)) 
		(not (stored ?goods_13525370 ?level_13525374))
	)
)

(:action act_act_tpp-propositional_301975_302455
	:parameters ( ?goods_13525370 - goods ?level_13525373 - level ?truck_13525371 - truck ?level_13525374 - level ?goods_13525372 - goods)
	:precondition (and 
			(loaded ?goods_13525370 ?truck_13525371 ?level_13525373) 
			(loaded ?goods_13525372 ?truck_13525371 ?level_13525374)
	)
	:effect (and 
		(loaded ?goods_13525372 ?truck_13525371 ?level_13525373) 
		(loaded ?goods_13525370 ?truck_13525371 ?level_13525374) 
		(stored ?goods_13525370 ?level_13525373) 
		(stored ?goods_13525372 ?level_13525374)
	)
)

(:action act_act_tpp-propositional_301975_302456
	:parameters ( ?level_13525373 - level ?goods_13525370 - goods ?truck_13525371 - truck ?level_13525374 - level ?goods_13525372 - goods)
	:precondition (and 
			(loaded ?goods_13525370 ?truck_13525371 ?level_13525373) 
			(loaded ?goods_13525372 ?truck_13525371 ?level_13525374)
	)
	:effect (and 
		(loaded ?goods_13525372 ?truck_13525371 ?level_13525373) 
		(not (loaded ?goods_13525370 ?truck_13525371 ?level_13525374)) 
		(next ?level_13525373 ?level_13525374) 
		(stored ?goods_13525370 ?level_13525374) 
		(stored ?goods_13525372 ?level_13525373)
	)
)

(:action act_act_tpp-propositional_301976_302457
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?goods_17600204 - goods ?market_17600203 - market ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(loaded ?goods_17600204 ?truck_17600207 ?level_17600205) 
		(next ?level_17600205 ?level_17600206) 
		(next ?level_17600206 ?level_17600205) 
		(not (ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206)) 
		(stored ?goods_17600204 ?level_17600205)
	)
)

(:action act_act_tpp-propositional_301976_302458
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?market_17600203 - market ?goods_17600204 - goods ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(loaded ?goods_17600204 ?truck_17600207 ?level_17600205) 
		(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206) 
		(not (stored ?goods_17600204 ?level_17600206))
	)
)

(:action act_act_tpp-propositional_301976_302459
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?goods_17600204 - goods ?market_17600203 - market ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(loaded ?goods_17600204 ?truck_17600207 ?level_17600205) 
		(next ?level_17600205 ?level_17600206) 
		(next ?level_17600206 ?level_17600205) 
		(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206) 
		(stored ?goods_17600204 ?level_17600206) 
		(not (stored ?goods_17600204 ?level_17600205))
	)
)

(:action act_act_tpp-propositional_301976_302460
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?market_17600203 - market ?goods_17600204 - goods ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(not (loaded ?goods_17600204 ?truck_17600207 ?level_17600205)) 
		(next ?level_17600205 ?level_17600206) 
		(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206) 
		(stored ?goods_17600204 ?level_17600206) 
		(stored ?goods_17600204 ?level_17600205)
	)
)

(:action act_act_tpp-propositional_301976_302461
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?goods_17600204 - goods ?market_17600203 - market ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(not (loaded ?goods_17600204 ?truck_17600207 ?level_17600205)) 
		(next ?level_17600205 ?level_17600206) 
		(next ?level_17600206 ?level_17600205) 
		(not (ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206))
	)
)

(:action act_act_tpp-propositional_301976_302462
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?goods_17600204 - goods ?market_17600203 - market ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(not (loaded ?goods_17600204 ?truck_17600207 ?level_17600205)) 
		(next ?level_17600206 ?level_17600205) 
		(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206) 
		(stored ?goods_17600204 ?level_17600206) 
		(not (stored ?goods_17600204 ?level_17600205))
	)
)

(:action act_act_tpp-propositional_301976_302463
	:parameters ( ?level_17600205 - level ?level_17600206 - level ?goods_17600204 - goods ?market_17600203 - market ?truck_17600207 - truck)
	:precondition (and 
			(loaded ?goods_17600204 ?truck_17600207 ?level_17600206) 
			(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600205)
	)
	:effect (and 
		(not (loaded ?goods_17600204 ?truck_17600207 ?level_17600205)) 
		(next ?level_17600205 ?level_17600206) 
		(next ?level_17600206 ?level_17600205) 
		(ready-to-load ?goods_17600204 ?market_17600203 ?level_17600206) 
		(not (stored ?goods_17600204 ?level_17600206))
	)
)

(:action act_act_tpp-propositional_301977_302464
	:parameters ( ?truck_237709579 - truck ?level_237709581 - level ?market_237709582 - market ?goods_237709578 - goods ?goods_237709580 - goods)
	:precondition (and 
			(loaded ?goods_237709578 ?truck_237709579 ?level_237709581) 
			(ready-to-load ?goods_237709580 ?market_237709582 ?level_237709581)
	)
	:effect (and 
		(loaded ?goods_237709580 ?truck_237709579 ?level_237709581) 
		(ready-to-load ?goods_237709578 ?market_237709582 ?level_237709581)
	)
)

(:action act_act_tpp-propositional_301977_302465
	:parameters ( ?truck_237709579 - truck ?level_237709581 - level ?market_237709582 - market ?goods_237709578 - goods ?goods_237709580 - goods)
	:precondition (and 
			(loaded ?goods_237709578 ?truck_237709579 ?level_237709581) 
			(ready-to-load ?goods_237709580 ?market_237709582 ?level_237709581)
	)
	:effect (and 
		(not (loaded ?goods_237709580 ?truck_237709579 ?level_237709581)) 
		(ready-to-load ?goods_237709578 ?market_237709582 ?level_237709581) 
		(not (stored ?goods_237709578 ?level_237709581))
	)
)

(:action act_act_tpp-propositional_301977_302466
	:parameters ( ?level_237709581 - level ?truck_237709579 - truck ?market_237709582 - market ?goods_237709578 - goods ?goods_237709580 - goods)
	:precondition (and 
			(loaded ?goods_237709578 ?truck_237709579 ?level_237709581) 
			(ready-to-load ?goods_237709580 ?market_237709582 ?level_237709581)
	)
	:effect (and 
		(not (loaded ?goods_237709580 ?truck_237709579 ?level_237709581)) 
		(not (ready-to-load ?goods_237709578 ?market_237709582 ?level_237709581))
	)
)

(:action act_act_tpp-propositional_301978_302467
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(loaded ?goods_7805225 ?truck_7805224 ?level_7805226) 
		(next ?level_7805226 ?level_7805227) 
		(stored ?goods_7805225 ?level_7805227) 
		(not (stored ?goods_7805225 ?level_7805226))
	)
)

(:action act_act_tpp-propositional_301978_302468
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(loaded ?goods_7805225 ?truck_7805224 ?level_7805226) 
		(next ?level_7805226 ?level_7805227) 
		(stored ?goods_7805225 ?level_7805227) 
		(stored ?goods_7805225 ?level_7805226)
	)
)

(:action act_act_tpp-propositional_301978_302469
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(not (loaded ?goods_7805225 ?truck_7805224 ?level_7805226)) 
		(next ?level_7805226 ?level_7805227) 
		(stored ?goods_7805225 ?level_7805227) 
		(stored ?goods_7805225 ?level_7805226)
	)
)

(:action act_act_tpp-propositional_301978_302470
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(not (loaded ?goods_7805225 ?truck_7805224 ?level_7805226)) 
		(next ?level_7805226 ?level_7805227) 
		(not (stored ?goods_7805225 ?level_7805227)) 
		(not (stored ?goods_7805225 ?level_7805226))
	)
)

(:action act_act_tpp-propositional_301978_302471
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(not (loaded ?goods_7805225 ?truck_7805224 ?level_7805226)) 
		(stored ?goods_7805225 ?level_7805227) 
		(not (stored ?goods_7805225 ?level_7805226))
	)
)

(:action act_act_tpp-propositional_301978_302472
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(loaded ?goods_7805225 ?truck_7805224 ?level_7805226) 
		(not (stored ?goods_7805225 ?level_7805227)) 
		(stored ?goods_7805225 ?level_7805226)
	)
)

(:action act_act_tpp-propositional_301978_302473
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(not (loaded ?goods_7805225 ?truck_7805224 ?level_7805226)) 
		(next ?level_7805226 ?level_7805227) 
		(not (stored ?goods_7805225 ?level_7805227)) 
		(stored ?goods_7805225 ?level_7805226)
	)
)

(:action act_act_tpp-propositional_301978_302474
	:parameters ( ?level_7805227 - level ?level_7805226 - level ?truck_7805224 - truck ?goods_7805225 - goods)
	:precondition (and 
			(loaded ?goods_7805225 ?truck_7805224 ?level_7805227) 
			(next ?level_7805227 ?level_7805226)
	)
	:effect (and 
		(loaded ?goods_7805225 ?truck_7805224 ?level_7805226) 
		(next ?level_7805226 ?level_7805227) 
		(not (stored ?goods_7805225 ?level_7805227)) 
		(not (stored ?goods_7805225 ?level_7805226))
	)
)

(:action act_act_tpp-propositional_301979_302475
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?level_9466532 - level ?truck_9466535 - truck)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(loaded ?goods_9466534 ?truck_9466535 ?level_9466532) 
		(next ?level_9466533 ?level_9466532) 
		(not (stored ?goods_9466534 ?level_9466533)) 
		(stored ?goods_9466534 ?level_9466532)
	)
)

(:action act_act_tpp-propositional_301979_302476
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?truck_9466535 - truck ?level_9466532 - level)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(not (loaded ?goods_9466534 ?truck_9466535 ?level_9466532)) 
		(next ?level_9466533 ?level_9466532) 
		(stored ?goods_9466534 ?level_9466533) 
		(not (stored ?goods_9466534 ?level_9466532))
	)
)

(:action act_act_tpp-propositional_301979_302477
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?truck_9466535 - truck ?level_9466532 - level)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(loaded ?goods_9466534 ?truck_9466535 ?level_9466532) 
		(next ?level_9466533 ?level_9466532) 
		(not (stored ?goods_9466534 ?level_9466533)) 
		(not (stored ?goods_9466534 ?level_9466532))
	)
)

(:action act_act_tpp-propositional_301979_302478
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?level_9466532 - level ?truck_9466535 - truck)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(not (loaded ?goods_9466534 ?truck_9466535 ?level_9466532)) 
		(next ?level_9466533 ?level_9466532) 
		(not (stored ?goods_9466534 ?level_9466533)) 
		(not (stored ?goods_9466534 ?level_9466532))
	)
)

(:action act_act_tpp-propositional_301979_302479
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?level_9466532 - level ?truck_9466535 - truck)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(loaded ?goods_9466534 ?truck_9466535 ?level_9466532) 
		(stored ?goods_9466534 ?level_9466533) 
		(not (stored ?goods_9466534 ?level_9466532))
	)
)

(:action act_act_tpp-propositional_301979_302480
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?truck_9466535 - truck ?level_9466532 - level)
	:precondition (and 
			(loaded ?goods_9466534 ?truck_9466535 ?level_9466533) 
			(next ?level_9466532 ?level_9466533)
	)
	:effect (and 
		(loaded ?goods_9466534 ?truck_9466535 ?level_9466532) 
		(next ?level_9466533 ?level_9466532) 
		(stored ?goods_9466534 ?level_9466533) 
		(stored ?goods_9466534 ?level_9466532)
	)
)

(:action act_act_tpp-propositional_301979_302481
	:parameters ( ?level_9466533 - level ?goods_9466534 - goods ?truck_9466535 - truck ?level_9466532 - level)
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

(:action act_act_tpp-propositional_301980_302482
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?truck_14754752 - truck ?goods_14754753 - goods)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(not (loaded ?goods_14754753 ?truck_14754752 ?level_14754751)) 
		(not (loaded ?goods_14754753 ?truck_14754752 ?level_14754750)) 
		(next ?level_14754754 ?level_14754751) 
		(next ?level_14754750 ?level_14754754) 
		(next ?level_14754751 ?level_14754754) 
		(next ?level_14754750 ?level_14754751) 
		(not (stored ?goods_14754753 ?level_14754751)) 
		(stored ?goods_14754753 ?level_14754750) 
		(stored ?goods_14754753 ?level_14754754)
	)
)

(:action act_act_tpp-propositional_301980_302483
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?goods_14754753 - goods ?truck_14754752 - truck)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754751) 
		(next ?level_14754754 ?level_14754750) 
		(next ?level_14754750 ?level_14754754) 
		(next ?level_14754751 ?level_14754754) 
		(next ?level_14754750 ?level_14754751) 
		(not (stored ?goods_14754753 ?level_14754751)) 
		(stored ?goods_14754753 ?level_14754750) 
		(not (stored ?goods_14754753 ?level_14754754))
	)
)

(:action act_act_tpp-propositional_301980_302484
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?goods_14754753 - goods ?truck_14754752 - truck)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(not (loaded ?goods_14754753 ?truck_14754752 ?level_14754751)) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754750) 
		(next ?level_14754750 ?level_14754754) 
		(stored ?goods_14754753 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754750) 
		(not (stored ?goods_14754753 ?level_14754754))
	)
)

(:action act_act_tpp-propositional_301980_302485
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?truck_14754752 - truck ?goods_14754753 - goods)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(not (loaded ?goods_14754753 ?truck_14754752 ?level_14754751)) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754751) 
		(next ?level_14754754 ?level_14754750) 
		(next ?level_14754750 ?level_14754754) 
		(next ?level_14754751 ?level_14754754) 
		(next ?level_14754750 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754750) 
		(stored ?goods_14754753 ?level_14754754)
	)
)

(:action act_act_tpp-propositional_301980_302486
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?truck_14754752 - truck ?goods_14754753 - goods)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(not (loaded ?goods_14754753 ?truck_14754752 ?level_14754750)) 
		(next ?level_14754754 ?level_14754751) 
		(next ?level_14754754 ?level_14754750) 
		(next ?level_14754750 ?level_14754754) 
		(next ?level_14754751 ?level_14754754) 
		(next ?level_14754750 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754750) 
		(stored ?goods_14754753 ?level_14754754)
	)
)

(:action act_act_tpp-propositional_301980_302487
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?goods_14754753 - goods ?truck_14754752 - truck)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754751) 
		(next ?level_14754754 ?level_14754750) 
		(next ?level_14754750 ?level_14754754) 
		(next ?level_14754751 ?level_14754754) 
		(next ?level_14754750 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754751) 
		(not (stored ?goods_14754753 ?level_14754750)) 
		(stored ?goods_14754753 ?level_14754754)
	)
)

(:action act_act_tpp-propositional_301980_302488
	:parameters ( ?level_14754751 - level ?level_14754750 - level ?level_14754754 - level ?goods_14754753 - goods ?truck_14754752 - truck)
	:precondition (and 
			(loaded ?goods_14754753 ?truck_14754752 ?level_14754754) 
			(next ?level_14754751 ?level_14754750)
	)
	:effect (and 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754751) 
		(loaded ?goods_14754753 ?truck_14754752 ?level_14754750) 
		(next ?level_14754754 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754751) 
		(stored ?goods_14754753 ?level_14754750) 
		(stored ?goods_14754753 ?level_14754754)
	)
)

(:action act_act_tpp-propositional_301981_302489
	:parameters ( ?goods_59395374 - goods ?truck_59395377 - truck ?truck_59395376 - truck ?level_59395375 - level ?place_59395373 - place)
	:precondition (and 
			(at ?truck_59395377 ?place_59395373) 
			(loaded ?goods_59395374 ?truck_59395376 ?level_59395375) 
			(stored ?goods_59395374 ?level_59395375)
	)
	:effect (and 
		(not (at ?truck_59395376 ?place_59395373)) 
		(not (loaded ?goods_59395374 ?truck_59395377 ?level_59395375))
	)
)

(:action act_act_tpp-propositional_301981_302490
	:parameters ( ?goods_59395374 - goods ?truck_59395377 - truck ?truck_59395376 - truck ?level_59395375 - level ?place_59395373 - place)
	:precondition (and 
			(at ?truck_59395377 ?place_59395373) 
			(loaded ?goods_59395374 ?truck_59395376 ?level_59395375) 
			(stored ?goods_59395374 ?level_59395375)
	)
	:effect (and 
		(at ?truck_59395376 ?place_59395373) 
		(loaded ?goods_59395374 ?truck_59395377 ?level_59395375)
	)
)

(:action act_act_tpp-propositional_301981_302491
	:parameters ( ?goods_59395374 - goods ?truck_59395377 - truck ?truck_59395376 - truck ?level_59395375 - level ?place_59395373 - place)
	:precondition (and 
			(at ?truck_59395377 ?place_59395373) 
			(loaded ?goods_59395374 ?truck_59395376 ?level_59395375) 
			(stored ?goods_59395374 ?level_59395375)
	)
	:effect (and 
		(not (at ?truck_59395376 ?place_59395373)) 
		(loaded ?goods_59395374 ?truck_59395377 ?level_59395375)
	)
)

(:action act_act_tpp-propositional_301981_302492
	:parameters ( ?goods_59395374 - goods ?truck_59395377 - truck ?truck_59395376 - truck ?level_59395375 - level ?place_59395373 - place)
	:precondition (and 
			(at ?truck_59395377 ?place_59395373) 
			(loaded ?goods_59395374 ?truck_59395376 ?level_59395375) 
			(stored ?goods_59395374 ?level_59395375)
	)
	:effect (and 
		(at ?truck_59395376 ?place_59395373) 
		(not (loaded ?goods_59395374 ?truck_59395377 ?level_59395375))
	)
)

(:action act_act_tpp-propositional_301982_302493
	:parameters ( ?level_52050300 - level ?goods_52050302 - goods ?truck_52050301 - truck ?goods_52050299 - goods ?market_52050298 - market ?level_52050303 - level)
	:precondition (and 
			(loaded ?goods_52050299 ?truck_52050301 ?level_52050300) 
			(ready-to-load ?goods_52050302 ?market_52050298 ?level_52050303) 
			(ready-to-load ?goods_52050302 ?market_52050298 ?level_52050300) 
			(stored ?goods_52050299 ?level_52050300)
	)
	:effect (and 
		(not (loaded ?goods_52050302 ?truck_52050301 ?level_52050303)) 
		(not (ready-to-load ?goods_52050299 ?market_52050298 ?level_52050300)) 
		(stored ?goods_52050299 ?level_52050303)
	)
)

(:action act_act_tpp-propositional_301983_302494
	:parameters ( ?goods_104155576 - goods ?truck_104155575 - truck ?market_104155572 - market ?level_104155574 - level ?level_104155573 - level)
	:precondition (and 
			(loaded ?goods_104155576 ?truck_104155575 ?level_104155574) 
			(next ?level_104155574 ?level_104155573) 
			(ready-to-load ?goods_104155576 ?market_104155572 ?level_104155573)
	)
	:effect (and 
		(loaded ?goods_104155576 ?truck_104155575 ?level_104155573) 
		(next ?level_104155573 ?level_104155574) 
		(ready-to-load ?goods_104155576 ?market_104155572 ?level_104155574) 
		(stored ?goods_104155576 ?level_104155573)
	)
)

(:action act_act_tpp-propositional_301983_302495
	:parameters ( ?goods_104155576 - goods ?truck_104155575 - truck ?market_104155572 - market ?level_104155574 - level ?level_104155573 - level)
	:precondition (and 
			(loaded ?goods_104155576 ?truck_104155575 ?level_104155574) 
			(next ?level_104155574 ?level_104155573) 
			(ready-to-load ?goods_104155576 ?market_104155572 ?level_104155573)
	)
	:effect (and 
		(loaded ?goods_104155576 ?truck_104155575 ?level_104155573) 
		(not (ready-to-load ?goods_104155576 ?market_104155572 ?level_104155574)) 
		(stored ?goods_104155576 ?level_104155573)
	)
)

(:action act_act_tpp-propositional_301983_302496
	:parameters ( ?goods_104155576 - goods ?truck_104155575 - truck ?market_104155572 - market ?level_104155574 - level ?level_104155573 - level)
	:precondition (and 
			(loaded ?goods_104155576 ?truck_104155575 ?level_104155574) 
			(next ?level_104155574 ?level_104155573) 
			(ready-to-load ?goods_104155576 ?market_104155572 ?level_104155573)
	)
	:effect (and 
		(not (loaded ?goods_104155576 ?truck_104155575 ?level_104155573)) 
		(next ?level_104155573 ?level_104155574) 
		(not (ready-to-load ?goods_104155576 ?market_104155572 ?level_104155574)) 
		(stored ?goods_104155576 ?level_104155574)
	)
)

(:action act_act_tpp-propositional_301983_302497
	:parameters ( ?goods_104155576 - goods ?truck_104155575 - truck ?market_104155572 - market ?level_104155574 - level ?level_104155573 - level)
	:precondition (and 
			(loaded ?goods_104155576 ?truck_104155575 ?level_104155574) 
			(next ?level_104155574 ?level_104155573) 
			(ready-to-load ?goods_104155576 ?market_104155572 ?level_104155573)
	)
	:effect (and 
		(not (loaded ?goods_104155576 ?truck_104155575 ?level_104155573)) 
		(next ?level_104155573 ?level_104155574) 
		(ready-to-load ?goods_104155576 ?market_104155572 ?level_104155574)
	)
)

(:action act_act_tpp-propositional_301984_302498
	:parameters ( ?truck_584390738 - truck ?level_584390740 - level ?market_584390737 - market ?goods_584390741 - goods ?level_584390739 - level)
	:precondition (and 
			(loaded ?goods_584390741 ?truck_584390738 ?level_584390739) 
			(next ?level_584390740 ?level_584390739) 
			(ready-to-load ?goods_584390741 ?market_584390737 ?level_584390740)
	)
	:effect (and 
		(loaded ?goods_584390741 ?truck_584390738 ?level_584390740) 
		(next ?level_584390739 ?level_584390740) 
		(not (ready-to-load ?goods_584390741 ?market_584390737 ?level_584390739)) 
		(stored ?goods_584390741 ?level_584390739) 
		(stored ?goods_584390741 ?level_584390740)
	)
)

(:action act_act_tpp-propositional_301984_302499
	:parameters ( ?truck_584390738 - truck ?level_584390740 - level ?market_584390737 - market ?goods_584390741 - goods ?level_584390739 - level)
	:precondition (and 
			(loaded ?goods_584390741 ?truck_584390738 ?level_584390739) 
			(next ?level_584390740 ?level_584390739) 
			(ready-to-load ?goods_584390741 ?market_584390737 ?level_584390740)
	)
	:effect (and 
		(loaded ?goods_584390741 ?truck_584390738 ?level_584390740) 
		(ready-to-load ?goods_584390741 ?market_584390737 ?level_584390739)
	)
)

(:action act_act_tpp-propositional_301984_302500
	:parameters ( ?truck_584390738 - truck ?level_584390740 - level ?market_584390737 - market ?goods_584390741 - goods ?level_584390739 - level)
	:precondition (and 
			(loaded ?goods_584390741 ?truck_584390738 ?level_584390739) 
			(next ?level_584390740 ?level_584390739) 
			(ready-to-load ?goods_584390741 ?market_584390737 ?level_584390740)
	)
	:effect (and 
		(not (loaded ?goods_584390741 ?truck_584390738 ?level_584390740)) 
		(next ?level_584390739 ?level_584390740) 
		(ready-to-load ?goods_584390741 ?market_584390737 ?level_584390739) 
		(not (stored ?goods_584390741 ?level_584390739))
	)
)

(:action act_act_tpp-propositional_301985_302501
	:parameters ( ?level_21236408 - level ?truck_21236412 - truck ?truck_21236410 - truck ?level_21236411 - level ?goods_21236409 - goods)
	:precondition (and 
			(loaded ?goods_21236409 ?truck_21236412 ?level_21236411) 
			(loaded ?goods_21236409 ?truck_21236410 ?level_21236408) 
			(next ?level_21236411 ?level_21236408)
	)
	:effect (and 
		(loaded ?goods_21236409 ?truck_21236410 ?level_21236411) 
		(loaded ?goods_21236409 ?truck_21236412 ?level_21236408) 
		(not (stored ?goods_21236409 ?level_21236408)) 
		(stored ?goods_21236409 ?level_21236411)
	)
)

(:action act_act_tpp-propositional_301985_302502
	:parameters ( ?level_21236408 - level ?truck_21236412 - truck ?truck_21236410 - truck ?level_21236411 - level ?goods_21236409 - goods)
	:precondition (and 
			(loaded ?goods_21236409 ?truck_21236412 ?level_21236411) 
			(loaded ?goods_21236409 ?truck_21236410 ?level_21236408) 
			(next ?level_21236411 ?level_21236408)
	)
	:effect (and 
		(not (loaded ?goods_21236409 ?truck_21236410 ?level_21236411)) 
		(not (loaded ?goods_21236409 ?truck_21236412 ?level_21236408))
	)
)

(:action act_act_tpp-propositional_301985_302503
	:parameters ( ?level_21236408 - level ?truck_21236412 - truck ?truck_21236410 - truck ?level_21236411 - level ?goods_21236409 - goods)
	:precondition (and 
			(loaded ?goods_21236409 ?truck_21236412 ?level_21236411) 
			(loaded ?goods_21236409 ?truck_21236410 ?level_21236408) 
			(next ?level_21236411 ?level_21236408)
	)
	:effect (and 
		(not (loaded ?goods_21236409 ?truck_21236410 ?level_21236411)) 
		(loaded ?goods_21236409 ?truck_21236412 ?level_21236408)
	)
)

(:action act_act_tpp-propositional_301986_302504
	:parameters ( ?level_150861465 - level ?goods_150861464 - goods ?truck_150861462 - truck ?level_150861461 - level ?truck_150861463 - truck)
	:precondition (and 
			(loaded ?goods_150861464 ?truck_150861463 ?level_150861461) 
			(loaded ?goods_150861464 ?truck_150861462 ?level_150861465) 
			(next ?level_150861465 ?level_150861461)
	)
	:effect (and 
		(loaded ?goods_150861464 ?truck_150861462 ?level_150861461) 
		(loaded ?goods_150861464 ?truck_150861463 ?level_150861465)
	)
)

(:action act_act_tpp-propositional_301986_302505
	:parameters ( ?level_150861465 - level ?goods_150861464 - goods ?truck_150861462 - truck ?level_150861461 - level ?truck_150861463 - truck)
	:precondition (and 
			(loaded ?goods_150861464 ?truck_150861463 ?level_150861461) 
			(loaded ?goods_150861464 ?truck_150861462 ?level_150861465) 
			(next ?level_150861465 ?level_150861461)
	)
	:effect (and 
		(not (loaded ?goods_150861464 ?truck_150861462 ?level_150861461)) 
		(not (loaded ?goods_150861464 ?truck_150861463 ?level_150861465)) 
		(stored ?goods_150861464 ?level_150861465)
	)
)

(:action act_act_tpp-propositional_301986_302506
	:parameters ( ?level_150861465 - level ?goods_150861464 - goods ?truck_150861462 - truck ?level_150861461 - level ?truck_150861463 - truck)
	:precondition (and 
			(loaded ?goods_150861464 ?truck_150861463 ?level_150861461) 
			(loaded ?goods_150861464 ?truck_150861462 ?level_150861465) 
			(next ?level_150861465 ?level_150861461)
	)
	:effect (and 
		(loaded ?goods_150861464 ?truck_150861462 ?level_150861461) 
		(not (loaded ?goods_150861464 ?truck_150861463 ?level_150861465))
	)
)

(:action act_act_tpp-propositional_301987_302507
	:parameters ( ?truck_279950029 - truck ?level_279950030 - level ?level_279950028 - level ?goods_279950026 - goods ?goods_279950027 - goods)
	:precondition (and 
			(loaded ?goods_279950027 ?truck_279950029 ?level_279950028) 
			(loaded ?goods_279950026 ?truck_279950029 ?level_279950030) 
			(next ?level_279950030 ?level_279950028)
	)
	:effect (and 
		(loaded ?goods_279950027 ?truck_279950029 ?level_279950030) 
		(loaded ?goods_279950026 ?truck_279950029 ?level_279950028) 
		(stored ?goods_279950026 ?level_279950028)
	)
)

(:action act_act_tpp-propositional_301987_302508
	:parameters ( ?truck_279950029 - truck ?level_279950030 - level ?level_279950028 - level ?goods_279950026 - goods ?goods_279950027 - goods)
	:precondition (and 
			(loaded ?goods_279950027 ?truck_279950029 ?level_279950028) 
			(loaded ?goods_279950026 ?truck_279950029 ?level_279950030) 
			(next ?level_279950030 ?level_279950028)
	)
	:effect (and 
		(not (loaded ?goods_279950027 ?truck_279950029 ?level_279950030)) 
		(loaded ?goods_279950026 ?truck_279950029 ?level_279950028) 
		(next ?level_279950028 ?level_279950030) 
		(not (stored ?goods_279950026 ?level_279950030)) 
		(not (stored ?goods_279950027 ?level_279950030))
	)
)

(:action act_act_tpp-propositional_301987_302509
	:parameters ( ?truck_279950029 - truck ?level_279950030 - level ?level_279950028 - level ?goods_279950026 - goods ?goods_279950027 - goods)
	:precondition (and 
			(loaded ?goods_279950027 ?truck_279950029 ?level_279950028) 
			(loaded ?goods_279950026 ?truck_279950029 ?level_279950030) 
			(next ?level_279950030 ?level_279950028)
	)
	:effect (and 
		(loaded ?goods_279950027 ?truck_279950029 ?level_279950030) 
		(loaded ?goods_279950026 ?truck_279950029 ?level_279950028) 
		(not (stored ?goods_279950026 ?level_279950028))
	)
)

(:action act_act_tpp-propositional_301988_302510
	:parameters ( ?truck_237490710 - truck ?goods_237490709 - goods ?level_237490711 - level ?level_237490712 - level ?goods_237490708 - goods ?level_237490713 - level)
	:precondition (and 
			(loaded ?goods_237490708 ?truck_237490710 ?level_237490711) 
			(next ?level_237490712 ?level_237490713) 
			(stored ?goods_237490708 ?level_237490711) 
			(stored ?goods_237490709 ?level_237490712)
	)
	:effect (and 
		(loaded ?goods_237490709 ?truck_237490710 ?level_237490711) 
		(not (loaded ?goods_237490708 ?truck_237490710 ?level_237490713)) 
		(next ?level_237490711 ?level_237490712)
	)
)

(:action act_act_tpp-propositional_301989_302511
	:parameters ( ?level_337156208 - level ?level_337156209 - level ?truck_337156206 - truck ?level_337156205 - level ?goods_337156207 - goods)
	:precondition (and 
			(loaded ?goods_337156207 ?truck_337156206 ?level_337156209) 
			(loaded ?goods_337156207 ?truck_337156206 ?level_337156205) 
			(next ?level_337156209 ?level_337156208)
	)
	:effect (and 
		(loaded ?goods_337156207 ?truck_337156206 ?level_337156208) 
		(next ?level_337156208 ?level_337156209) 
		(next ?level_337156209 ?level_337156205) 
		(next ?level_337156205 ?level_337156208) 
		(not (stored ?goods_337156207 ?level_337156208)) 
		(stored ?goods_337156207 ?level_337156205)
	)
)

(:action act_act_tpp-propositional_301989_302512
	:parameters ( ?level_337156208 - level ?level_337156209 - level ?truck_337156206 - truck ?level_337156205 - level ?goods_337156207 - goods)
	:precondition (and 
			(loaded ?goods_337156207 ?truck_337156206 ?level_337156209) 
			(loaded ?goods_337156207 ?truck_337156206 ?level_337156205) 
			(next ?level_337156209 ?level_337156208)
	)
	:effect (and 
		(not (loaded ?goods_337156207 ?truck_337156206 ?level_337156208)) 
		(next ?level_337156209 ?level_337156205) 
		(next ?level_337156205 ?level_337156209) 
		(stored ?goods_337156207 ?level_337156205)
	)
)

(:action act_act_tpp-propositional_301990_302513
	:parameters ( ?level_182881450 - level ?truck_182881448 - truck ?level_182881449 - level ?level_182881446 - level ?goods_182881447 - goods)
	:precondition (and 
			(loaded ?goods_182881447 ?truck_182881448 ?level_182881449) 
			(next ?level_182881446 ?level_182881450) 
			(next ?level_182881449 ?level_182881446) 
			(stored ?goods_182881447 ?level_182881450)
	)
	:effect (and 
		(loaded ?goods_182881447 ?truck_182881448 ?level_182881450) 
		(next ?level_182881450 ?level_182881449) 
		(next ?level_182881450 ?level_182881446)
	)
)

(:action act_act_tpp-propositional_301991_302514
	:parameters ( ?level_308167227 - level ?goods_308167222 - goods ?level_308167226 - level ?level_308167223 - level ?level_308167224 - level ?truck_308167225 - truck)
	:precondition (and 
			(loaded ?goods_308167222 ?truck_308167225 ?level_308167227) 
			(next ?level_308167223 ?level_308167224) 
			(next ?level_308167226 ?level_308167223) 
			(stored ?goods_308167222 ?level_308167227)
	)
	:effect (and 
		(loaded ?goods_308167222 ?truck_308167225 ?level_308167226) 
		(next ?level_308167227 ?level_308167223) 
		(next ?level_308167224 ?level_308167227)
	)
)

(:action act_act_tpp-propositional_301992_302515
	:parameters ( ?truck_23333007 - truck ?level_23333010 - level ?level_23333008 - level ?truck_23333012 - truck ?level_23333011 - level ?goods_23333009 - goods)
	:precondition (and 
			(loaded ?goods_23333009 ?truck_23333012 ?level_23333011) 
			(loaded ?goods_23333009 ?truck_23333007 ?level_23333010) 
			(next ?level_23333010 ?level_23333008) 
			(stored ?goods_23333009 ?level_23333010)
	)
	:effect (and 
		(loaded ?goods_23333009 ?truck_23333012 ?level_23333008) 
		(not (loaded ?goods_23333009 ?truck_23333007 ?level_23333011)) 
		(next ?level_23333011 ?level_23333010) 
		(stored ?goods_23333009 ?level_23333008)
	)
)

(:action act_act_tpp-propositional_301993_302516
	:parameters ( ?market_358491415 - market ?level_358491413 - level ?goods_358491414 - goods ?truck_358491412 - truck ?level_358491417 - level ?level_358491416 - level)
	:precondition (and 
			(loaded ?goods_358491414 ?truck_358491412 ?level_358491417) 
			(next ?level_358491413 ?level_358491416) 
			(next ?level_358491417 ?level_358491413) 
			(ready-to-load ?goods_358491414 ?market_358491415 ?level_358491413)
	)
	:effect (and 
		(loaded ?goods_358491414 ?truck_358491412 ?level_358491413) 
		(loaded ?goods_358491414 ?truck_358491412 ?level_358491416) 
		(next ?level_358491416 ?level_358491417) 
		(not (ready-to-load ?goods_358491414 ?market_358491415 ?level_358491416))
	)
)

(:action act_act_tpp-propositional_301994_302517
	:parameters ( ?level_1628974 - level ?level_1628972 - level ?goods_1628973 - goods ?truck_1628971 - truck)
	:precondition (and 
			(loaded ?goods_1628973 ?truck_1628971 ?level_1628974) 
			(stored ?goods_1628973 ?level_1628972)
	)
	:effect (and 
		(loaded ?goods_1628973 ?truck_1628971 ?level_1628972) 
		(next ?level_1628972 ?level_1628974) 
		(next ?level_1628974 ?level_1628972) 
		(stored ?goods_1628973 ?level_1628974)
	)
)

(:action act_act_tpp-propositional_301994_302518
	:parameters ( ?level_1628974 - level ?level_1628972 - level ?goods_1628973 - goods ?truck_1628971 - truck)
	:precondition (and 
			(loaded ?goods_1628973 ?truck_1628971 ?level_1628974) 
			(stored ?goods_1628973 ?level_1628972)
	)
	:effect (and 
		(loaded ?goods_1628973 ?truck_1628971 ?level_1628972) 
		(next ?level_1628972 ?level_1628974) 
		(next ?level_1628974 ?level_1628972) 
		(not (stored ?goods_1628973 ?level_1628974))
	)
)

(:action act_act_tpp-propositional_301994_302519
	:parameters ( ?level_1628974 - level ?level_1628972 - level ?goods_1628973 - goods ?truck_1628971 - truck)
	:precondition (and 
			(loaded ?goods_1628973 ?truck_1628971 ?level_1628974) 
			(stored ?goods_1628973 ?level_1628972)
	)
	:effect (and 
		(not (loaded ?goods_1628973 ?truck_1628971 ?level_1628972)) 
		(next ?level_1628972 ?level_1628974) 
		(not (stored ?goods_1628973 ?level_1628974))
	)
)

(:action act_act_tpp-propositional_301994_302520
	:parameters ( ?level_1628974 - level ?level_1628972 - level ?goods_1628973 - goods ?truck_1628971 - truck)
	:precondition (and 
			(loaded ?goods_1628973 ?truck_1628971 ?level_1628974) 
			(stored ?goods_1628973 ?level_1628972)
	)
	:effect (and 
		(not (loaded ?goods_1628973 ?truck_1628971 ?level_1628972)) 
		(next ?level_1628972 ?level_1628974) 
		(next ?level_1628974 ?level_1628972) 
		(stored ?goods_1628973 ?level_1628974)
	)
)

(:action act_act_tpp-propositional_301995_302521
	:parameters ( ?goods_165376390 - goods ?level_165376391 - level ?market_165376389 - market ?level_165376392 - level ?level_165376388 - level)
	:precondition (and 
			(next ?level_165376392 ?level_165376388) 
			(ready-to-load ?goods_165376390 ?market_165376389 ?level_165376391)
	)
	:effect (and 
		(next ?level_165376391 ?level_165376392) 
		(next ?level_165376392 ?level_165376391) 
		(next ?level_165376388 ?level_165376392) 
		(next ?level_165376388 ?level_165376391) 
		(not (ready-to-load ?goods_165376390 ?market_165376389 ?level_165376388)) 
		(stored ?goods_165376390 ?level_165376391) 
		(stored ?goods_165376390 ?level_165376392)
	)
)

(:action act_act_tpp-propositional_301995_302522
	:parameters ( ?goods_165376390 - goods ?level_165376391 - level ?market_165376389 - market ?level_165376392 - level ?level_165376388 - level)
	:precondition (and 
			(next ?level_165376392 ?level_165376388) 
			(ready-to-load ?goods_165376390 ?market_165376389 ?level_165376391)
	)
	:effect (and 
		(next ?level_165376391 ?level_165376392) 
		(next ?level_165376388 ?level_165376391) 
		(next ?level_165376391 ?level_165376388) 
		(ready-to-load ?goods_165376390 ?market_165376389 ?level_165376388) 
		(ready-to-load ?goods_165376390 ?market_165376389 ?level_165376392) 
		(stored ?goods_165376390 ?level_165376392)
	)
)

(:action act_act_tpp-propositional_301995_302523
	:parameters ( ?goods_165376390 - goods ?level_165376391 - level ?market_165376389 - market ?level_165376392 - level ?level_165376388 - level)
	:precondition (and 
			(next ?level_165376392 ?level_165376388) 
			(ready-to-load ?goods_165376390 ?market_165376389 ?level_165376391)
	)
	:effect (and 
		(next ?level_165376388 ?level_165376392) 
		(next ?level_165376391 ?level_165376388) 
		(ready-to-load ?goods_165376390 ?market_165376389 ?level_165376392) 
		(not (stored ?goods_165376390 ?level_165376392))
	)
)

(:action act_act_tpp-propositional_301996_302524
	:parameters ( ?goods_188944824 - goods ?goods_188944826 - goods ?level_188944823 - level ?truck_188944825 - truck ?level_188944827 - level ?market_188944828 - market)
	:precondition (and 
			(loaded ?goods_188944824 ?truck_188944825 ?level_188944823) 
			(next ?level_188944827 ?level_188944823) 
			(ready-to-load ?goods_188944826 ?market_188944828 ?level_188944827)
	)
	:effect (and 
		(loaded ?goods_188944826 ?truck_188944825 ?level_188944827) 
		(loaded ?goods_188944826 ?truck_188944825 ?level_188944823) 
		(not (ready-to-load ?goods_188944824 ?market_188944828 ?level_188944827)) 
		(stored ?goods_188944824 ?level_188944827)
	)
)

(:action act_act_tpp-propositional_301996_302525
	:parameters ( ?goods_188944824 - goods ?goods_188944826 - goods ?truck_188944825 - truck ?level_188944823 - level ?level_188944827 - level ?market_188944828 - market)
	:precondition (and 
			(loaded ?goods_188944824 ?truck_188944825 ?level_188944823) 
			(next ?level_188944827 ?level_188944823) 
			(ready-to-load ?goods_188944826 ?market_188944828 ?level_188944827)
	)
	:effect (and 
		(loaded ?goods_188944826 ?truck_188944825 ?level_188944827) 
		(loaded ?goods_188944824 ?truck_188944825 ?level_188944827) 
		(loaded ?goods_188944826 ?truck_188944825 ?level_188944823) 
		(ready-to-load ?goods_188944826 ?market_188944828 ?level_188944823) 
		(ready-to-load ?goods_188944824 ?market_188944828 ?level_188944827)
	)
)

(:action act_act_tpp-propositional_301997_302526
	:parameters ( ?level_84459259 - level ?goods_84459257 - goods ?level_84459255 - level ?level_84459256 - level ?truck_84459258 - truck)
	:precondition (and 
			(loaded ?goods_84459257 ?truck_84459258 ?level_84459259) 
			(loaded ?goods_84459257 ?truck_84459258 ?level_84459256) 
			(next ?level_84459255 ?level_84459256)
	)
	:effect (and 
		(loaded ?goods_84459257 ?truck_84459258 ?level_84459255) 
		(next ?level_84459255 ?level_84459259) 
		(next ?level_84459256 ?level_84459255) 
		(next ?level_84459256 ?level_84459259) 
		(stored ?goods_84459257 ?level_84459256)
	)
)

(:action act_act_tpp-propositional_301998_302527
	:parameters ( ?goods_164182468 - goods ?level_164182469 - level ?level_164182467 - level ?level_164182466 - level ?truck_164182470 - truck)
	:precondition (and 
			(loaded ?goods_164182468 ?truck_164182470 ?level_164182469) 
			(loaded ?goods_164182468 ?truck_164182470 ?level_164182467) 
			(next ?level_164182467 ?level_164182466)
	)
	:effect (and 
		(not (loaded ?goods_164182468 ?truck_164182470 ?level_164182466)) 
		(next ?level_164182467 ?level_164182469) 
		(next ?level_164182469 ?level_164182466) 
		(next ?level_164182469 ?level_164182467) 
		(next ?level_164182466 ?level_164182467) 
		(stored ?goods_164182468 ?level_164182466)
	)
)

(:action act_act_tpp-propositional_301998_302528
	:parameters ( ?goods_164182468 - goods ?level_164182469 - level ?level_164182467 - level ?level_164182466 - level ?truck_164182470 - truck)
	:precondition (and 
			(loaded ?goods_164182468 ?truck_164182470 ?level_164182469) 
			(loaded ?goods_164182468 ?truck_164182470 ?level_164182467) 
			(next ?level_164182467 ?level_164182466)
	)
	:effect (and 
		(loaded ?goods_164182468 ?truck_164182470 ?level_164182466) 
		(next ?level_164182467 ?level_164182469) 
		(next ?level_164182469 ?level_164182466) 
		(next ?level_164182469 ?level_164182467) 
		(next ?level_164182466 ?level_164182467) 
		(stored ?goods_164182468 ?level_164182469) 
		(stored ?goods_164182468 ?level_164182467) 
		(not (stored ?goods_164182468 ?level_164182466))
	)
)

(:action act_act_tpp-propositional_301999_302529
	:parameters ( ?level_405690893 - level ?level_405690892 - level ?level_405690890 - level ?goods_405690891 - goods ?truck_405690889 - truck ?market_405690894 - market)
	:precondition (and 
			(loaded ?goods_405690891 ?truck_405690889 ?level_405690892) 
			(next ?level_405690893 ?level_405690890) 
			(ready-to-load ?goods_405690891 ?market_405690894 ?level_405690892) 
			(stored ?goods_405690891 ?level_405690892)
	)
	:effect (and 
		(loaded ?goods_405690891 ?truck_405690889 ?level_405690890) 
		(next ?level_405690892 ?level_405690890) 
		(next ?level_405690892 ?level_405690893) 
		(ready-to-load ?goods_405690891 ?market_405690894 ?level_405690890)
	)
)

(:action act_act_tpp-propositional_302000_302530
	:parameters ( ?level_568083092 - level ?level_568083095 - level ?level_568083094 - level ?goods_568083096 - goods ?truck_568083093 - truck)
	:precondition (and 
			(loaded ?goods_568083096 ?truck_568083093 ?level_568083092) 
			(next ?level_568083095 ?level_568083092) 
			(next ?level_568083094 ?level_568083092)
	)
	:effect (and 
		(loaded ?goods_568083096 ?truck_568083093 ?level_568083095) 
		(loaded ?goods_568083096 ?truck_568083093 ?level_568083094) 
		(next ?level_568083092 ?level_568083094) 
		(next ?level_568083094 ?level_568083095) 
		(next ?level_568083095 ?level_568083094) 
		(not (stored ?goods_568083096 ?level_568083095)) 
		(not (stored ?goods_568083096 ?level_568083092))
	)
)

(:action act_act_tpp-propositional_302001_302531
	:parameters ( ?level_250709260 - level ?truck_250709258 - truck ?truck_250709259 - truck ?place_250709261 - place ?level_250709262 - level ?goods_250709263 - goods)
	:precondition (and 
			(at ?truck_250709258 ?place_250709261) 
			(loaded ?goods_250709263 ?truck_250709259 ?level_250709260) 
			(next ?level_250709262 ?level_250709260)
	)
	:effect (and 
		(at ?truck_250709259 ?place_250709261) 
		(not (loaded ?goods_250709263 ?truck_250709258 ?level_250709260)) 
		(loaded ?goods_250709263 ?truck_250709259 ?level_250709262) 
		(loaded ?goods_250709263 ?truck_250709258 ?level_250709262) 
		(not (stored ?goods_250709263 ?level_250709262))
	)
)

(:action act_act_tpp-propositional_302001_302532
	:parameters ( ?level_250709260 - level ?truck_250709258 - truck ?truck_250709259 - truck ?place_250709261 - place ?level_250709262 - level ?goods_250709263 - goods)
	:precondition (and 
			(at ?truck_250709258 ?place_250709261) 
			(loaded ?goods_250709263 ?truck_250709259 ?level_250709260) 
			(next ?level_250709262 ?level_250709260)
	)
	:effect (and 
		(not (at ?truck_250709259 ?place_250709261)) 
		(loaded ?goods_250709263 ?truck_250709258 ?level_250709260) 
		(not (loaded ?goods_250709263 ?truck_250709259 ?level_250709262)) 
		(loaded ?goods_250709263 ?truck_250709258 ?level_250709262) 
		(next ?level_250709260 ?level_250709262) 
		(not (stored ?goods_250709263 ?level_250709260)) 
		(stored ?goods_250709263 ?level_250709262)
	)
)

(:action act_act_tpp-propositional_302001_302533
	:parameters ( ?level_250709260 - level ?truck_250709258 - truck ?truck_250709259 - truck ?place_250709261 - place ?goods_250709263 - goods ?level_250709262 - level)
	:precondition (and 
			(at ?truck_250709258 ?place_250709261) 
			(loaded ?goods_250709263 ?truck_250709259 ?level_250709260) 
			(next ?level_250709262 ?level_250709260)
	)
	:effect (and 
		(at ?truck_250709259 ?place_250709261) 
		(loaded ?goods_250709263 ?truck_250709258 ?level_250709260) 
		(not (loaded ?goods_250709263 ?truck_250709259 ?level_250709262)) 
		(loaded ?goods_250709263 ?truck_250709258 ?level_250709262) 
		(stored ?goods_250709263 ?level_250709260) 
		(stored ?goods_250709263 ?level_250709262)
	)
)

(:action act_act_tpp-propositional_302001_302534
	:parameters ( ?level_250709260 - level ?truck_250709258 - truck ?truck_250709259 - truck ?place_250709261 - place ?level_250709262 - level ?goods_250709263 - goods)
	:precondition (and 
			(at ?truck_250709258 ?place_250709261) 
			(loaded ?goods_250709263 ?truck_250709259 ?level_250709260) 
			(next ?level_250709262 ?level_250709260)
	)
	:effect (and 
		(at ?truck_250709259 ?place_250709261) 
		(loaded ?goods_250709263 ?truck_250709258 ?level_250709260) 
		(loaded ?goods_250709263 ?truck_250709259 ?level_250709262) 
		(not (loaded ?goods_250709263 ?truck_250709258 ?level_250709262)) 
		(next ?level_250709260 ?level_250709262) 
		(stored ?goods_250709263 ?level_250709260) 
		(stored ?goods_250709263 ?level_250709262)
	)
)

(:action act_act_tpp-propositional_302002_302535
	:parameters ( ?goods_519957708 - goods ?level_519957707 - level ?level_519957706 - level ?truck_519957705 - truck ?goods_519957704 - goods)
	:precondition (and 
			(loaded ?goods_519957708 ?truck_519957705 ?level_519957706) 
			(stored ?goods_519957704 ?level_519957707)
	)
	:effect (and 
		(not (loaded ?goods_519957704 ?truck_519957705 ?level_519957707)) 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957706) 
		(loaded ?goods_519957708 ?truck_519957705 ?level_519957707) 
		(next ?level_519957706 ?level_519957707) 
		(next ?level_519957707 ?level_519957706) 
		(stored ?goods_519957708 ?level_519957706) 
		(stored ?goods_519957708 ?level_519957707) 
		(not (stored ?goods_519957704 ?level_519957706))
	)
)

(:action act_act_tpp-propositional_302002_302536
	:parameters ( ?goods_519957708 - goods ?level_519957707 - level ?level_519957706 - level ?truck_519957705 - truck ?goods_519957704 - goods)
	:precondition (and 
			(loaded ?goods_519957708 ?truck_519957705 ?level_519957706) 
			(stored ?goods_519957704 ?level_519957707)
	)
	:effect (and 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957707) 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957706) 
		(loaded ?goods_519957708 ?truck_519957705 ?level_519957707) 
		(next ?level_519957706 ?level_519957707) 
		(next ?level_519957707 ?level_519957706) 
		(not (stored ?goods_519957708 ?level_519957706)) 
		(not (stored ?goods_519957708 ?level_519957707)) 
		(not (stored ?goods_519957704 ?level_519957706))
	)
)

(:action act_act_tpp-propositional_302002_302537
	:parameters ( ?goods_519957708 - goods ?level_519957707 - level ?level_519957706 - level ?truck_519957705 - truck ?goods_519957704 - goods)
	:precondition (and 
			(loaded ?goods_519957708 ?truck_519957705 ?level_519957706) 
			(stored ?goods_519957704 ?level_519957707)
	)
	:effect (and 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957707) 
		(not (loaded ?goods_519957704 ?truck_519957705 ?level_519957706)) 
		(loaded ?goods_519957708 ?truck_519957705 ?level_519957707) 
		(next ?level_519957706 ?level_519957707) 
		(next ?level_519957707 ?level_519957706) 
		(stored ?goods_519957708 ?level_519957706) 
		(not (stored ?goods_519957708 ?level_519957707)) 
		(stored ?goods_519957704 ?level_519957706)
	)
)

(:action act_act_tpp-propositional_302002_302538
	:parameters ( ?goods_519957708 - goods ?level_519957707 - level ?level_519957706 - level ?truck_519957705 - truck ?goods_519957704 - goods)
	:precondition (and 
			(loaded ?goods_519957708 ?truck_519957705 ?level_519957706) 
			(stored ?goods_519957704 ?level_519957707)
	)
	:effect (and 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957707) 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957706) 
		(not (loaded ?goods_519957708 ?truck_519957705 ?level_519957707)) 
		(stored ?goods_519957708 ?level_519957706) 
		(not (stored ?goods_519957708 ?level_519957707))
	)
)

(:action act_act_tpp-propositional_302002_302539
	:parameters ( ?goods_519957708 - goods ?level_519957707 - level ?level_519957706 - level ?truck_519957705 - truck ?goods_519957704 - goods)
	:precondition (and 
			(loaded ?goods_519957708 ?truck_519957705 ?level_519957706) 
			(stored ?goods_519957704 ?level_519957707)
	)
	:effect (and 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957707) 
		(not (loaded ?goods_519957704 ?truck_519957705 ?level_519957706)) 
		(not (loaded ?goods_519957708 ?truck_519957705 ?level_519957707)) 
		(next ?level_519957706 ?level_519957707) 
		(next ?level_519957707 ?level_519957706) 
		(not (stored ?goods_519957708 ?level_519957706)) 
		(stored ?goods_519957708 ?level_519957707) 
		(stored ?goods_519957704 ?level_519957706)
	)
)

(:action act_act_tpp-propositional_302002_302540
	:parameters ( ?goods_519957708 - goods ?level_519957707 - level ?level_519957706 - level ?truck_519957705 - truck ?goods_519957704 - goods)
	:precondition (and 
			(loaded ?goods_519957708 ?truck_519957705 ?level_519957706) 
			(stored ?goods_519957704 ?level_519957707)
	)
	:effect (and 
		(loaded ?goods_519957704 ?truck_519957705 ?level_519957706) 
		(loaded ?goods_519957708 ?truck_519957705 ?level_519957707) 
		(next ?level_519957706 ?level_519957707) 
		(not (stored ?goods_519957708 ?level_519957706)) 
		(stored ?goods_519957708 ?level_519957707) 
		(stored ?goods_519957704 ?level_519957706)
	)
)

(:action act_act_tpp-propositional_302003_302541
	:parameters ( ?goods_320150036 - goods ?truck_320150035 - truck ?level_320150037 - level ?level_320150033 - level ?goods_320150034 - goods)
	:precondition (and 
			(loaded ?goods_320150034 ?truck_320150035 ?level_320150037) 
			(next ?level_320150037 ?level_320150033) 
			(stored ?goods_320150036 ?level_320150033)
	)
	:effect (and 
		(not (loaded ?goods_320150036 ?truck_320150035 ?level_320150033)) 
		(not (loaded ?goods_320150034 ?truck_320150035 ?level_320150033)) 
		(loaded ?goods_320150036 ?truck_320150035 ?level_320150037)
	)
)

(:action act_act_tpp-propositional_302003_302542
	:parameters ( ?goods_320150036 - goods ?truck_320150035 - truck ?level_320150037 - level ?goods_320150034 - goods ?level_320150033 - level)
	:precondition (and 
			(loaded ?goods_320150034 ?truck_320150035 ?level_320150037) 
			(next ?level_320150037 ?level_320150033) 
			(stored ?goods_320150036 ?level_320150033)
	)
	:effect (and 
		(loaded ?goods_320150036 ?truck_320150035 ?level_320150033) 
		(not (loaded ?goods_320150034 ?truck_320150035 ?level_320150033)) 
		(stored ?goods_320150036 ?level_320150037) 
		(not (stored ?goods_320150034 ?level_320150033)) 
		(not (stored ?goods_320150034 ?level_320150037))
	)
)

(:action act_act_tpp-propositional_302003_302543
	:parameters ( ?goods_320150036 - goods ?truck_320150035 - truck ?level_320150037 - level ?goods_320150034 - goods ?level_320150033 - level)
	:precondition (and 
			(loaded ?goods_320150034 ?truck_320150035 ?level_320150037) 
			(next ?level_320150037 ?level_320150033) 
			(stored ?goods_320150036 ?level_320150033)
	)
	:effect (and 
		(not (loaded ?goods_320150036 ?truck_320150035 ?level_320150033)) 
		(loaded ?goods_320150034 ?truck_320150035 ?level_320150033) 
		(loaded ?goods_320150036 ?truck_320150035 ?level_320150037) 
		(next ?level_320150033 ?level_320150037) 
		(stored ?goods_320150036 ?level_320150037)
	)
)

(:action act_act_tpp-propositional_302003_302544
	:parameters ( ?goods_320150036 - goods ?truck_320150035 - truck ?level_320150037 - level ?level_320150033 - level ?goods_320150034 - goods)
	:precondition (and 
			(loaded ?goods_320150034 ?truck_320150035 ?level_320150037) 
			(next ?level_320150037 ?level_320150033) 
			(stored ?goods_320150036 ?level_320150033)
	)
	:effect (and 
		(loaded ?goods_320150034 ?truck_320150035 ?level_320150033) 
		(not (loaded ?goods_320150036 ?truck_320150035 ?level_320150037)) 
		(next ?level_320150033 ?level_320150037) 
		(stored ?goods_320150034 ?level_320150033)
	)
)

(:action act_act_tpp-propositional_302004_302545
	:parameters ( ?truck_575244417 - truck ?level_575244421 - level ?market_575244422 - market ?goods_575244420 - goods ?level_575244418 - level ?level_575244419 - level)
	:precondition (and 
			(loaded ?goods_575244420 ?truck_575244417 ?level_575244421) 
			(loaded ?goods_575244420 ?truck_575244417 ?level_575244418) 
			(next ?level_575244419 ?level_575244421) 
			(ready-to-load ?goods_575244420 ?market_575244422 ?level_575244421)
	)
	:effect (and 
		(loaded ?goods_575244420 ?truck_575244417 ?level_575244419) 
		(ready-to-load ?goods_575244420 ?market_575244422 ?level_575244418) 
		(stored ?goods_575244420 ?level_575244421) 
		(not (stored ?goods_575244420 ?level_575244418))
	)
)

(:action act_act_tpp-propositional_302005_302546
	:parameters ( ?level_101953733 - level ?level_101953735 - level ?level_101953737 - level ?level_101953738 - level ?goods_101953734 - goods ?truck_101953736 - truck)
	:precondition (and 
			(loaded ?goods_101953734 ?truck_101953736 ?level_101953733) 
			(next ?level_101953738 ?level_101953733) 
			(next ?level_101953738 ?level_101953737) 
			(next ?level_101953737 ?level_101953735)
	)
	:effect (and 
		(loaded ?goods_101953734 ?truck_101953736 ?level_101953735) 
		(loaded ?goods_101953734 ?truck_101953736 ?level_101953737) 
		(next ?level_101953737 ?level_101953738) 
		(next ?level_101953737 ?level_101953733)
	)
)

(:action act_act_tpp-propositional_302006_302547
	:parameters ( ?truck_425553606 - truck ?market_425553603 - market ?level_425553601 - level ?goods_425553604 - goods ?goods_425553605 - goods ?level_425553602 - level)
	:precondition (and 
			(loaded ?goods_425553604 ?truck_425553606 ?level_425553602) 
			(loaded ?goods_425553605 ?truck_425553606 ?level_425553602) 
			(ready-to-load ?goods_425553605 ?market_425553603 ?level_425553601) 
			(stored ?goods_425553605 ?level_425553601) 
			(stored ?goods_425553604 ?level_425553602)
	)
	:effect (and 
		(not (loaded ?goods_425553605 ?truck_425553606 ?level_425553601)) 
		(next ?level_425553601 ?level_425553602) 
		(not (ready-to-load ?goods_425553604 ?market_425553603 ?level_425553601))
	)
)

(:action act_act_tpp-propositional_302007_302548
	:parameters ( ?goods_550985440 - goods ?goods_550985441 - goods ?truck_550985442 - truck ?market_550985443 - market ?level_550985438 - level ?level_550985439 - level)
	:precondition (and 
			(loaded ?goods_550985441 ?truck_550985442 ?level_550985438) 
			(next ?level_550985439 ?level_550985438) 
			(ready-to-load ?goods_550985441 ?market_550985443 ?level_550985438) 
			(ready-to-load ?goods_550985440 ?market_550985443 ?level_550985439) 
			(stored ?goods_550985440 ?level_550985438)
	)
	:effect (and 
		(loaded ?goods_550985440 ?truck_550985442 ?level_550985438) 
		(ready-to-load ?goods_550985441 ?market_550985443 ?level_550985439)
	)
)

(:action act_act_tpp-propositional_302008_302549
	:parameters ( ?level_242795443 - level ?goods_242795445 - goods ?place_242795444 - place ?truck_242795448 - truck ?level_242795446 - level ?truck_242795447 - truck)
	:precondition (and 
			(at ?truck_242795448 ?place_242795444) 
			(loaded ?goods_242795445 ?truck_242795447 ?level_242795443) 
			(loaded ?goods_242795445 ?truck_242795447 ?level_242795446) 
			(stored ?goods_242795445 ?level_242795446)
	)
	:effect (and 
		(at ?truck_242795447 ?place_242795444) 
		(loaded ?goods_242795445 ?truck_242795448 ?level_242795446) 
		(loaded ?goods_242795445 ?truck_242795448 ?level_242795443)
	)
)

(:action act_act_tpp-propositional_302009_302550
	:parameters ( ?goods_22901769 - goods ?level_22901766 - level ?level_22901765 - level ?goods_22901768 - goods ?market_22901767 - market)
	:precondition (and 
			(ready-to-load ?goods_22901769 ?market_22901767 ?level_22901766) 
			(stored ?goods_22901768 ?level_22901765)
	)
	:effect (and 
		(ready-to-load ?goods_22901768 ?market_22901767 ?level_22901765) 
		(not (ready-to-load ?goods_22901768 ?market_22901767 ?level_22901766)) 
		(not (stored ?goods_22901769 ?level_22901766)) 
		(stored ?goods_22901769 ?level_22901765) 
		(stored ?goods_22901768 ?level_22901766)
	)
)

(:action act_act_tpp-propositional_302009_302551
	:parameters ( ?goods_22901769 - goods ?level_22901766 - level ?level_22901765 - level ?goods_22901768 - goods ?market_22901767 - market)
	:precondition (and 
			(ready-to-load ?goods_22901769 ?market_22901767 ?level_22901766) 
			(stored ?goods_22901768 ?level_22901765)
	)
	:effect (and 
		(next ?level_22901765 ?level_22901766) 
		(next ?level_22901766 ?level_22901765) 
		(ready-to-load ?goods_22901769 ?market_22901767 ?level_22901765) 
		(ready-to-load ?goods_22901768 ?market_22901767 ?level_22901765) 
		(ready-to-load ?goods_22901768 ?market_22901767 ?level_22901766) 
		(stored ?goods_22901769 ?level_22901766)
	)
)

(:action act_act_tpp-propositional_302010_302552
	:parameters ( ?goods_246755849 - goods ?market_246755847 - market ?level_246755848 - level ?level_246755850 - level)
	:precondition (and 
			(ready-to-load ?goods_246755849 ?market_246755847 ?level_246755848) 
			(stored ?goods_246755849 ?level_246755850)
	)
	:effect (and 
		(next ?level_246755848 ?level_246755850) 
		(next ?level_246755850 ?level_246755848) 
		(ready-to-load ?goods_246755849 ?market_246755847 ?level_246755850) 
		(stored ?goods_246755849 ?level_246755848)
	)
)

(:action act_act_tpp-propositional_302010_302553
	:parameters ( ?goods_246755849 - goods ?market_246755847 - market ?level_246755848 - level ?level_246755850 - level)
	:precondition (and 
			(ready-to-load ?goods_246755849 ?market_246755847 ?level_246755848) 
			(stored ?goods_246755849 ?level_246755850)
	)
	:effect (and 
		(next ?level_246755850 ?level_246755848) 
		(ready-to-load ?goods_246755849 ?market_246755847 ?level_246755850) 
		(not (stored ?goods_246755849 ?level_246755848))
	)
)

(:action act_act_tpp-propositional_302010_302554
	:parameters ( ?goods_246755849 - goods ?market_246755847 - market ?level_246755848 - level ?level_246755850 - level)
	:precondition (and 
			(ready-to-load ?goods_246755849 ?market_246755847 ?level_246755848) 
			(stored ?goods_246755849 ?level_246755850)
	)
	:effect (and 
		(not (ready-to-load ?goods_246755849 ?market_246755847 ?level_246755850)) 
		(not (stored ?goods_246755849 ?level_246755848))
	)
)

(:action act_act_tpp-propositional_302010_302555
	:parameters ( ?goods_246755849 - goods ?market_246755847 - market ?level_246755848 - level ?level_246755850 - level)
	:precondition (and 
			(ready-to-load ?goods_246755849 ?market_246755847 ?level_246755848) 
			(stored ?goods_246755849 ?level_246755850)
	)
	:effect (and 
		(next ?level_246755848 ?level_246755850) 
		(next ?level_246755850 ?level_246755848) 
		(not (ready-to-load ?goods_246755849 ?market_246755847 ?level_246755850)) 
		(stored ?goods_246755849 ?level_246755848)
	)
)

(:action act_act_tpp-propositional_302011_302556
	:parameters ( ?level_13204560 - level ?level_13204561 - level ?goods_13204562 - goods ?truck_13204563 - truck)
	:precondition (and 
			(loaded ?goods_13204562 ?truck_13204563 ?level_13204560) 
			(next ?level_13204561 ?level_13204560) 
			(stored ?goods_13204562 ?level_13204561)
	)
	:effect (and 
		(not (loaded ?goods_13204562 ?truck_13204563 ?level_13204561)) 
		(next ?level_13204560 ?level_13204561) 
		(not (stored ?goods_13204562 ?level_13204560))
	)
)

(:action act_act_tpp-propositional_302011_302557
	:parameters ( ?level_13204560 - level ?level_13204561 - level ?goods_13204562 - goods ?truck_13204563 - truck)
	:precondition (and 
			(loaded ?goods_13204562 ?truck_13204563 ?level_13204560) 
			(next ?level_13204561 ?level_13204560) 
			(stored ?goods_13204562 ?level_13204561)
	)
	:effect (and 
		(loaded ?goods_13204562 ?truck_13204563 ?level_13204561) 
		(next ?level_13204560 ?level_13204561) 
		(not (stored ?goods_13204562 ?level_13204560))
	)
)

(:action act_act_tpp-propositional_302011_302558
	:parameters ( ?level_13204560 - level ?level_13204561 - level ?goods_13204562 - goods ?truck_13204563 - truck)
	:precondition (and 
			(loaded ?goods_13204562 ?truck_13204563 ?level_13204560) 
			(next ?level_13204561 ?level_13204560) 
			(stored ?goods_13204562 ?level_13204561)
	)
	:effect (and 
		(not (loaded ?goods_13204562 ?truck_13204563 ?level_13204561)) 
		(stored ?goods_13204562 ?level_13204560)
	)
)

(:action act_act_tpp-propositional_302011_302559
	:parameters ( ?level_13204560 - level ?level_13204561 - level ?goods_13204562 - goods ?truck_13204563 - truck)
	:precondition (and 
			(loaded ?goods_13204562 ?truck_13204563 ?level_13204560) 
			(next ?level_13204561 ?level_13204560) 
			(stored ?goods_13204562 ?level_13204561)
	)
	:effect (and 
		(loaded ?goods_13204562 ?truck_13204563 ?level_13204561) 
		(stored ?goods_13204562 ?level_13204560)
	)
)

(:action act_act_tpp-propositional_302012_302560
	:parameters ( ?level_49203598 - level ?goods_49203597 - goods ?level_49203595 - level ?truck_49203596 - truck)
	:precondition (and 
			(loaded ?goods_49203597 ?truck_49203596 ?level_49203595) 
			(next ?level_49203595 ?level_49203598) 
			(stored ?goods_49203597 ?level_49203598)
	)
	:effect (and 
		(loaded ?goods_49203597 ?truck_49203596 ?level_49203598) 
		(next ?level_49203598 ?level_49203595) 
		(not (stored ?goods_49203597 ?level_49203595))
	)
)

(:action act_act_tpp-propositional_302012_302561
	:parameters ( ?level_49203598 - level ?goods_49203597 - goods ?level_49203595 - level ?truck_49203596 - truck)
	:precondition (and 
			(loaded ?goods_49203597 ?truck_49203596 ?level_49203595) 
			(next ?level_49203595 ?level_49203598) 
			(stored ?goods_49203597 ?level_49203598)
	)
	:effect (and 
		(loaded ?goods_49203597 ?truck_49203596 ?level_49203598) 
		(stored ?goods_49203597 ?level_49203595)
	)
)

(:action act_act_tpp-propositional_302012_302562
	:parameters ( ?level_49203598 - level ?goods_49203597 - goods ?level_49203595 - level ?truck_49203596 - truck)
	:precondition (and 
			(loaded ?goods_49203597 ?truck_49203596 ?level_49203595) 
			(next ?level_49203595 ?level_49203598) 
			(stored ?goods_49203597 ?level_49203598)
	)
	:effect (and 
		(not (loaded ?goods_49203597 ?truck_49203596 ?level_49203598)) 
		(next ?level_49203598 ?level_49203595) 
		(stored ?goods_49203597 ?level_49203595)
	)
)

(:action act_act_tpp-propositional_302012_302563
	:parameters ( ?level_49203598 - level ?goods_49203597 - goods ?level_49203595 - level ?truck_49203596 - truck)
	:precondition (and 
			(loaded ?goods_49203597 ?truck_49203596 ?level_49203595) 
			(next ?level_49203595 ?level_49203598) 
			(stored ?goods_49203597 ?level_49203598)
	)
	:effect (and 
		(not (loaded ?goods_49203597 ?truck_49203596 ?level_49203598)) 
		(next ?level_49203598 ?level_49203595) 
		(not (stored ?goods_49203597 ?level_49203595))
	)
)

(:action act_act_tpp-propositional_302013_302564
	:parameters ( ?level_183368872 - level ?level_183368875 - level ?market_183368876 - market ?goods_183368874 - goods ?truck_183368873 - truck ?level_183368871 - level)
	:precondition (and 
			(loaded ?goods_183368874 ?truck_183368873 ?level_183368871) 
			(next ?level_183368875 ?level_183368872) 
			(ready-to-load ?goods_183368874 ?market_183368876 ?level_183368872)
	)
	:effect (and 
		(loaded ?goods_183368874 ?truck_183368873 ?level_183368872) 
		(loaded ?goods_183368874 ?truck_183368873 ?level_183368875) 
		(next ?level_183368872 ?level_183368875) 
		(next ?level_183368875 ?level_183368871) 
		(ready-to-load ?goods_183368874 ?market_183368876 ?level_183368875) 
		(not (ready-to-load ?goods_183368874 ?market_183368876 ?level_183368871)) 
		(stored ?goods_183368874 ?level_183368875) 
		(stored ?goods_183368874 ?level_183368872)
	)
)

(:action act_act_tpp-propositional_302013_302565
	:parameters ( ?level_183368872 - level ?level_183368875 - level ?market_183368876 - market ?goods_183368874 - goods ?truck_183368873 - truck ?level_183368871 - level)
	:precondition (and 
			(loaded ?goods_183368874 ?truck_183368873 ?level_183368871) 
			(next ?level_183368875 ?level_183368872) 
			(ready-to-load ?goods_183368874 ?market_183368876 ?level_183368872)
	)
	:effect (and 
		(loaded ?goods_183368874 ?truck_183368873 ?level_183368872) 
		(not (ready-to-load ?goods_183368874 ?market_183368876 ?level_183368875)) 
		(ready-to-load ?goods_183368874 ?market_183368876 ?level_183368871)
	)
)

(:action act_act_tpp-propositional_302014_302566
	:parameters ( ?goods_184049858 - goods ?truck_184049856 - truck ?market_184049857 - market ?level_184049859 - level ?level_184049855 - level ?goods_184049854 - goods)
	:precondition (and 
			(loaded ?goods_184049858 ?truck_184049856 ?level_184049855) 
			(next ?level_184049859 ?level_184049855) 
			(ready-to-load ?goods_184049854 ?market_184049857 ?level_184049855)
	)
	:effect (and 
		(loaded ?goods_184049858 ?truck_184049856 ?level_184049859) 
		(not (ready-to-load ?goods_184049858 ?market_184049857 ?level_184049859)) 
		(stored ?goods_184049854 ?level_184049855)
	)
)

(:action act_act_tpp-propositional_302015_302567
	:parameters ( ?level_436178930 - level ?level_436178932 - level ?goods_436178929 - goods ?goods_436178928 - goods ?truck_436178931 - truck)
	:precondition (and 
			(loaded ?goods_436178929 ?truck_436178931 ?level_436178930) 
			(stored ?goods_436178928 ?level_436178932) 
			(stored ?goods_436178928 ?level_436178930)
	)
	:effect (and 
		(loaded ?goods_436178928 ?truck_436178931 ?level_436178932) 
		(loaded ?goods_436178929 ?truck_436178931 ?level_436178932) 
		(not (loaded ?goods_436178928 ?truck_436178931 ?level_436178930)) 
		(next ?level_436178932 ?level_436178930) 
		(stored ?goods_436178929 ?level_436178932)
	)
)

(:action act_act_tpp-propositional_302015_302568
	:parameters ( ?level_436178930 - level ?level_436178932 - level ?goods_436178929 - goods ?goods_436178928 - goods ?truck_436178931 - truck)
	:precondition (and 
			(loaded ?goods_436178929 ?truck_436178931 ?level_436178930) 
			(stored ?goods_436178928 ?level_436178932) 
			(stored ?goods_436178928 ?level_436178930)
	)
	:effect (and 
		(not (loaded ?goods_436178928 ?truck_436178931 ?level_436178932)) 
		(loaded ?goods_436178928 ?truck_436178931 ?level_436178930) 
		(next ?level_436178932 ?level_436178930) 
		(stored ?goods_436178929 ?level_436178932) 
		(stored ?goods_436178929 ?level_436178930)
	)
)

(:action act_act_tpp-propositional_302016_302569
	:parameters ( ?level_197738606 - level ?level_197738605 - level ?level_197738608 - level ?goods_197738609 - goods ?market_197738607 - market)
	:precondition (and 
			(next ?level_197738608 ?level_197738605) 
			(ready-to-load ?goods_197738609 ?market_197738607 ?level_197738606) 
			(stored ?goods_197738609 ?level_197738608)
	)
	:effect (and 
		(next ?level_197738605 ?level_197738606) 
		(next ?level_197738605 ?level_197738608) 
		(not (ready-to-load ?goods_197738609 ?market_197738607 ?level_197738608))
	)
)

(:action act_act_tpp-propositional_302017_302570
	:parameters ( ?level_467715113 - level ?level_467715112 - level ?level_467715115 - level ?market_467715114 - market ?goods_467715111 - goods)
	:precondition (and 
			(next ?level_467715113 ?level_467715112) 
			(ready-to-load ?goods_467715111 ?market_467715114 ?level_467715115) 
			(stored ?goods_467715111 ?level_467715115)
	)
	:effect (and 
		(next ?level_467715112 ?level_467715113) 
		(next ?level_467715115 ?level_467715112) 
		(not (ready-to-load ?goods_467715111 ?market_467715114 ?level_467715113))
	)
)

(:action act_act_tpp-propositional_302018_302571
	:parameters ( ?goods_1076429 - goods ?truck_1076426 - truck ?level_1076428 - level ?level_1076427 - level)
	:precondition (and 
			(loaded ?goods_1076429 ?truck_1076426 ?level_1076428) 
			(next ?level_1076427 ?level_1076428) 
			(stored ?goods_1076429 ?level_1076428)
	)
	:effect (and 
		(not (loaded ?goods_1076429 ?truck_1076426 ?level_1076427)) 
		(next ?level_1076428 ?level_1076427)
	)
)

(:action act_act_tpp-propositional_302018_302572
	:parameters ( ?goods_1076429 - goods ?truck_1076426 - truck ?level_1076428 - level ?level_1076427 - level)
	:precondition (and 
			(loaded ?goods_1076429 ?truck_1076426 ?level_1076428) 
			(next ?level_1076427 ?level_1076428) 
			(stored ?goods_1076429 ?level_1076428)
	)
	:effect (and 
		(loaded ?goods_1076429 ?truck_1076426 ?level_1076427) 
		(next ?level_1076428 ?level_1076427) 
		(not (stored ?goods_1076429 ?level_1076427))
	)
)

(:action act_act_tpp-propositional_302018_302573
	:parameters ( ?goods_1076429 - goods ?truck_1076426 - truck ?level_1076428 - level ?level_1076427 - level)
	:precondition (and 
			(loaded ?goods_1076429 ?truck_1076426 ?level_1076428) 
			(next ?level_1076427 ?level_1076428) 
			(stored ?goods_1076429 ?level_1076428)
	)
	:effect (and 
		(loaded ?goods_1076429 ?truck_1076426 ?level_1076427) 
		(next ?level_1076428 ?level_1076427) 
		(stored ?goods_1076429 ?level_1076427)
	)
)

(:action act_act_tpp-propositional_302019_302574
	:parameters ( ?level_13868490 - level ?level_13868493 - level ?truck_13868491 - truck ?goods_13868492 - goods ?level_13868489 - level)
	:precondition (and 
			(loaded ?goods_13868492 ?truck_13868491 ?level_13868493) 
			(next ?level_13868489 ?level_13868490) 
			(stored ?goods_13868492 ?level_13868489)
	)
	:effect (and 
		(not (loaded ?goods_13868492 ?truck_13868491 ?level_13868489)) 
		(not (loaded ?goods_13868492 ?truck_13868491 ?level_13868490)) 
		(next ?level_13868490 ?level_13868493) 
		(next ?level_13868489 ?level_13868493) 
		(next ?level_13868490 ?level_13868489) 
		(next ?level_13868493 ?level_13868489) 
		(stored ?goods_13868492 ?level_13868490)
	)
)

(:action act_act_tpp-propositional_302019_302575
	:parameters ( ?level_13868490 - level ?goods_13868492 - goods ?truck_13868491 - truck ?level_13868493 - level ?level_13868489 - level)
	:precondition (and 
			(loaded ?goods_13868492 ?truck_13868491 ?level_13868493) 
			(next ?level_13868489 ?level_13868490) 
			(stored ?goods_13868492 ?level_13868489)
	)
	:effect (and 
		(not (loaded ?goods_13868492 ?truck_13868491 ?level_13868489)) 
		(loaded ?goods_13868492 ?truck_13868491 ?level_13868490) 
		(next ?level_13868493 ?level_13868489)
	)
)

(:action act_act_tpp-propositional_302019_302576
	:parameters ( ?level_13868490 - level ?truck_13868491 - truck ?goods_13868492 - goods ?level_13868493 - level ?level_13868489 - level)
	:precondition (and 
			(loaded ?goods_13868492 ?truck_13868491 ?level_13868493) 
			(next ?level_13868489 ?level_13868490) 
			(stored ?goods_13868492 ?level_13868489)
	)
	:effect (and 
		(loaded ?goods_13868492 ?truck_13868491 ?level_13868489) 
		(loaded ?goods_13868492 ?truck_13868491 ?level_13868490) 
		(next ?level_13868490 ?level_13868493) 
		(next ?level_13868493 ?level_13868490) 
		(next ?level_13868489 ?level_13868493) 
		(next ?level_13868490 ?level_13868489) 
		(next ?level_13868493 ?level_13868489) 
		(stored ?goods_13868492 ?level_13868490)
	)
)

(:action act_act_tpp-propositional_302019_302577
	:parameters ( ?level_13868490 - level ?truck_13868491 - truck ?goods_13868492 - goods ?level_13868493 - level ?level_13868489 - level)
	:precondition (and 
			(loaded ?goods_13868492 ?truck_13868491 ?level_13868493) 
			(next ?level_13868489 ?level_13868490) 
			(stored ?goods_13868492 ?level_13868489)
	)
	:effect (and 
		(loaded ?goods_13868492 ?truck_13868491 ?level_13868489) 
		(not (loaded ?goods_13868492 ?truck_13868491 ?level_13868490)) 
		(next ?level_13868493 ?level_13868490) 
		(next ?level_13868489 ?level_13868493) 
		(not (stored ?goods_13868492 ?level_13868493))
	)
)

(:action act_act_tpp-propositional_302020_302578
	:parameters ( ?truck_25180970 - truck ?level_25180972 - level ?level_25180974 - level ?level_25180971 - level ?goods_25180973 - goods)
	:precondition (and 
			(loaded ?goods_25180973 ?truck_25180970 ?level_25180974) 
			(next ?level_25180971 ?level_25180974) 
			(stored ?goods_25180973 ?level_25180972)
	)
	:effect (and 
		(not (loaded ?goods_25180973 ?truck_25180970 ?level_25180971)) 
		(loaded ?goods_25180973 ?truck_25180970 ?level_25180972) 
		(next ?level_25180971 ?level_25180972) 
		(next ?level_25180974 ?level_25180972) 
		(next ?level_25180972 ?level_25180971) 
		(next ?level_25180972 ?level_25180974) 
		(stored ?goods_25180973 ?level_25180974)
	)
)

(:action act_act_tpp-propositional_302020_302579
	:parameters ( ?truck_25180970 - truck ?level_25180972 - level ?level_25180974 - level ?level_25180971 - level ?goods_25180973 - goods)
	:precondition (and 
			(loaded ?goods_25180973 ?truck_25180970 ?level_25180974) 
			(next ?level_25180971 ?level_25180974) 
			(stored ?goods_25180973 ?level_25180972)
	)
	:effect (and 
		(loaded ?goods_25180973 ?truck_25180970 ?level_25180971) 
		(not (loaded ?goods_25180973 ?truck_25180970 ?level_25180972)) 
		(next ?level_25180971 ?level_25180972) 
		(next ?level_25180974 ?level_25180972) 
		(next ?level_25180974 ?level_25180971) 
		(next ?level_25180972 ?level_25180971) 
		(next ?level_25180972 ?level_25180974) 
		(stored ?goods_25180973 ?level_25180971)
	)
)

(:action act_act_tpp-propositional_302020_302580
	:parameters ( ?level_25180972 - level ?truck_25180970 - truck ?level_25180974 - level ?level_25180971 - level ?goods_25180973 - goods)
	:precondition (and 
			(loaded ?goods_25180973 ?truck_25180970 ?level_25180974) 
			(next ?level_25180971 ?level_25180974) 
			(stored ?goods_25180973 ?level_25180972)
	)
	:effect (and 
		(loaded ?goods_25180973 ?truck_25180970 ?level_25180971) 
		(loaded ?goods_25180973 ?truck_25180970 ?level_25180972) 
		(next ?level_25180971 ?level_25180972) 
		(not (stored ?goods_25180973 ?level_25180974)) 
		(stored ?goods_25180973 ?level_25180971)
	)
)

(:action act_act_tpp-propositional_302021_302581
	:parameters ( ?level_37714783 - level ?truck_37714782 - truck ?goods_37714784 - goods ?level_37714785 - level)
	:precondition (and 
			(loaded ?goods_37714784 ?truck_37714782 ?level_37714785) 
			(next ?level_37714785 ?level_37714783) 
			(stored ?goods_37714784 ?level_37714785)
	)
	:effect (and 
		(not (loaded ?goods_37714784 ?truck_37714782 ?level_37714783)) 
		(next ?level_37714783 ?level_37714785)
	)
)

(:action act_act_tpp-propositional_302021_302582
	:parameters ( ?level_37714783 - level ?truck_37714782 - truck ?goods_37714784 - goods ?level_37714785 - level)
	:precondition (and 
			(loaded ?goods_37714784 ?truck_37714782 ?level_37714785) 
			(next ?level_37714785 ?level_37714783) 
			(stored ?goods_37714784 ?level_37714785)
	)
	:effect (and 
		(loaded ?goods_37714784 ?truck_37714782 ?level_37714783) 
		(next ?level_37714783 ?level_37714785) 
		(stored ?goods_37714784 ?level_37714783)
	)
)

(:action act_act_tpp-propositional_302022_302583
	:parameters ( ?level_112917210 - level ?truck_112917213 - truck ?level_112917212 - level ?level_112917214 - level ?goods_112917211 - goods)
	:precondition (and 
			(loaded ?goods_112917211 ?truck_112917213 ?level_112917210) 
			(next ?level_112917212 ?level_112917214) 
			(stored ?goods_112917211 ?level_112917214)
	)
	:effect (and 
		(loaded ?goods_112917211 ?truck_112917213 ?level_112917214) 
		(next ?level_112917210 ?level_112917212) 
		(not (stored ?goods_112917211 ?level_112917212))
	)
)

(:action act_act_tpp-propositional_302022_302584
	:parameters ( ?level_112917210 - level ?truck_112917213 - truck ?level_112917212 - level ?level_112917214 - level ?goods_112917211 - goods)
	:precondition (and 
			(loaded ?goods_112917211 ?truck_112917213 ?level_112917210) 
			(next ?level_112917212 ?level_112917214) 
			(stored ?goods_112917211 ?level_112917214)
	)
	:effect (and 
		(not (loaded ?goods_112917211 ?truck_112917213 ?level_112917212)) 
		(loaded ?goods_112917211 ?truck_112917213 ?level_112917214) 
		(next ?level_112917210 ?level_112917214) 
		(next ?level_112917212 ?level_112917210) 
		(next ?level_112917210 ?level_112917212) 
		(next ?level_112917214 ?level_112917212) 
		(stored ?goods_112917211 ?level_112917210) 
		(stored ?goods_112917211 ?level_112917212)
	)
)

(:action act_act_tpp-propositional_302022_302585
	:parameters ( ?level_112917210 - level ?level_112917212 - level ?truck_112917213 - truck ?level_112917214 - level ?goods_112917211 - goods)
	:precondition (and 
			(loaded ?goods_112917211 ?truck_112917213 ?level_112917210) 
			(next ?level_112917212 ?level_112917214) 
			(stored ?goods_112917211 ?level_112917214)
	)
	:effect (and 
		(not (loaded ?goods_112917211 ?truck_112917213 ?level_112917212)) 
		(loaded ?goods_112917211 ?truck_112917213 ?level_112917214) 
		(not (stored ?goods_112917211 ?level_112917210)) 
		(stored ?goods_112917211 ?level_112917212)
	)
)

(:action act_act_tpp-propositional_302022_302586
	:parameters ( ?level_112917210 - level ?truck_112917213 - truck ?level_112917212 - level ?level_112917214 - level ?goods_112917211 - goods)
	:precondition (and 
			(loaded ?goods_112917211 ?truck_112917213 ?level_112917210) 
			(next ?level_112917212 ?level_112917214) 
			(stored ?goods_112917211 ?level_112917214)
	)
	:effect (and 
		(not (loaded ?goods_112917211 ?truck_112917213 ?level_112917212)) 
		(not (loaded ?goods_112917211 ?truck_112917213 ?level_112917214)) 
		(next ?level_112917212 ?level_112917210) 
		(next ?level_112917214 ?level_112917210) 
		(stored ?goods_112917211 ?level_112917210)
	)
)

(:action act_act_tpp-propositional_302022_302587
	:parameters ( ?level_112917210 - level ?truck_112917213 - truck ?level_112917212 - level ?level_112917214 - level ?goods_112917211 - goods)
	:precondition (and 
			(loaded ?goods_112917211 ?truck_112917213 ?level_112917210) 
			(next ?level_112917212 ?level_112917214) 
			(stored ?goods_112917211 ?level_112917214)
	)
	:effect (and 
		(loaded ?goods_112917211 ?truck_112917213 ?level_112917212) 
		(loaded ?goods_112917211 ?truck_112917213 ?level_112917214) 
		(next ?level_112917210 ?level_112917214) 
		(next ?level_112917210 ?level_112917212) 
		(next ?level_112917214 ?level_112917212) 
		(stored ?goods_112917211 ?level_112917210) 
		(stored ?goods_112917211 ?level_112917212)
	)
)

(:action act_act_tpp-propositional_302023_302588
	:parameters ( ?place_209217774 - place ?level_209217769 - level ?level_209217771 - level ?goods_209217772 - goods ?place_209217770 - place ?truck_209217773 - truck)
	:precondition (and 
			(at ?truck_209217773 ?place_209217774) 
			(at ?truck_209217773 ?place_209217770) 
			(loaded ?goods_209217772 ?truck_209217773 ?level_209217771) 
			(stored ?goods_209217772 ?level_209217769)
	)
	:effect (and 
		(connected ?place_209217770 ?place_209217774) 
		(loaded ?goods_209217772 ?truck_209217773 ?level_209217769) 
		(next ?level_209217769 ?level_209217771) 
		(next ?level_209217771 ?level_209217769)
	)
)

(:action act_act_tpp-propositional_302024_302589
	:parameters ( ?truck_233653282 - truck ?level_233653286 - level ?goods_233653285 - goods ?level_233653284 - level ?level_233653283 - level)
	:precondition (and 
			(loaded ?goods_233653285 ?truck_233653282 ?level_233653284) 
			(next ?level_233653286 ?level_233653283) 
			(stored ?goods_233653285 ?level_233653284)
	)
	:effect (and 
		(loaded ?goods_233653285 ?truck_233653282 ?level_233653283) 
		(loaded ?goods_233653285 ?truck_233653282 ?level_233653286) 
		(next ?level_233653283 ?level_233653284) 
		(next ?level_233653286 ?level_233653284) 
		(next ?level_233653284 ?level_233653283) 
		(next ?level_233653284 ?level_233653286) 
		(next ?level_233653283 ?level_233653286) 
		(stored ?goods_233653285 ?level_233653286) 
		(not (stored ?goods_233653285 ?level_233653283))
	)
)

(:action act_act_tpp-propositional_302024_302590
	:parameters ( ?truck_233653282 - truck ?level_233653286 - level ?goods_233653285 - goods ?level_233653284 - level ?level_233653283 - level)
	:precondition (and 
			(loaded ?goods_233653285 ?truck_233653282 ?level_233653284) 
			(next ?level_233653286 ?level_233653283) 
			(stored ?goods_233653285 ?level_233653284)
	)
	:effect (and 
		(not (loaded ?goods_233653285 ?truck_233653282 ?level_233653283)) 
		(loaded ?goods_233653285 ?truck_233653282 ?level_233653286) 
		(next ?level_233653283 ?level_233653284) 
		(next ?level_233653286 ?level_233653284) 
		(next ?level_233653284 ?level_233653283) 
		(next ?level_233653284 ?level_233653286) 
		(next ?level_233653283 ?level_233653286) 
		(stored ?goods_233653285 ?level_233653286) 
		(stored ?goods_233653285 ?level_233653283)
	)
)

(:action act_act_tpp-propositional_302024_302591
	:parameters ( ?truck_233653282 - truck ?level_233653286 - level ?goods_233653285 - goods ?level_233653284 - level ?level_233653283 - level)
	:precondition (and 
			(loaded ?goods_233653285 ?truck_233653282 ?level_233653284) 
			(next ?level_233653286 ?level_233653283) 
			(stored ?goods_233653285 ?level_233653284)
	)
	:effect (and 
		(loaded ?goods_233653285 ?truck_233653282 ?level_233653283) 
		(not (loaded ?goods_233653285 ?truck_233653282 ?level_233653286)) 
		(next ?level_233653283 ?level_233653284) 
		(next ?level_233653286 ?level_233653284) 
		(next ?level_233653284 ?level_233653283) 
		(next ?level_233653284 ?level_233653286) 
		(not (stored ?goods_233653285 ?level_233653286))
	)
)

(:action act_act_tpp-propositional_302024_302592
	:parameters ( ?truck_233653282 - truck ?level_233653286 - level ?level_233653284 - level ?goods_233653285 - goods ?level_233653283 - level)
	:precondition (and 
			(loaded ?goods_233653285 ?truck_233653282 ?level_233653284) 
			(next ?level_233653286 ?level_233653283) 
			(stored ?goods_233653285 ?level_233653284)
	)
	:effect (and 
		(not (loaded ?goods_233653285 ?truck_233653282 ?level_233653283)) 
		(next ?level_233653286 ?level_233653284) 
		(not (stored ?goods_233653285 ?level_233653286))
	)
)

(:action act_act_tpp-propositional_302025_302593
	:parameters ( ?truck_463849689 - truck ?level_463849691 - level ?level_463849687 - level ?level_463849688 - level ?goods_463849690 - goods)
	:precondition (and 
			(loaded ?goods_463849690 ?truck_463849689 ?level_463849688) 
			(loaded ?goods_463849690 ?truck_463849689 ?level_463849691) 
			(next ?level_463849691 ?level_463849687) 
			(stored ?goods_463849690 ?level_463849687)
	)
	:effect (and 
		(loaded ?goods_463849690 ?truck_463849689 ?level_463849687) 
		(next ?level_463849687 ?level_463849688) 
		(not (stored ?goods_463849690 ?level_463849691)) 
		(stored ?goods_463849690 ?level_463849688)
	)
)

(:action act_act_tpp-propositional_302026_302594
	:parameters ( ?truck_398723504 - truck ?truck_398723503 - truck ?level_398723501 - level ?place_398723500 - place ?level_398723499 - level ?goods_398723502 - goods)
	:precondition (and 
			(at ?truck_398723504 ?place_398723500) 
			(loaded ?goods_398723502 ?truck_398723503 ?level_398723499) 
			(loaded ?goods_398723502 ?truck_398723504 ?level_398723501) 
			(stored ?goods_398723502 ?level_398723501)
	)
	:effect (and 
		(at ?truck_398723503 ?place_398723500) 
		(loaded ?goods_398723502 ?truck_398723504 ?level_398723499) 
		(loaded ?goods_398723502 ?truck_398723503 ?level_398723501) 
		(next ?level_398723499 ?level_398723501)
	)
)

(:action act_act_tpp-propositional_302027_302595
	:parameters ( ?level_167141805 - level ?level_167141804 - level ?truck_167141802 - truck ?goods_167141803 - goods ?goods_167141801 - goods)
	:precondition (and 
			(loaded ?goods_167141801 ?truck_167141802 ?level_167141805) 
			(next ?level_167141805 ?level_167141804) 
			(stored ?goods_167141803 ?level_167141805)
	)
	:effect (and 
		(loaded ?goods_167141803 ?truck_167141802 ?level_167141804) 
		(not (loaded ?goods_167141803 ?truck_167141802 ?level_167141805)) 
		(not (loaded ?goods_167141801 ?truck_167141802 ?level_167141804)) 
		(next ?level_167141804 ?level_167141805) 
		(stored ?goods_167141801 ?level_167141805) 
		(stored ?goods_167141803 ?level_167141804)
	)
)

(:action act_act_tpp-propositional_302027_302596
	:parameters ( ?level_167141805 - level ?level_167141804 - level ?goods_167141803 - goods ?truck_167141802 - truck ?goods_167141801 - goods)
	:precondition (and 
			(loaded ?goods_167141801 ?truck_167141802 ?level_167141805) 
			(next ?level_167141805 ?level_167141804) 
			(stored ?goods_167141803 ?level_167141805)
	)
	:effect (and 
		(not (loaded ?goods_167141803 ?truck_167141802 ?level_167141804)) 
		(loaded ?goods_167141801 ?truck_167141802 ?level_167141804) 
		(stored ?goods_167141801 ?level_167141805) 
		(stored ?goods_167141803 ?level_167141804)
	)
)

(:action act_act_tpp-propositional_302027_302597
	:parameters ( ?level_167141805 - level ?level_167141804 - level ?goods_167141803 - goods ?truck_167141802 - truck ?goods_167141801 - goods)
	:precondition (and 
			(loaded ?goods_167141801 ?truck_167141802 ?level_167141805) 
			(next ?level_167141805 ?level_167141804) 
			(stored ?goods_167141803 ?level_167141805)
	)
	:effect (and 
		(loaded ?goods_167141803 ?truck_167141802 ?level_167141804) 
		(not (loaded ?goods_167141801 ?truck_167141802 ?level_167141804)) 
		(loaded ?goods_167141803 ?truck_167141802 ?level_167141805) 
		(not (stored ?goods_167141801 ?level_167141805))
	)
)

(:action act_act_tpp-propositional_302028_302598
	:parameters ( ?level_264632029 - level ?truck_264632030 - truck ?goods_264632031 - goods ?level_264632033 - level ?level_264632032 - level)
	:precondition (and 
			(loaded ?goods_264632031 ?truck_264632030 ?level_264632032) 
			(loaded ?goods_264632031 ?truck_264632030 ?level_264632033) 
			(next ?level_264632033 ?level_264632029) 
			(next ?level_264632029 ?level_264632033)
	)
	:effect (and 
		(loaded ?goods_264632031 ?truck_264632030 ?level_264632029) 
		(next ?level_264632032 ?level_264632033) 
		(stored ?goods_264632031 ?level_264632032)
	)
)

(:action act_act_tpp-propositional_302029_302599
	:parameters ( ?goods_297412365 - goods ?level_297412366 - level ?level_297412367 - level ?level_297412368 - level ?truck_297412369 - truck)
	:precondition (and 
			(loaded ?goods_297412365 ?truck_297412369 ?level_297412368) 
			(loaded ?goods_297412365 ?truck_297412369 ?level_297412367) 
			(next ?level_297412368 ?level_297412366) 
			(next ?level_297412366 ?level_297412367)
	)
	:effect (and 
		(loaded ?goods_297412365 ?truck_297412369 ?level_297412366) 
		(next ?level_297412368 ?level_297412367) 
		(stored ?goods_297412365 ?level_297412366)
	)
)

(:action act_act_tpp-propositional_302030_302600
	:parameters ( ?level_299604105 - level ?level_299604108 - level ?goods_299604107 - goods ?truck_299604106 - truck ?level_299604109 - level ?goods_299604110 - goods)
	:precondition (and 
			(loaded ?goods_299604110 ?truck_299604106 ?level_299604108) 
			(loaded ?goods_299604107 ?truck_299604106 ?level_299604108) 
			(next ?level_299604109 ?level_299604105) 
			(next ?level_299604108 ?level_299604109)
	)
	:effect (and 
		(loaded ?goods_299604110 ?truck_299604106 ?level_299604109) 
		(next ?level_299604108 ?level_299604105) 
		(stored ?goods_299604107 ?level_299604105)
	)
)

(:action act_act_tpp-propositional_302031_302601
	:parameters ( ?truck_89499293 - truck ?level_89499296 - level ?level_89499297 - level ?goods_89499295 - goods ?goods_89499294 - goods ?level_89499292 - level)
	:precondition (and 
			(loaded ?goods_89499295 ?truck_89499293 ?level_89499292) 
			(loaded ?goods_89499294 ?truck_89499293 ?level_89499292) 
			(loaded ?goods_89499294 ?truck_89499293 ?level_89499297) 
			(next ?level_89499296 ?level_89499292)
	)
	:effect (and 
		(loaded ?goods_89499295 ?truck_89499293 ?level_89499296) 
		(next ?level_89499292 ?level_89499296) 
		(stored ?goods_89499294 ?level_89499297)
	)
)

(:action act_act_tpp-propositional_302032_302602
	:parameters ( ?level_159387028 - level ?goods_159387031 - goods ?level_159387030 - level ?truck_159387029 - truck ?goods_159387027 - goods)
	:precondition (and 
			(loaded ?goods_159387031 ?truck_159387029 ?level_159387028) 
			(next ?level_159387030 ?level_159387028) 
			(stored ?goods_159387027 ?level_159387028)
	)
	:effect (and 
		(loaded ?goods_159387027 ?truck_159387029 ?level_159387030) 
		(loaded ?goods_159387031 ?truck_159387029 ?level_159387030) 
		(loaded ?goods_159387027 ?truck_159387029 ?level_159387028) 
		(next ?level_159387028 ?level_159387030) 
		(stored ?goods_159387031 ?level_159387030)
	)
)

(:action act_act_tpp-propositional_302032_302603
	:parameters ( ?level_159387028 - level ?goods_159387031 - goods ?truck_159387029 - truck ?level_159387030 - level ?goods_159387027 - goods)
	:precondition (and 
			(loaded ?goods_159387031 ?truck_159387029 ?level_159387028) 
			(next ?level_159387030 ?level_159387028) 
			(stored ?goods_159387027 ?level_159387028)
	)
	:effect (and 
		(loaded ?goods_159387027 ?truck_159387029 ?level_159387030) 
		(not (loaded ?goods_159387031 ?truck_159387029 ?level_159387030)) 
		(loaded ?goods_159387027 ?truck_159387029 ?level_159387028) 
		(next ?level_159387028 ?level_159387030) 
		(not (stored ?goods_159387031 ?level_159387030))
	)
)

(:action act_act_tpp-propositional_302033_302604
	:parameters ( ?truck_198983693 - truck ?level_198983690 - level ?goods_198983692 - goods ?level_198983691 - level ?goods_198983689 - goods)
	:precondition (and 
			(loaded ?goods_198983692 ?truck_198983693 ?level_198983690) 
			(next ?level_198983691 ?level_198983690) 
			(stored ?goods_198983689 ?level_198983691)
	)
	:effect (and 
		(loaded ?goods_198983689 ?truck_198983693 ?level_198983691) 
		(loaded ?goods_198983689 ?truck_198983693 ?level_198983690) 
		(loaded ?goods_198983692 ?truck_198983693 ?level_198983691) 
		(next ?level_198983690 ?level_198983691) 
		(stored ?goods_198983689 ?level_198983690) 
		(stored ?goods_198983692 ?level_198983691) 
		(stored ?goods_198983692 ?level_198983690)
	)
)

(:action act_act_tpp-propositional_302033_302605
	:parameters ( ?truck_198983693 - truck ?level_198983690 - level ?goods_198983692 - goods ?level_198983691 - level ?goods_198983689 - goods)
	:precondition (and 
			(loaded ?goods_198983692 ?truck_198983693 ?level_198983690) 
			(next ?level_198983691 ?level_198983690) 
			(stored ?goods_198983689 ?level_198983691)
	)
	:effect (and 
		(loaded ?goods_198983689 ?truck_198983693 ?level_198983691) 
		(next ?level_198983690 ?level_198983691) 
		(not (stored ?goods_198983692 ?level_198983691))
	)
)

(:action act_act_tpp-propositional_302034_302606
	:parameters ( ?goods_440136258 - goods ?level_440136256 - level ?truck_440136257 - truck ?level_440136259 - level ?goods_440136255 - goods ?level_440136260 - level)
	:precondition (and 
			(loaded ?goods_440136255 ?truck_440136257 ?level_440136260) 
			(next ?level_440136256 ?level_440136259) 
			(stored ?goods_440136258 ?level_440136256)
	)
	:effect (and 
		(loaded ?goods_440136258 ?truck_440136257 ?level_440136259) 
		(loaded ?goods_440136258 ?truck_440136257 ?level_440136256) 
		(stored ?goods_440136255 ?level_440136260)
	)
)

(:action act_act_tpp-propositional_302035_302607
	:parameters ( ?goods_344226587 - goods ?market_344226583 - market ?level_344226586 - level ?level_344226584 - level ?level_344226585 - level)
	:precondition (and 
			(next ?level_344226586 ?level_344226585) 
			(next ?level_344226585 ?level_344226584) 
			(ready-to-load ?goods_344226587 ?market_344226583 ?level_344226584)
	)
	:effect (and 
		(next ?level_344226586 ?level_344226584) 
		(not (ready-to-load ?goods_344226587 ?market_344226583 ?level_344226585)) 
		(stored ?goods_344226587 ?level_344226586)
	)
)

(:action act_act_tpp-propositional_302036_302608
	:parameters ( ?level_262091318 - level ?level_262091317 - level ?truck_262091316 - truck ?goods_262091319 - goods ?level_262091320 - level)
	:precondition (and 
			(loaded ?goods_262091319 ?truck_262091316 ?level_262091320) 
			(loaded ?goods_262091319 ?truck_262091316 ?level_262091318) 
			(next ?level_262091317 ?level_262091318) 
			(stored ?goods_262091319 ?level_262091318)
	)
	:effect (and 
		(loaded ?goods_262091319 ?truck_262091316 ?level_262091317) 
		(next ?level_262091318 ?level_262091320)
	)
)

(:action act_act_tpp-propositional_302037_302609
	:parameters ( ?level_290394308 - level ?goods_290394304 - goods ?level_290394305 - level ?truck_290394306 - truck ?level_290394307 - level)
	:precondition (and 
			(loaded ?goods_290394304 ?truck_290394306 ?level_290394307) 
			(loaded ?goods_290394304 ?truck_290394306 ?level_290394305) 
			(next ?level_290394307 ?level_290394308) 
			(stored ?goods_290394304 ?level_290394305)
	)
	:effect (and 
		(loaded ?goods_290394304 ?truck_290394306 ?level_290394308) 
		(next ?level_290394307 ?level_290394305)
	)
)

(:action act_act_tpp-propositional_302038_302610
	:parameters ( ?truck_509789193 - truck ?goods_509789192 - goods ?level_509789196 - level ?level_509789195 - level ?level_509789194 - level)
	:precondition (and 
			(loaded ?goods_509789192 ?truck_509789193 ?level_509789196) 
			(loaded ?goods_509789192 ?truck_509789193 ?level_509789194) 
			(next ?level_509789194 ?level_509789196) 
			(stored ?goods_509789192 ?level_509789195)
	)
	:effect (and 
		(not (loaded ?goods_509789192 ?truck_509789193 ?level_509789195)) 
		(next ?level_509789196 ?level_509789195) 
		(stored ?goods_509789192 ?level_509789194)
	)
)

(:action act_act_tpp-propositional_302038_302611
	:parameters ( ?truck_509789193 - truck ?goods_509789192 - goods ?level_509789196 - level ?level_509789195 - level ?level_509789194 - level)
	:precondition (and 
			(loaded ?goods_509789192 ?truck_509789193 ?level_509789196) 
			(loaded ?goods_509789192 ?truck_509789193 ?level_509789194) 
			(next ?level_509789194 ?level_509789196) 
			(stored ?goods_509789192 ?level_509789195)
	)
	:effect (and 
		(loaded ?goods_509789192 ?truck_509789193 ?level_509789195) 
		(next ?level_509789196 ?level_509789194)
	)
)

(:action act_act_tpp-propositional_302039_302612
	:parameters ( ?goods_481094922 - goods ?goods_481094921 - goods ?level_481094925 - level ?truck_481094923 - truck ?level_481094924 - level)
	:precondition (and 
			(loaded ?goods_481094921 ?truck_481094923 ?level_481094925) 
			(stored ?goods_481094921 ?level_481094924) 
			(stored ?goods_481094922 ?level_481094925)
	)
	:effect (and 
		(not (loaded ?goods_481094921 ?truck_481094923 ?level_481094924)) 
		(loaded ?goods_481094922 ?truck_481094923 ?level_481094924) 
		(not (loaded ?goods_481094922 ?truck_481094923 ?level_481094925)) 
		(stored ?goods_481094921 ?level_481094925)
	)
)

(:action act_act_tpp-propositional_302039_302613
	:parameters ( ?goods_481094922 - goods ?goods_481094921 - goods ?level_481094925 - level ?truck_481094923 - truck ?level_481094924 - level)
	:precondition (and 
			(loaded ?goods_481094921 ?truck_481094923 ?level_481094925) 
			(stored ?goods_481094921 ?level_481094924) 
			(stored ?goods_481094922 ?level_481094925)
	)
	:effect (and 
		(loaded ?goods_481094921 ?truck_481094923 ?level_481094924) 
		(not (loaded ?goods_481094922 ?truck_481094923 ?level_481094924)) 
		(not (loaded ?goods_481094922 ?truck_481094923 ?level_481094925))
	)
)

(:action act_act_tpp-propositional_302039_302614
	:parameters ( ?goods_481094922 - goods ?goods_481094921 - goods ?level_481094925 - level ?truck_481094923 - truck ?level_481094924 - level)
	:precondition (and 
			(loaded ?goods_481094921 ?truck_481094923 ?level_481094925) 
			(stored ?goods_481094921 ?level_481094924) 
			(stored ?goods_481094922 ?level_481094925)
	)
	:effect (and 
		(not (loaded ?goods_481094921 ?truck_481094923 ?level_481094924)) 
		(not (loaded ?goods_481094922 ?truck_481094923 ?level_481094924)) 
		(loaded ?goods_481094922 ?truck_481094923 ?level_481094925)
	)
)

(:action act_act_tpp-propositional_302040_302615
	:parameters ( ?truck_34449261 - truck ?level_34449262 - level ?level_34449263 - level ?truck_34449260 - truck ?goods_34449259 - goods ?goods_34449264 - goods)
	:precondition (and 
			(loaded ?goods_34449264 ?truck_34449261 ?level_34449263) 
			(loaded ?goods_34449259 ?truck_34449260 ?level_34449262)
	)
	:effect (and 
		(loaded ?goods_34449259 ?truck_34449261 ?level_34449263) 
		(not (loaded ?goods_34449264 ?truck_34449260 ?level_34449262))
	)
)

(:action act_act_tpp-propositional_302040_302616
	:parameters ( ?truck_34449261 - truck ?level_34449262 - level ?level_34449263 - level ?truck_34449260 - truck ?goods_34449259 - goods ?goods_34449264 - goods)
	:precondition (and 
			(loaded ?goods_34449264 ?truck_34449261 ?level_34449263) 
			(loaded ?goods_34449259 ?truck_34449260 ?level_34449262)
	)
	:effect (and 
		(loaded ?goods_34449259 ?truck_34449261 ?level_34449263) 
		(not (loaded ?goods_34449264 ?truck_34449260 ?level_34449263)) 
		(loaded ?goods_34449264 ?truck_34449260 ?level_34449262) 
		(loaded ?goods_34449259 ?truck_34449260 ?level_34449263) 
		(loaded ?goods_34449264 ?truck_34449261 ?level_34449262) 
		(not (loaded ?goods_34449259 ?truck_34449261 ?level_34449262)) 
		(next ?level_34449262 ?level_34449263) 
		(next ?level_34449263 ?level_34449262) 
		(stored ?goods_34449264 ?level_34449262)
	)
)

(:action act_act_tpp-propositional_302040_302617
	:parameters ( ?truck_34449261 - truck ?level_34449262 - level ?level_34449263 - level ?truck_34449260 - truck ?goods_34449259 - goods ?goods_34449264 - goods)
	:precondition (and 
			(loaded ?goods_34449264 ?truck_34449261 ?level_34449263) 
			(loaded ?goods_34449259 ?truck_34449260 ?level_34449262)
	)
	:effect (and 
		(not (loaded ?goods_34449259 ?truck_34449261 ?level_34449263)) 
		(loaded ?goods_34449264 ?truck_34449260 ?level_34449263) 
		(not (loaded ?goods_34449264 ?truck_34449260 ?level_34449262)) 
		(loaded ?goods_34449259 ?truck_34449260 ?level_34449263) 
		(loaded ?goods_34449264 ?truck_34449261 ?level_34449262) 
		(loaded ?goods_34449259 ?truck_34449261 ?level_34449262) 
		(next ?level_34449263 ?level_34449262) 
		(stored ?goods_34449259 ?level_34449262) 
		(stored ?goods_34449264 ?level_34449262)
	)
)

(:action act_act_tpp-propositional_302041_302618
	:parameters ( ?goods_175805514 - goods ?level_175805518 - level ?level_175805517 - level ?level_175805515 - level ?truck_175805516 - truck)
	:precondition (and 
			(loaded ?goods_175805514 ?truck_175805516 ?level_175805518) 
			(next ?level_175805517 ?level_175805515) 
			(next ?level_175805517 ?level_175805518) 
			(stored ?goods_175805514 ?level_175805515)
	)
	:effect (and 
		(loaded ?goods_175805514 ?truck_175805516 ?level_175805515) 
		(next ?level_175805518 ?level_175805517)
	)
)

(:action act_act_tpp-propositional_302042_302619
	:parameters ( ?level_56931456 - level ?truck_56931453 - truck ?goods_56931455 - goods ?level_56931452 - level ?level_56931454 - level)
	:precondition (and 
			(loaded ?goods_56931455 ?truck_56931453 ?level_56931452) 
			(next ?level_56931452 ?level_56931456) 
			(next ?level_56931456 ?level_56931454) 
			(stored ?goods_56931455 ?level_56931454)
	)
	:effect (and 
		(loaded ?goods_56931455 ?truck_56931453 ?level_56931456) 
		(next ?level_56931452 ?level_56931454)
	)
)

(:action act_act_tpp-propositional_302043_302620
	:parameters ( ?level_148525438 - level ?level_148525435 - level ?level_148525436 - level ?goods_148525437 - goods ?truck_148525434 - truck)
	:precondition (and 
			(loaded ?goods_148525437 ?truck_148525434 ?level_148525436) 
			(next ?level_148525438 ?level_148525435) 
			(next ?level_148525435 ?level_148525438) 
			(stored ?goods_148525437 ?level_148525436)
	)
	:effect (and 
		(not (loaded ?goods_148525437 ?truck_148525434 ?level_148525438)) 
		(next ?level_148525435 ?level_148525436)
	)
)

(:action act_act_tpp-propositional_302043_302621
	:parameters ( ?level_148525438 - level ?level_148525435 - level ?level_148525436 - level ?goods_148525437 - goods ?truck_148525434 - truck)
	:precondition (and 
			(loaded ?goods_148525437 ?truck_148525434 ?level_148525436) 
			(next ?level_148525438 ?level_148525435) 
			(next ?level_148525435 ?level_148525438) 
			(stored ?goods_148525437 ?level_148525436)
	)
	:effect (and 
		(loaded ?goods_148525437 ?truck_148525434 ?level_148525438) 
		(not (loaded ?goods_148525437 ?truck_148525434 ?level_148525435)) 
		(next ?level_148525436 ?level_148525438) 
		(next ?level_148525435 ?level_148525436) 
		(next ?level_148525438 ?level_148525436)
	)
)

(:action act_act_tpp-propositional_302044_302622
	:parameters ( ?truck_182271117 - truck ?level_182271121 - level ?level_182271120 - level ?level_182271118 - level ?goods_182271119 - goods)
	:precondition (and 
			(loaded ?goods_182271119 ?truck_182271117 ?level_182271121) 
			(next ?level_182271120 ?level_182271121) 
			(next ?level_182271120 ?level_182271118) 
			(stored ?goods_182271119 ?level_182271121)
	)
	:effect (and 
		(loaded ?goods_182271119 ?truck_182271117 ?level_182271118) 
		(not (loaded ?goods_182271119 ?truck_182271117 ?level_182271120)) 
		(next ?level_182271118 ?level_182271121) 
		(next ?level_182271121 ?level_182271120)
	)
)

(:action act_act_tpp-propositional_302045_302623
	:parameters ( ?level_540037451 - level ?truck_540037455 - truck ?goods_540037454 - goods ?level_540037452 - level ?level_540037453 - level)
	:precondition (and 
			(loaded ?goods_540037454 ?truck_540037455 ?level_540037453) 
			(next ?level_540037452 ?level_540037453) 
			(next ?level_540037452 ?level_540037451) 
			(stored ?goods_540037454 ?level_540037452)
	)
	:effect (and 
		(loaded ?goods_540037454 ?truck_540037455 ?level_540037452) 
		(next ?level_540037453 ?level_540037451)
	)
)

(:action act_act_tpp-propositional_302046_302624
	:parameters ( ?goods_290098867 - goods ?truck_290098868 - truck ?level_290098865 - level ?level_290098866 - level ?level_290098869 - level)
	:precondition (and 
			(loaded ?goods_290098867 ?truck_290098868 ?level_290098869) 
			(next ?level_290098865 ?level_290098866) 
			(next ?level_290098869 ?level_290098866) 
			(stored ?goods_290098867 ?level_290098865)
	)
	:effect (and 
		(not (loaded ?goods_290098867 ?truck_290098868 ?level_290098866)) 
		(not (loaded ?goods_290098867 ?truck_290098868 ?level_290098865)) 
		(next ?level_290098866 ?level_290098865) 
		(stored ?goods_290098867 ?level_290098869)
	)
)

(:action act_act_tpp-propositional_302046_302625
	:parameters ( ?goods_290098867 - goods ?truck_290098868 - truck ?level_290098865 - level ?level_290098866 - level ?level_290098869 - level)
	:precondition (and 
			(loaded ?goods_290098867 ?truck_290098868 ?level_290098869) 
			(next ?level_290098865 ?level_290098866) 
			(next ?level_290098869 ?level_290098866) 
			(stored ?goods_290098867 ?level_290098865)
	)
	:effect (and 
		(loaded ?goods_290098867 ?truck_290098868 ?level_290098866) 
		(not (loaded ?goods_290098867 ?truck_290098868 ?level_290098865)) 
		(next ?level_290098866 ?level_290098869) 
		(next ?level_290098869 ?level_290098865)
	)
)

(:action act_act_tpp-propositional_302047_302626
	:parameters ( ?level_343919469 - level ?level_343919471 - level ?level_343919473 - level ?truck_343919470 - truck ?goods_343919472 - goods)
	:precondition (and 
			(loaded ?goods_343919472 ?truck_343919470 ?level_343919471) 
			(next ?level_343919473 ?level_343919469) 
			(next ?level_343919473 ?level_343919471) 
			(stored ?goods_343919472 ?level_343919471)
	)
	:effect (and 
		(loaded ?goods_343919472 ?truck_343919470 ?level_343919469) 
		(next ?level_343919471 ?level_343919473)
	)
)

(:action act_act_tpp-propositional_302048_302627
	:parameters ( ?goods_369487751 - goods ?truck_369487750 - truck ?level_369487748 - level ?level_369487749 - level ?level_369487747 - level)
	:precondition (and 
			(loaded ?goods_369487751 ?truck_369487750 ?level_369487749) 
			(next ?level_369487748 ?level_369487747) 
			(next ?level_369487747 ?level_369487749) 
			(stored ?goods_369487751 ?level_369487749)
	)
	:effect (and 
		(loaded ?goods_369487751 ?truck_369487750 ?level_369487747) 
		(next ?level_369487748 ?level_369487749)
	)
)

(:action act_act_tpp-propositional_302049_302628
	:parameters ( ?level_405545951 - level ?level_405545952 - level ?goods_405545950 - goods ?truck_405545954 - truck ?level_405545953 - level)
	:precondition (and 
			(loaded ?goods_405545950 ?truck_405545954 ?level_405545952) 
			(next ?level_405545953 ?level_405545952) 
			(next ?level_405545952 ?level_405545951) 
			(stored ?goods_405545950 ?level_405545951)
	)
	:effect (and 
		(loaded ?goods_405545950 ?truck_405545954 ?level_405545951) 
		(next ?level_405545952 ?level_405545953)
	)
)

(:action act_act_tpp-propositional_302050_302629
	:parameters ( ?truck_505761056 - truck ?goods_505761055 - goods ?level_505761057 - level ?level_505761058 - level ?level_505761054 - level)
	:precondition (and 
			(loaded ?goods_505761055 ?truck_505761056 ?level_505761057) 
			(next ?level_505761058 ?level_505761057) 
			(next ?level_505761054 ?level_505761058) 
			(stored ?goods_505761055 ?level_505761058)
	)
	:effect (and 
		(loaded ?goods_505761055 ?truck_505761056 ?level_505761054) 
		(not (loaded ?goods_505761055 ?truck_505761056 ?level_505761058)) 
		(next ?level_505761054 ?level_505761057)
	)
)

(:action act_act_tpp-propositional_302050_302630
	:parameters ( ?truck_505761056 - truck ?goods_505761055 - goods ?level_505761057 - level ?level_505761058 - level ?level_505761054 - level)
	:precondition (and 
			(loaded ?goods_505761055 ?truck_505761056 ?level_505761057) 
			(next ?level_505761058 ?level_505761057) 
			(next ?level_505761054 ?level_505761058) 
			(stored ?goods_505761055 ?level_505761058)
	)
	:effect (and 
		(loaded ?goods_505761055 ?truck_505761056 ?level_505761058) 
		(next ?level_505761057 ?level_505761054)
	)
)

(:action act_act_tpp-propositional_302051_302631
	:parameters ( ?goods_189044843 - goods ?level_189044842 - level ?truck_189044844 - truck ?level_189044841 - level ?level_189044846 - level ?level_189044845 - level)
	:precondition (and 
			(loaded ?goods_189044843 ?truck_189044844 ?level_189044846) 
			(loaded ?goods_189044843 ?truck_189044844 ?level_189044841) 
			(loaded ?goods_189044843 ?truck_189044844 ?level_189044842) 
			(next ?level_189044845 ?level_189044841) 
			(stored ?goods_189044843 ?level_189044846)
	)
	:effect (and 
		(loaded ?goods_189044843 ?truck_189044844 ?level_189044845) 
		(next ?level_189044841 ?level_189044846) 
		(next ?level_189044842 ?level_189044845)
	)
)

(:action act_act_tpp-propositional_302052_302632
	:parameters ( ?level_263076947 - level ?goods_263076950 - goods ?level_263076946 - level ?truck_263076949 - truck ?place_263076948 - place ?truck_263076945 - truck)
	:precondition (and 
			(at ?truck_263076945 ?place_263076948) 
			(loaded ?goods_263076950 ?truck_263076949 ?level_263076947) 
			(stored ?goods_263076950 ?level_263076947) 
			(stored ?goods_263076950 ?level_263076946)
	)
	:effect (and 
		(at ?truck_263076949 ?place_263076948) 
		(loaded ?goods_263076950 ?truck_263076945 ?level_263076946) 
		(next ?level_263076946 ?level_263076947) 
		(next ?level_263076947 ?level_263076946)
	)
)

(:action act_act_tpp-propositional_302053_302633
	:parameters ( ?level_442805092 - level ?goods_442805091 - goods ?place_442805094 - place ?place_442805095 - place ?truck_442805093 - truck ?level_442805096 - level)
	:precondition (and 
			(at ?truck_442805093 ?place_442805094) 
			(connected ?place_442805094 ?place_442805095) 
			(next ?level_442805092 ?level_442805096) 
			(stored ?goods_442805091 ?level_442805092)
	)
	:effect (and 
		(at ?truck_442805093 ?place_442805095) 
		(connected ?place_442805095 ?place_442805094) 
		(loaded ?goods_442805091 ?truck_442805093 ?level_442805092) 
		(next ?level_442805096 ?level_442805092)
	)
)

(:action act_act_tpp-propositional_302054_302634
	:parameters ( ?market_512636539 - market ?goods_512636540 - goods ?level_512636538 - level ?goods_512636542 - goods ?level_512636541 - level ?truck_512636543 - truck)
	:precondition (and 
			(loaded ?goods_512636542 ?truck_512636543 ?level_512636541) 
			(loaded ?goods_512636540 ?truck_512636543 ?level_512636541) 
			(ready-to-load ?goods_512636542 ?market_512636539 ?level_512636538)
	)
	:effect (and 
		(loaded ?goods_512636540 ?truck_512636543 ?level_512636538) 
		(next ?level_512636538 ?level_512636541) 
		(ready-to-load ?goods_512636542 ?market_512636539 ?level_512636541) 
		(stored ?goods_512636542 ?level_512636538) 
		(not (stored ?goods_512636542 ?level_512636541))
	)
)

(:action act_act_tpp-propositional_302055_302635
	:parameters ( ?goods_265525217 - goods ?goods_265525216 - goods ?level_265525214 - level ?level_265525215 - level ?level_265525218 - level ?truck_265525213 - truck)
	:precondition (and 
			(loaded ?goods_265525217 ?truck_265525213 ?level_265525214) 
			(loaded ?goods_265525217 ?truck_265525213 ?level_265525218) 
			(next ?level_265525215 ?level_265525218) 
			(stored ?goods_265525216 ?level_265525218)
	)
	:effect (and 
		(loaded ?goods_265525216 ?truck_265525213 ?level_265525218) 
		(next ?level_265525218 ?level_265525215) 
		(next ?level_265525214 ?level_265525215) 
		(not (stored ?goods_265525217 ?level_265525214))
	)
)

(:action act_act_tpp-propositional_302056_302636
	:parameters ( ?level_171748643 - level ?level_171748642 - level ?level_171748640 - level ?goods_171748638 - goods ?level_171748639 - level ?truck_171748641 - truck)
	:precondition (and 
			(loaded ?goods_171748638 ?truck_171748641 ?level_171748642) 
			(loaded ?goods_171748638 ?truck_171748641 ?level_171748643) 
			(next ?level_171748640 ?level_171748639)
	)
	:effect (and 
		(loaded ?goods_171748638 ?truck_171748641 ?level_171748639) 
		(loaded ?goods_171748638 ?truck_171748641 ?level_171748640) 
		(next ?level_171748639 ?level_171748643) 
		(next ?level_171748639 ?level_171748640) 
		(next ?level_171748643 ?level_171748639) 
		(next ?level_171748642 ?level_171748640) 
		(stored ?goods_171748638 ?level_171748639) 
		(stored ?goods_171748638 ?level_171748642)
	)
)

(:action act_act_tpp-propositional_302056_302637
	:parameters ( ?level_171748643 - level ?level_171748642 - level ?level_171748640 - level ?goods_171748638 - goods ?level_171748639 - level ?truck_171748641 - truck)
	:precondition (and 
			(loaded ?goods_171748638 ?truck_171748641 ?level_171748642) 
			(loaded ?goods_171748638 ?truck_171748641 ?level_171748643) 
			(next ?level_171748640 ?level_171748639)
	)
	:effect (and 
		(not (loaded ?goods_171748638 ?truck_171748641 ?level_171748639)) 
		(not (loaded ?goods_171748638 ?truck_171748641 ?level_171748640)) 
		(next ?level_171748642 ?level_171748643)
	)
)

(:action act_act_tpp-propositional_302056_302638
	:parameters ( ?level_171748643 - level ?level_171748642 - level ?level_171748640 - level ?goods_171748638 - goods ?level_171748639 - level ?truck_171748641 - truck)
	:precondition (and 
			(loaded ?goods_171748638 ?truck_171748641 ?level_171748642) 
			(loaded ?goods_171748638 ?truck_171748641 ?level_171748643) 
			(next ?level_171748640 ?level_171748639)
	)
	:effect (and 
		(loaded ?goods_171748638 ?truck_171748641 ?level_171748639) 
		(not (loaded ?goods_171748638 ?truck_171748641 ?level_171748640)) 
		(next ?level_171748640 ?level_171748643) 
		(stored ?goods_171748638 ?level_171748642)
	)
)

(:action act_act_tpp-propositional_302057_302639
	:parameters ( ?truck_403035533 - truck ?level_403035531 - level ?truck_403035530 - truck ?goods_403035532 - goods ?level_403035528 - level ?goods_403035529 - goods)
	:precondition (and 
			(loaded ?goods_403035529 ?truck_403035533 ?level_403035528) 
			(loaded ?goods_403035529 ?truck_403035530 ?level_403035531) 
			(stored ?goods_403035532 ?level_403035528) 
			(stored ?goods_403035532 ?level_403035531) 
			(stored ?goods_403035529 ?level_403035531)
	)
	:effect (and 
		(loaded ?goods_403035529 ?truck_403035530 ?level_403035528) 
		(loaded ?goods_403035532 ?truck_403035533 ?level_403035531)
	)
)

(:action act_act_tpp-propositional_302058_302640
	:parameters ( ?level_53246808 - level ?goods_53246810 - goods ?level_53246806 - level ?level_53246807 - level ?truck_53246809 - truck)
	:precondition (and 
			(loaded ?goods_53246810 ?truck_53246809 ?level_53246808) 
			(next ?level_53246806 ?level_53246807) 
			(next ?level_53246807 ?level_53246808)
	)
	:effect (and 
		(not (loaded ?goods_53246810 ?truck_53246809 ?level_53246807)) 
		(loaded ?goods_53246810 ?truck_53246809 ?level_53246806) 
		(next ?level_53246806 ?level_53246808) 
		(next ?level_53246808 ?level_53246807) 
		(stored ?goods_53246810 ?level_53246808)
	)
)

(:action act_act_tpp-propositional_302058_302641
	:parameters ( ?level_53246808 - level ?goods_53246810 - goods ?level_53246806 - level ?level_53246807 - level ?truck_53246809 - truck)
	:precondition (and 
			(loaded ?goods_53246810 ?truck_53246809 ?level_53246808) 
			(next ?level_53246806 ?level_53246807) 
			(next ?level_53246807 ?level_53246808)
	)
	:effect (and 
		(not (loaded ?goods_53246810 ?truck_53246809 ?level_53246807)) 
		(loaded ?goods_53246810 ?truck_53246809 ?level_53246806) 
		(not (stored ?goods_53246810 ?level_53246808))
	)
)

(:action act_act_tpp-propositional_302058_302642
	:parameters ( ?level_53246808 - level ?goods_53246810 - goods ?level_53246806 - level ?level_53246807 - level ?truck_53246809 - truck)
	:precondition (and 
			(loaded ?goods_53246810 ?truck_53246809 ?level_53246808) 
			(next ?level_53246806 ?level_53246807) 
			(next ?level_53246807 ?level_53246808)
	)
	:effect (and 
		(loaded ?goods_53246810 ?truck_53246809 ?level_53246807) 
		(not (loaded ?goods_53246810 ?truck_53246809 ?level_53246806)) 
		(next ?level_53246808 ?level_53246806) 
		(next ?level_53246808 ?level_53246807) 
		(stored ?goods_53246810 ?level_53246808)
	)
)

(:action act_act_tpp-propositional_302058_302643
	:parameters ( ?level_53246808 - level ?level_53246806 - level ?goods_53246810 - goods ?level_53246807 - level ?truck_53246809 - truck)
	:precondition (and 
			(loaded ?goods_53246810 ?truck_53246809 ?level_53246808) 
			(next ?level_53246806 ?level_53246807) 
			(next ?level_53246807 ?level_53246808)
	)
	:effect (and 
		(loaded ?goods_53246810 ?truck_53246809 ?level_53246807) 
		(loaded ?goods_53246810 ?truck_53246809 ?level_53246806) 
		(next ?level_53246808 ?level_53246806) 
		(not (stored ?goods_53246810 ?level_53246807))
	)
)

(:action act_act_tpp-propositional_302059_302644
	:parameters ( ?goods_380633290 - goods ?level_380633288 - level ?level_380633289 - level ?level_380633291 - level ?truck_380633292 - truck)
	:precondition (and 
			(loaded ?goods_380633290 ?truck_380633292 ?level_380633289) 
			(next ?level_380633288 ?level_380633291) 
			(next ?level_380633288 ?level_380633289)
	)
	:effect (and 
		(loaded ?goods_380633290 ?truck_380633292 ?level_380633291) 
		(not (loaded ?goods_380633290 ?truck_380633292 ?level_380633288)) 
		(next ?level_380633289 ?level_380633291)
	)
)

(:action act_act_tpp-propositional_302059_302645
	:parameters ( ?goods_380633290 - goods ?level_380633288 - level ?level_380633289 - level ?truck_380633292 - truck ?level_380633291 - level)
	:precondition (and 
			(loaded ?goods_380633290 ?truck_380633292 ?level_380633289) 
			(next ?level_380633288 ?level_380633291) 
			(next ?level_380633288 ?level_380633289)
	)
	:effect (and 
		(loaded ?goods_380633290 ?truck_380633292 ?level_380633288) 
		(next ?level_380633289 ?level_380633291)
	)
)

(:action act_act_tpp-propositional_302060_302646
	:parameters ( ?level_555540925 - level ?level_555540930 - level ?truck_555540926 - truck ?goods_555540929 - goods ?level_555540927 - level ?level_555540928 - level)
	:precondition (and 
			(loaded ?goods_555540929 ?truck_555540926 ?level_555540925) 
			(next ?level_555540927 ?level_555540928) 
			(next ?level_555540930 ?level_555540928)
	)
	:effect (and 
		(not (loaded ?goods_555540929 ?truck_555540926 ?level_555540930)) 
		(loaded ?goods_555540929 ?truck_555540926 ?level_555540928) 
		(next ?level_555540927 ?level_555540925) 
		(next ?level_555540927 ?level_555540930) 
		(stored ?goods_555540929 ?level_555540928)
	)
)

(:action act_act_tpp-propositional_302061_302647
	:parameters ( ?truck_59962986 - truck ?level_59962988 - level ?level_59962985 - level ?level_59962984 - level ?goods_59962983 - goods ?goods_59962987 - goods)
	:precondition (and 
			(loaded ?goods_59962983 ?truck_59962986 ?level_59962984) 
			(next ?level_59962984 ?level_59962988) 
			(stored ?goods_59962987 ?level_59962985)
	)
	:effect (and 
		(loaded ?goods_59962987 ?truck_59962986 ?level_59962988) 
		(loaded ?goods_59962987 ?truck_59962986 ?level_59962984) 
		(loaded ?goods_59962987 ?truck_59962986 ?level_59962985) 
		(not (loaded ?goods_59962983 ?truck_59962986 ?level_59962988)) 
		(next ?level_59962988 ?level_59962985) 
		(next ?level_59962988 ?level_59962984) 
		(stored ?goods_59962983 ?level_59962984) 
		(stored ?goods_59962983 ?level_59962988)
	)
)

(:action act_act_tpp-propositional_302062_302648
	:parameters ( ?truck_194896255 - truck ?level_194896254 - level ?goods_194896253 - goods ?level_194896256 - level ?goods_194896252 - goods)
	:precondition (and 
			(loaded ?goods_194896253 ?truck_194896255 ?level_194896254) 
			(next ?level_194896256 ?level_194896254) 
			(next ?level_194896254 ?level_194896256) 
			(stored ?goods_194896252 ?level_194896256)
	)
	:effect (and 
		(loaded ?goods_194896252 ?truck_194896255 ?level_194896254) 
		(loaded ?goods_194896252 ?truck_194896255 ?level_194896256) 
		(not (stored ?goods_194896253 ?level_194896254))
	)
)

(:action act_act_tpp-propositional_302062_302649
	:parameters ( ?level_194896254 - level ?truck_194896255 - truck ?level_194896256 - level ?goods_194896253 - goods ?goods_194896252 - goods)
	:precondition (and 
			(loaded ?goods_194896253 ?truck_194896255 ?level_194896254) 
			(next ?level_194896256 ?level_194896254) 
			(next ?level_194896254 ?level_194896256) 
			(stored ?goods_194896252 ?level_194896256)
	)
	:effect (and 
		(loaded ?goods_194896252 ?truck_194896255 ?level_194896256) 
		(stored ?goods_194896253 ?level_194896254)
	)
)

(:action act_act_tpp-propositional_302063_302650
	:parameters ( ?level_283995659 - level ?goods_283995661 - goods ?truck_283995660 - truck ?level_283995662 - level)
	:precondition (and 
			(loaded ?goods_283995661 ?truck_283995660 ?level_283995659) 
			(next ?level_283995662 ?level_283995659) 
			(next ?level_283995659 ?level_283995662) 
			(stored ?goods_283995661 ?level_283995662)
	)
	:effect (and 
		(loaded ?goods_283995661 ?truck_283995660 ?level_283995662) 
		(stored ?goods_283995661 ?level_283995659)
	)
)

(:action act_act_tpp-propositional_302064_302651
	:parameters ( ?goods_416251802 - goods ?level_416251801 - level ?truck_416251806 - truck ?goods_416251805 - goods ?level_416251804 - level ?level_416251803 - level)
	:precondition (and 
			(loaded ?goods_416251802 ?truck_416251806 ?level_416251803) 
			(next ?level_416251804 ?level_416251801) 
			(stored ?goods_416251805 ?level_416251803)
	)
	:effect (and 
		(not (loaded ?goods_416251805 ?truck_416251806 ?level_416251801)) 
		(loaded ?goods_416251805 ?truck_416251806 ?level_416251803) 
		(loaded ?goods_416251802 ?truck_416251806 ?level_416251801) 
		(next ?level_416251804 ?level_416251803)
	)
)

(:action act_act_tpp-propositional_302064_302652
	:parameters ( ?goods_416251802 - goods ?level_416251801 - level ?truck_416251806 - truck ?goods_416251805 - goods ?level_416251804 - level ?level_416251803 - level)
	:precondition (and 
			(loaded ?goods_416251802 ?truck_416251806 ?level_416251803) 
			(next ?level_416251804 ?level_416251801) 
			(stored ?goods_416251805 ?level_416251803)
	)
	:effect (and 
		(loaded ?goods_416251805 ?truck_416251806 ?level_416251801) 
		(loaded ?goods_416251805 ?truck_416251806 ?level_416251804) 
		(next ?level_416251803 ?level_416251801) 
		(stored ?goods_416251802 ?level_416251803) 
		(stored ?goods_416251802 ?level_416251804)
	)
)

(:action act_act_tpp-propositional_302065_302653
	:parameters ( ?truck_524426940 - truck ?goods_524426935 - goods ?market_524426936 - market ?level_524426937 - level ?level_524426938 - level ?goods_524426939 - goods)
	:precondition (and 
			(loaded ?goods_524426939 ?truck_524426940 ?level_524426937) 
			(next ?level_524426937 ?level_524426938) 
			(ready-to-load ?goods_524426935 ?market_524426936 ?level_524426938) 
			(ready-to-load ?goods_524426939 ?market_524426936 ?level_524426938)
	)
	:effect (and 
		(loaded ?goods_524426935 ?truck_524426940 ?level_524426938) 
		(not (ready-to-load ?goods_524426939 ?market_524426936 ?level_524426937))
	)
)

(:action act_act_tpp-propositional_302066_302654
	:parameters ( ?level_72601252 - level ?level_72601254 - level ?truck_72601251 - truck ?goods_72601253 - goods)
	:precondition (and 
			(loaded ?goods_72601253 ?truck_72601251 ?level_72601254) 
			(stored ?goods_72601253 ?level_72601252) 
			(stored ?goods_72601253 ?level_72601254)
	)
	:effect (and 
		(not (loaded ?goods_72601253 ?truck_72601251 ?level_72601252)) 
		(next ?level_72601254 ?level_72601252) 
		(next ?level_72601252 ?level_72601254)
	)
)

(:action act_act_tpp-propositional_302066_302655
	:parameters ( ?level_72601252 - level ?level_72601254 - level ?truck_72601251 - truck ?goods_72601253 - goods)
	:precondition (and 
			(loaded ?goods_72601253 ?truck_72601251 ?level_72601254) 
			(stored ?goods_72601253 ?level_72601252) 
			(stored ?goods_72601253 ?level_72601254)
	)
	:effect (and 
		(loaded ?goods_72601253 ?truck_72601251 ?level_72601252) 
		(next ?level_72601254 ?level_72601252) 
		(next ?level_72601252 ?level_72601254)
	)
)

(:action act_act_tpp-propositional_302067_302656
	:parameters ( ?level_356836942 - level ?level_356836940 - level ?truck_356836939 - truck ?level_356836937 - level ?goods_356836938 - goods ?market_356836941 - market)
	:precondition (and 
			(loaded ?goods_356836938 ?truck_356836939 ?level_356836942) 
			(next ?level_356836940 ?level_356836937) 
			(ready-to-load ?goods_356836938 ?market_356836941 ?level_356836937) 
			(ready-to-load ?goods_356836938 ?market_356836941 ?level_356836940)
	)
	:effect (and 
		(loaded ?goods_356836938 ?truck_356836939 ?level_356836940) 
		(not (ready-to-load ?goods_356836938 ?market_356836941 ?level_356836942)) 
		(stored ?goods_356836938 ?level_356836937)
	)
)

(:action act_act_tpp-propositional_302068_302657
	:parameters ( ?goods_441808334 - goods ?truck_441808335 - truck ?truck_441808336 - truck ?level_441808338 - level ?goods_441808339 - goods ?level_441808337 - level)
	:precondition (and 
			(loaded ?goods_441808334 ?truck_441808336 ?level_441808338) 
			(loaded ?goods_441808339 ?truck_441808335 ?level_441808338) 
			(next ?level_441808337 ?level_441808338)
	)
	:effect (and 
		(not (loaded ?goods_441808334 ?truck_441808335 ?level_441808338)) 
		(not (loaded ?goods_441808334 ?truck_441808336 ?level_441808337)) 
		(loaded ?goods_441808339 ?truck_441808336 ?level_441808338) 
		(not (stored ?goods_441808339 ?level_441808338))
	)
)

(:action act_act_tpp-propositional_302069_302658
	:parameters ( ?truck_167177930 - truck ?level_167177926 - level ?level_167177927 - level ?truck_167177929 - truck ?goods_167177928 - goods)
	:precondition (and 
			(loaded ?goods_167177928 ?truck_167177930 ?level_167177926) 
			(loaded ?goods_167177928 ?truck_167177929 ?level_167177926) 
			(next ?level_167177926 ?level_167177927)
	)
	:effect (and 
		(not (loaded ?goods_167177928 ?truck_167177930 ?level_167177927)) 
		(not (loaded ?goods_167177928 ?truck_167177929 ?level_167177927)) 
		(next ?level_167177927 ?level_167177926)
	)
)

(:action act_act_tpp-propositional_302069_302659
	:parameters ( ?truck_167177930 - truck ?level_167177926 - level ?level_167177927 - level ?truck_167177929 - truck ?goods_167177928 - goods)
	:precondition (and 
			(loaded ?goods_167177928 ?truck_167177930 ?level_167177926) 
			(loaded ?goods_167177928 ?truck_167177929 ?level_167177926) 
			(next ?level_167177926 ?level_167177927)
	)
	:effect (and 
		(loaded ?goods_167177928 ?truck_167177930 ?level_167177927) 
		(loaded ?goods_167177928 ?truck_167177929 ?level_167177927) 
		(not (stored ?goods_167177928 ?level_167177927)) 
		(stored ?goods_167177928 ?level_167177926)
	)
)

(:action act_act_tpp-propositional_302070_302660
	:parameters ( ?level_3746795 - level ?place_3746793 - place ?truck_3746794 - truck ?goods_3746792 - goods ?truck_3746796 - truck ?level_3746791 - level)
	:precondition (and 
			(at ?truck_3746796 ?place_3746793) 
			(loaded ?goods_3746792 ?truck_3746794 ?level_3746791) 
			(loaded ?goods_3746792 ?truck_3746796 ?level_3746795) 
			(next ?level_3746791 ?level_3746795)
	)
	:effect (and 
		(at ?truck_3746794 ?place_3746793) 
		(loaded ?goods_3746792 ?truck_3746796 ?level_3746791) 
		(next ?level_3746795 ?level_3746791) 
		(not (stored ?goods_3746792 ?level_3746795))
	)
)

(:action act_act_tpp-propositional_302071_302661
	:parameters ( ?goods_502151752 - goods ?level_502151751 - level ?level_502151750 - level ?level_502151753 - level ?truck_502151754 - truck)
	:precondition (and 
			(loaded ?goods_502151752 ?truck_502151754 ?level_502151753) 
			(loaded ?goods_502151752 ?truck_502151754 ?level_502151750) 
			(stored ?goods_502151752 ?level_502151751)
	)
	:effect (and 
		(not (loaded ?goods_502151752 ?truck_502151754 ?level_502151751)) 
		(next ?level_502151753 ?level_502151750) 
		(next ?level_502151751 ?level_502151750) 
		(next ?level_502151750 ?level_502151753)
	)
)

(:action act_act_tpp-propositional_302071_302662
	:parameters ( ?goods_502151752 - goods ?level_502151751 - level ?level_502151750 - level ?level_502151753 - level ?truck_502151754 - truck)
	:precondition (and 
			(loaded ?goods_502151752 ?truck_502151754 ?level_502151753) 
			(loaded ?goods_502151752 ?truck_502151754 ?level_502151750) 
			(stored ?goods_502151752 ?level_502151751)
	)
	:effect (and 
		(loaded ?goods_502151752 ?truck_502151754 ?level_502151751) 
		(next ?level_502151751 ?level_502151750) 
		(next ?level_502151750 ?level_502151753) 
		(next ?level_502151753 ?level_502151751) 
		(not (stored ?goods_502151752 ?level_502151753)) 
		(stored ?goods_502151752 ?level_502151750)
	)
)

(:action act_act_tpp-propositional_302071_302663
	:parameters ( ?goods_502151752 - goods ?level_502151751 - level ?level_502151750 - level ?level_502151753 - level ?truck_502151754 - truck)
	:precondition (and 
			(loaded ?goods_502151752 ?truck_502151754 ?level_502151753) 
			(loaded ?goods_502151752 ?truck_502151754 ?level_502151750) 
			(stored ?goods_502151752 ?level_502151751)
	)
	:effect (and 
		(loaded ?goods_502151752 ?truck_502151754 ?level_502151751) 
		(next ?level_502151751 ?level_502151753) 
		(next ?level_502151751 ?level_502151750) 
		(next ?level_502151750 ?level_502151751) 
		(stored ?goods_502151752 ?level_502151753) 
		(stored ?goods_502151752 ?level_502151750)
	)
)

(:action act_act_tpp-propositional_302072_302664
	:parameters ( ?level_585767750 - level ?truck_585767754 - truck ?level_585767752 - level ?goods_585767751 - goods ?goods_585767753 - goods)
	:precondition (and 
			(loaded ?goods_585767753 ?truck_585767754 ?level_585767752) 
			(loaded ?goods_585767751 ?truck_585767754 ?level_585767750) 
			(next ?level_585767752 ?level_585767750) 
			(stored ?goods_585767751 ?level_585767752) 
			(stored ?goods_585767753 ?level_585767752)
	)
	:effect (and 
		(loaded ?goods_585767753 ?truck_585767754 ?level_585767750) 
		(not (loaded ?goods_585767751 ?truck_585767754 ?level_585767752))
	)
)

(:action act_act_tpp-propositional_302073_302665
	:parameters ( ?level_358140011 - level ?level_358140009 - level ?goods_358140012 - goods ?truck_358140010 - truck ?truck_358140013 - truck)
	:precondition (and 
			(loaded ?goods_358140012 ?truck_358140013 ?level_358140011) 
			(loaded ?goods_358140012 ?truck_358140010 ?level_358140009)
	)
	:effect (and 
		(loaded ?goods_358140012 ?truck_358140010 ?level_358140011) 
		(not (loaded ?goods_358140012 ?truck_358140013 ?level_358140009))
	)
)

(:action act_act_tpp-propositional_302073_302666
	:parameters ( ?level_358140011 - level ?level_358140009 - level ?goods_358140012 - goods ?truck_358140010 - truck ?truck_358140013 - truck)
	:precondition (and 
			(loaded ?goods_358140012 ?truck_358140013 ?level_358140011) 
			(loaded ?goods_358140012 ?truck_358140010 ?level_358140009)
	)
	:effect (and 
		(loaded ?goods_358140012 ?truck_358140010 ?level_358140011) 
		(loaded ?goods_358140012 ?truck_358140013 ?level_358140009) 
		(next ?level_358140009 ?level_358140011) 
		(stored ?goods_358140012 ?level_358140011)
	)
)

(:action act_act_tpp-propositional_302073_302667
	:parameters ( ?level_358140011 - level ?level_358140009 - level ?goods_358140012 - goods ?truck_358140010 - truck ?truck_358140013 - truck)
	:precondition (and 
			(loaded ?goods_358140012 ?truck_358140013 ?level_358140011) 
			(loaded ?goods_358140012 ?truck_358140010 ?level_358140009)
	)
	:effect (and 
		(not (loaded ?goods_358140012 ?truck_358140010 ?level_358140011)) 
		(loaded ?goods_358140012 ?truck_358140013 ?level_358140009) 
		(next ?level_358140011 ?level_358140009)
	)
)

(:action act_act_tpp-propositional_302074_302668
	:parameters ( ?level_70395626 - level ?goods_70395624 - goods ?level_70395622 - level ?level_70395623 - level ?market_70395621 - market ?truck_70395625 - truck)
	:precondition (and 
			(loaded ?goods_70395624 ?truck_70395625 ?level_70395622) 
			(loaded ?goods_70395624 ?truck_70395625 ?level_70395626) 
			(next ?level_70395623 ?level_70395622) 
			(ready-to-load ?goods_70395624 ?market_70395621 ?level_70395626)
	)
	:effect (and 
		(not (loaded ?goods_70395624 ?truck_70395625 ?level_70395623)) 
		(next ?level_70395626 ?level_70395622) 
		(not (ready-to-load ?goods_70395624 ?market_70395621 ?level_70395623)) 
		(stored ?goods_70395624 ?level_70395626)
	)
)

(:action act_act_tpp-propositional_302075_302669
	:parameters ( ?truck_547669872 - truck ?level_547669874 - level ?place_547669873 - place ?level_547669875 - level ?place_547669876 - place)
	:precondition (and 
			(at ?truck_547669872 ?place_547669873) 
			(connected ?place_547669873 ?place_547669876) 
			(next ?level_547669874 ?level_547669875)
	)
	:effect (and 
		(at ?truck_547669872 ?place_547669876) 
		(connected ?place_547669876 ?place_547669873) 
		(next ?level_547669875 ?level_547669874)
	)
)

(:action act_act_tpp-propositional_302076_302670
	:parameters ( ?level_254110958 - level ?goods_254110959 - goods ?level_254110962 - level ?market_254110957 - market ?goods_254110961 - goods ?truck_254110960 - truck)
	:precondition (and 
			(loaded ?goods_254110961 ?truck_254110960 ?level_254110958) 
			(ready-to-load ?goods_254110959 ?market_254110957 ?level_254110962) 
			(stored ?goods_254110959 ?level_254110962) 
			(stored ?goods_254110959 ?level_254110958)
	)
	:effect (and 
		(not (loaded ?goods_254110959 ?truck_254110960 ?level_254110958)) 
		(next ?level_254110962 ?level_254110958) 
		(ready-to-load ?goods_254110959 ?market_254110957 ?level_254110958) 
		(stored ?goods_254110961 ?level_254110962)
	)
)

(:action act_act_tpp-propositional_302077_302671
	:parameters ( ?truck_164539993 - truck ?place_164539994 - place ?goods_164539996 - goods ?level_164539992 - level ?level_164539995 - level ?truck_164539991 - truck)
	:precondition (and 
			(at ?truck_164539993 ?place_164539994) 
			(loaded ?goods_164539996 ?truck_164539991 ?level_164539995) 
			(stored ?goods_164539996 ?level_164539992)
	)
	:effect (and 
		(not (at ?truck_164539991 ?place_164539994)) 
		(not (loaded ?goods_164539996 ?truck_164539991 ?level_164539992)) 
		(not (loaded ?goods_164539996 ?truck_164539993 ?level_164539992)) 
		(next ?level_164539992 ?level_164539995)
	)
)

(:action act_act_tpp-propositional_302077_302672
	:parameters ( ?truck_164539993 - truck ?place_164539994 - place ?goods_164539996 - goods ?level_164539992 - level ?level_164539995 - level ?truck_164539991 - truck)
	:precondition (and 
			(at ?truck_164539993 ?place_164539994) 
			(loaded ?goods_164539996 ?truck_164539991 ?level_164539995) 
			(stored ?goods_164539996 ?level_164539992)
	)
	:effect (and 
		(at ?truck_164539991 ?place_164539994) 
		(not (loaded ?goods_164539996 ?truck_164539993 ?level_164539995)) 
		(next ?level_164539995 ?level_164539992) 
		(stored ?goods_164539996 ?level_164539995)
	)
)

(:action act_act_tpp-propositional_302077_302673
	:parameters ( ?truck_164539993 - truck ?place_164539994 - place ?goods_164539996 - goods ?level_164539992 - level ?level_164539995 - level ?truck_164539991 - truck)
	:precondition (and 
			(at ?truck_164539993 ?place_164539994) 
			(loaded ?goods_164539996 ?truck_164539991 ?level_164539995) 
			(stored ?goods_164539996 ?level_164539992)
	)
	:effect (and 
		(not (at ?truck_164539991 ?place_164539994)) 
		(loaded ?goods_164539996 ?truck_164539993 ?level_164539992) 
		(next ?level_164539995 ?level_164539992) 
		(next ?level_164539992 ?level_164539995) 
		(stored ?goods_164539996 ?level_164539995)
	)
)

(:action act_act_tpp-propositional_302077_302674
	:parameters ( ?place_164539994 - place ?truck_164539993 - truck ?goods_164539996 - goods ?level_164539992 - level ?level_164539995 - level ?truck_164539991 - truck)
	:precondition (and 
			(at ?truck_164539993 ?place_164539994) 
			(loaded ?goods_164539996 ?truck_164539991 ?level_164539995) 
			(stored ?goods_164539996 ?level_164539992)
	)
	:effect (and 
		(at ?truck_164539991 ?place_164539994) 
		(loaded ?goods_164539996 ?truck_164539993 ?level_164539995) 
		(not (loaded ?goods_164539996 ?truck_164539993 ?level_164539992)) 
		(next ?level_164539995 ?level_164539992) 
		(next ?level_164539992 ?level_164539995) 
		(stored ?goods_164539996 ?level_164539995)
	)
)

(:action act_act_tpp-propositional_302077_302675
	:parameters ( ?place_164539994 - place ?truck_164539993 - truck ?goods_164539996 - goods ?level_164539992 - level ?level_164539995 - level ?truck_164539991 - truck)
	:precondition (and 
			(at ?truck_164539993 ?place_164539994) 
			(loaded ?goods_164539996 ?truck_164539991 ?level_164539995) 
			(stored ?goods_164539996 ?level_164539992)
	)
	:effect (and 
		(at ?truck_164539991 ?place_164539994) 
		(not (loaded ?goods_164539996 ?truck_164539993 ?level_164539995)) 
		(not (loaded ?goods_164539996 ?truck_164539991 ?level_164539992)) 
		(loaded ?goods_164539996 ?truck_164539993 ?level_164539992) 
		(next ?level_164539995 ?level_164539992) 
		(next ?level_164539992 ?level_164539995) 
		(not (stored ?goods_164539996 ?level_164539995))
	)
)

(:action act_act_tpp-propositional_302078_302676
	:parameters ( ?level_452196956 - level ?level_452196955 - level ?goods_452196959 - goods ?truck_452196957 - truck ?market_452196958 - market)
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

(:action act_act_tpp-propositional_302078_302677
	:parameters ( ?level_452196956 - level ?truck_452196957 - truck ?level_452196955 - level ?goods_452196959 - goods ?market_452196958 - market)
	:precondition (and 
			(loaded ?goods_452196959 ?truck_452196957 ?level_452196956) 
			(next ?level_452196956 ?level_452196955) 
			(ready-to-load ?goods_452196959 ?market_452196958 ?level_452196956)
	)
	:effect (and 
		(not (loaded ?goods_452196959 ?truck_452196957 ?level_452196955)) 
		(next ?level_452196955 ?level_452196956) 
		(ready-to-load ?goods_452196959 ?market_452196958 ?level_452196955)
	)
)

(:action act_act_tpp-propositional_302078_302678
	:parameters ( ?level_452196956 - level ?level_452196955 - level ?truck_452196957 - truck ?goods_452196959 - goods ?market_452196958 - market)
	:precondition (and 
			(loaded ?goods_452196959 ?truck_452196957 ?level_452196956) 
			(next ?level_452196956 ?level_452196955) 
			(ready-to-load ?goods_452196959 ?market_452196958 ?level_452196956)
	)
	:effect (and 
		(not (loaded ?goods_452196959 ?truck_452196957 ?level_452196955)) 
		(next ?level_452196955 ?level_452196956) 
		(not (ready-to-load ?goods_452196959 ?market_452196958 ?level_452196955)) 
		(not (stored ?goods_452196959 ?level_452196955))
	)
)

(:action act_act_tpp-propositional_302079_302679
	:parameters ( ?goods_337304836 - goods ?level_337304839 - level ?level_337304837 - level ?market_337304838 - market)
	:precondition (and 
			(ready-to-load ?goods_337304836 ?market_337304838 ?level_337304837) 
			(stored ?goods_337304836 ?level_337304837) 
			(stored ?goods_337304836 ?level_337304839)
	)
	:effect (and 
		(next ?level_337304837 ?level_337304839) 
		(not (ready-to-load ?goods_337304836 ?market_337304838 ?level_337304839))
	)
)

(:action act_act_tpp-propositional_302080_302680
	:parameters ( ?level_106781504 - level ?level_106781503 - level ?level_106781502 - level ?truck_106781501 - truck ?goods_106781505 - goods ?market_106781500 - market)
	:precondition (and 
			(loaded ?goods_106781505 ?truck_106781501 ?level_106781502) 
			(ready-to-load ?goods_106781505 ?market_106781500 ?level_106781503) 
			(ready-to-load ?goods_106781505 ?market_106781500 ?level_106781504)
	)
	:effect (and 
		(loaded ?goods_106781505 ?truck_106781501 ?level_106781503) 
		(next ?level_106781504 ?level_106781503) 
		(not (ready-to-load ?goods_106781505 ?market_106781500 ?level_106781502))
	)
)

(:action act_act_tpp-propositional_302081_302681
	:parameters ( ?goods_585381730 - goods ?truck_585381732 - truck ?goods_585381735 - goods ?level_585381731 - level ?level_585381733 - level ?market_585381734 - market)
	:precondition (and 
			(loaded ?goods_585381730 ?truck_585381732 ?level_585381733) 
			(loaded ?goods_585381735 ?truck_585381732 ?level_585381733) 
			(loaded ?goods_585381735 ?truck_585381732 ?level_585381731) 
			(ready-to-load ?goods_585381730 ?market_585381734 ?level_585381733)
	)
	:effect (and 
		(loaded ?goods_585381730 ?truck_585381732 ?level_585381731) 
		(not (ready-to-load ?goods_585381735 ?market_585381734 ?level_585381733))
	)
)

(:action act_act_tpp-propositional_302082_302682
	:parameters ( ?goods_352368568 - goods ?place_352368566 - place ?level_352368565 - level ?level_352368567 - level ?truck_352368564 - truck ?place_352368563 - place)
	:precondition (and 
			(connected ?place_352368563 ?place_352368566) 
			(loaded ?goods_352368568 ?truck_352368564 ?level_352368567) 
			(loaded ?goods_352368568 ?truck_352368564 ?level_352368565)
	)
	:effect (and 
		(at ?truck_352368564 ?place_352368563) 
		(at ?truck_352368564 ?place_352368566) 
		(not (stored ?goods_352368568 ?level_352368565)) 
		(not (stored ?goods_352368568 ?level_352368567))
	)
)

(:action act_act_tpp-propositional_302083_302683
	:parameters ( ?market_59210332 - market ?goods_59210331 - goods ?truck_59210334 - truck ?level_59210333 - level ?level_59210335 - level ?level_59210336 - level)
	:precondition (and 
			(loaded ?goods_59210331 ?truck_59210334 ?level_59210335) 
			(next ?level_59210335 ?level_59210333) 
			(ready-to-load ?goods_59210331 ?market_59210332 ?level_59210333) 
			(stored ?goods_59210331 ?level_59210336)
	)
	:effect (and 
		(not (loaded ?goods_59210331 ?truck_59210334 ?level_59210336)) 
		(loaded ?goods_59210331 ?truck_59210334 ?level_59210333) 
		(ready-to-load ?goods_59210331 ?market_59210332 ?level_59210336) 
		(not (stored ?goods_59210331 ?level_59210335))
	)
)

(:action act_act_tpp-propositional_302084_302684
	:parameters ( ?level_287413503 - level ?level_287413502 - level ?truck_287413504 - truck ?place_287413505 - place ?truck_287413501 - truck ?goods_287413500 - goods)
	:precondition (and 
			(at ?truck_287413504 ?place_287413505) 
			(loaded ?goods_287413500 ?truck_287413501 ?level_287413502) 
			(loaded ?goods_287413500 ?truck_287413504 ?level_287413502) 
			(stored ?goods_287413500 ?level_287413503)
	)
	:effect (and 
		(not (at ?truck_287413501 ?place_287413505)) 
		(loaded ?goods_287413500 ?truck_287413504 ?level_287413503) 
		(next ?level_287413502 ?level_287413503) 
		(stored ?goods_287413500 ?level_287413502)
	)
)

(:action act_act_tpp-propositional_302084_302685
	:parameters ( ?level_287413503 - level ?level_287413502 - level ?truck_287413504 - truck ?place_287413505 - place ?truck_287413501 - truck ?goods_287413500 - goods)
	:precondition (and 
			(at ?truck_287413504 ?place_287413505) 
			(loaded ?goods_287413500 ?truck_287413501 ?level_287413502) 
			(loaded ?goods_287413500 ?truck_287413504 ?level_287413502) 
			(stored ?goods_287413500 ?level_287413503)
	)
	:effect (and 
		(at ?truck_287413501 ?place_287413505) 
		(not (loaded ?goods_287413500 ?truck_287413504 ?level_287413503)) 
		(next ?level_287413502 ?level_287413503)
	)
)

(:action act_act_tpp-propositional_302085_302686
	:parameters ( ?level_260505010 - level ?place_260505011 - place ?level_260505009 - level ?truck_260505012 - truck ?truck_260505013 - truck ?goods_260505008 - goods)
	:precondition (and 
			(at ?truck_260505012 ?place_260505011) 
			(loaded ?goods_260505008 ?truck_260505013 ?level_260505010) 
			(loaded ?goods_260505008 ?truck_260505013 ?level_260505009)
	)
	:effect (and 
		(at ?truck_260505013 ?place_260505011) 
		(loaded ?goods_260505008 ?truck_260505012 ?level_260505010) 
		(not (loaded ?goods_260505008 ?truck_260505012 ?level_260505009)) 
		(next ?level_260505010 ?level_260505009) 
		(next ?level_260505009 ?level_260505010) 
		(not (stored ?goods_260505008 ?level_260505009))
	)
)

(:action act_act_tpp-propositional_302085_302687
	:parameters ( ?level_260505010 - level ?place_260505011 - place ?level_260505009 - level ?truck_260505012 - truck ?truck_260505013 - truck ?goods_260505008 - goods)
	:precondition (and 
			(at ?truck_260505012 ?place_260505011) 
			(loaded ?goods_260505008 ?truck_260505013 ?level_260505010) 
			(loaded ?goods_260505008 ?truck_260505013 ?level_260505009)
	)
	:effect (and 
		(at ?truck_260505013 ?place_260505011) 
		(loaded ?goods_260505008 ?truck_260505012 ?level_260505009) 
		(next ?level_260505010 ?level_260505009) 
		(not (stored ?goods_260505008 ?level_260505010)) 
		(not (stored ?goods_260505008 ?level_260505009))
	)
)

(:action act_act_tpp-propositional_302085_302688
	:parameters ( ?level_260505010 - level ?place_260505011 - place ?level_260505009 - level ?truck_260505012 - truck ?goods_260505008 - goods ?truck_260505013 - truck)
	:precondition (and 
			(at ?truck_260505012 ?place_260505011) 
			(loaded ?goods_260505008 ?truck_260505013 ?level_260505010) 
			(loaded ?goods_260505008 ?truck_260505013 ?level_260505009)
	)
	:effect (and 
		(not (at ?truck_260505013 ?place_260505011)) 
		(loaded ?goods_260505008 ?truck_260505012 ?level_260505009) 
		(next ?level_260505009 ?level_260505010)
	)
)

(:action act_act_tpp-propositional_302086_302689
	:parameters ( ?goods_371565287 - goods ?level_371565288 - level ?level_371565289 - level ?market_371565290 - market)
	:precondition (and 
			(next ?level_371565289 ?level_371565288) 
			(ready-to-load ?goods_371565287 ?market_371565290 ?level_371565289)
	)
	:effect (and 
		(next ?level_371565288 ?level_371565289) 
		(ready-to-load ?goods_371565287 ?market_371565290 ?level_371565288) 
		(stored ?goods_371565287 ?level_371565289)
	)
)

(:action act_act_tpp-propositional_302086_302690
	:parameters ( ?goods_371565287 - goods ?level_371565288 - level ?level_371565289 - level ?market_371565290 - market)
	:precondition (and 
			(next ?level_371565289 ?level_371565288) 
			(ready-to-load ?goods_371565287 ?market_371565290 ?level_371565289)
	)
	:effect (and 
		(next ?level_371565288 ?level_371565289) 
		(ready-to-load ?goods_371565287 ?market_371565290 ?level_371565288) 
		(not (stored ?goods_371565287 ?level_371565289))
	)
)

(:action act_act_tpp-propositional_302086_302691
	:parameters ( ?goods_371565287 - goods ?level_371565288 - level ?level_371565289 - level ?market_371565290 - market)
	:precondition (and 
			(next ?level_371565289 ?level_371565288) 
			(ready-to-load ?goods_371565287 ?market_371565290 ?level_371565289)
	)
	:effect (and 
		(not (ready-to-load ?goods_371565287 ?market_371565290 ?level_371565288)) 
		(not (stored ?goods_371565287 ?level_371565289))
	)
)

(:action act_act_tpp-propositional_302086_302692
	:parameters ( ?goods_371565287 - goods ?level_371565288 - level ?level_371565289 - level ?market_371565290 - market)
	:precondition (and 
			(next ?level_371565289 ?level_371565288) 
			(ready-to-load ?goods_371565287 ?market_371565290 ?level_371565289)
	)
	:effect (and 
		(next ?level_371565288 ?level_371565289) 
		(not (ready-to-load ?goods_371565287 ?market_371565290 ?level_371565288)) 
		(stored ?goods_371565287 ?level_371565289)
	)
)

(:action act_act_tpp-propositional_302087_302693
	:parameters ( ?market_523765172 - market ?goods_523765173 - goods ?level_523765170 - level ?level_523765171 - level)
	:precondition (and 
			(next ?level_523765171 ?level_523765170) 
			(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765170)
	)
	:effect (and 
		(next ?level_523765170 ?level_523765171) 
		(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765171) 
		(stored ?goods_523765173 ?level_523765171) 
		(not (stored ?goods_523765173 ?level_523765170))
	)
)

(:action act_act_tpp-propositional_302087_302694
	:parameters ( ?market_523765172 - market ?goods_523765173 - goods ?level_523765170 - level ?level_523765171 - level)
	:precondition (and 
			(next ?level_523765171 ?level_523765170) 
			(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765170)
	)
	:effect (and 
		(next ?level_523765170 ?level_523765171) 
		(not (ready-to-load ?goods_523765173 ?market_523765172 ?level_523765171)) 
		(not (stored ?goods_523765173 ?level_523765171)) 
		(stored ?goods_523765173 ?level_523765170)
	)
)

(:action act_act_tpp-propositional_302087_302695
	:parameters ( ?market_523765172 - market ?goods_523765173 - goods ?level_523765170 - level ?level_523765171 - level)
	:precondition (and 
			(next ?level_523765171 ?level_523765170) 
			(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765170)
	)
	:effect (and 
		(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765171) 
		(stored ?goods_523765173 ?level_523765171) 
		(stored ?goods_523765173 ?level_523765170)
	)
)

(:action act_act_tpp-propositional_302087_302696
	:parameters ( ?market_523765172 - market ?goods_523765173 - goods ?level_523765170 - level ?level_523765171 - level)
	:precondition (and 
			(next ?level_523765171 ?level_523765170) 
			(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765170)
	)
	:effect (and 
		(not (ready-to-load ?goods_523765173 ?market_523765172 ?level_523765171)) 
		(not (stored ?goods_523765173 ?level_523765170))
	)
)

(:action act_act_tpp-propositional_302087_302697
	:parameters ( ?market_523765172 - market ?goods_523765173 - goods ?level_523765170 - level ?level_523765171 - level)
	:precondition (and 
			(next ?level_523765171 ?level_523765170) 
			(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765170)
	)
	:effect (and 
		(next ?level_523765170 ?level_523765171) 
		(ready-to-load ?goods_523765173 ?market_523765172 ?level_523765171) 
		(not (stored ?goods_523765173 ?level_523765171)) 
		(stored ?goods_523765173 ?level_523765170)
	)
)

(:action act_act_tpp-propositional_302088_302698
	:parameters ( ?level_295551614 - level ?level_295551617 - level ?truck_295551616 - truck ?truck_295551615 - truck ?goods_295551613 - goods ?market_295551618 - market)
	:precondition (and 
			(loaded ?goods_295551613 ?truck_295551615 ?level_295551617) 
			(loaded ?goods_295551613 ?truck_295551616 ?level_295551614) 
			(ready-to-load ?goods_295551613 ?market_295551618 ?level_295551617)
	)
	:effect (and 
		(loaded ?goods_295551613 ?truck_295551616 ?level_295551617) 
		(not (loaded ?goods_295551613 ?truck_295551615 ?level_295551614)) 
		(ready-to-load ?goods_295551613 ?market_295551618 ?level_295551614) 
		(stored ?goods_295551613 ?level_295551614)
	)
)

(:action act_act_tpp-propositional_302089_302699
	:parameters ( ?level_331384506 - level ?market_331384510 - market ?goods_331384509 - goods ?level_331384507 - level ?goods_331384508 - goods ?truck_331384505 - truck)
	:precondition (and 
			(loaded ?goods_331384508 ?truck_331384505 ?level_331384506) 
			(loaded ?goods_331384509 ?truck_331384505 ?level_331384506) 
			(next ?level_331384506 ?level_331384507) 
			(ready-to-load ?goods_331384508 ?market_331384510 ?level_331384506) 
			(stored ?goods_331384509 ?level_331384507)
	)
	:effect (and 
		(not (loaded ?goods_331384508 ?truck_331384505 ?level_331384507)) 
		(ready-to-load ?goods_331384509 ?market_331384510 ?level_331384506)
	)
)

(:action act_act_tpp-propositional_302090_302700
	:parameters ( ?goods_508841804 - goods ?level_508841805 - level ?truck_508841808 - truck ?market_508841806 - market ?level_508841809 - level ?level_508841807 - level)
	:precondition (and 
			(loaded ?goods_508841804 ?truck_508841808 ?level_508841807) 
			(next ?level_508841809 ?level_508841805) 
			(next ?level_508841807 ?level_508841809) 
			(ready-to-load ?goods_508841804 ?market_508841806 ?level_508841805) 
			(stored ?goods_508841804 ?level_508841807)
	)
	:effect (and 
		(loaded ?goods_508841804 ?truck_508841808 ?level_508841805) 
		(next ?level_508841805 ?level_508841807) 
		(ready-to-load ?goods_508841804 ?market_508841806 ?level_508841809)
	)
)

(:action act_act_tpp-propositional_302091_302701
	:parameters ( ?level_81313325 - level ?market_81313324 - market ?level_81313322 - level ?goods_81313323 - goods)
	:precondition (and 
			(next ?level_81313322 ?level_81313325) 
			(next ?level_81313325 ?level_81313322) 
			(ready-to-load ?goods_81313323 ?market_81313324 ?level_81313325)
	)
	:effect (and 
		(ready-to-load ?goods_81313323 ?market_81313324 ?level_81313322) 
		(stored ?goods_81313323 ?level_81313325)
	)
)

(:action act_act_tpp-propositional_302092_302702
	:parameters ( ?goods_414352237 - goods ?level_414352238 - level ?market_414352235 - market ?level_414352236 - level)
	:precondition (and 
			(next ?level_414352238 ?level_414352236) 
			(next ?level_414352236 ?level_414352238) 
			(ready-to-load ?goods_414352237 ?market_414352235 ?level_414352238)
	)
	:effect (and 
		(ready-to-load ?goods_414352237 ?market_414352235 ?level_414352236) 
		(stored ?goods_414352237 ?level_414352238)
	)
)

(:action act_act_tpp-propositional_302092_302703
	:parameters ( ?goods_414352237 - goods ?level_414352238 - level ?market_414352235 - market ?level_414352236 - level)
	:precondition (and 
			(next ?level_414352238 ?level_414352236) 
			(next ?level_414352236 ?level_414352238) 
			(ready-to-load ?goods_414352237 ?market_414352235 ?level_414352238)
	)
	:effect (and 
		(not (ready-to-load ?goods_414352237 ?market_414352235 ?level_414352236)) 
		(stored ?goods_414352237 ?level_414352238)
	)
)

(:action act_act_tpp-propositional_302093_302704
	:parameters ( ?level_218016280 - level ?goods_218016281 - goods ?level_218016279 - level ?level_218016278 - level ?truck_218016277 - truck)
	:precondition (and 
			(loaded ?goods_218016281 ?truck_218016277 ?level_218016280) 
			(next ?level_218016278 ?level_218016279) 
			(next ?level_218016279 ?level_218016278)
	)
	:effect (and 
		(not (loaded ?goods_218016281 ?truck_218016277 ?level_218016278)) 
		(next ?level_218016280 ?level_218016279)
	)
)

(:action act_act_tpp-propositional_302094_302705
	:parameters ( ?level_218104740 - level ?truck_218104739 - truck ?level_218104737 - level ?goods_218104741 - goods ?level_218104738 - level)
	:precondition (and 
			(loaded ?goods_218104741 ?truck_218104739 ?level_218104738) 
			(next ?level_218104737 ?level_218104740) 
			(next ?level_218104738 ?level_218104740)
	)
	:effect (and 
		(not (loaded ?goods_218104741 ?truck_218104739 ?level_218104737)) 
		(not (loaded ?goods_218104741 ?truck_218104739 ?level_218104740)) 
		(next ?level_218104738 ?level_218104737) 
		(next ?level_218104740 ?level_218104737) 
		(next ?level_218104740 ?level_218104738) 
		(next ?level_218104737 ?level_218104738) 
		(stored ?goods_218104741 ?level_218104740) 
		(stored ?goods_218104741 ?level_218104737)
	)
)

(:action act_act_tpp-propositional_302094_302706
	:parameters ( ?level_218104740 - level ?truck_218104739 - truck ?goods_218104741 - goods ?level_218104737 - level ?level_218104738 - level)
	:precondition (and 
			(loaded ?goods_218104741 ?truck_218104739 ?level_218104738) 
			(next ?level_218104737 ?level_218104740) 
			(next ?level_218104738 ?level_218104740)
	)
	:effect (and 
		(loaded ?goods_218104741 ?truck_218104739 ?level_218104740) 
		(next ?level_218104737 ?level_218104738)
	)
)

(:action act_act_tpp-propositional_302095_302707
	:parameters ( ?level_247688252 - level ?level_247688255 - level ?goods_247688253 - goods ?truck_247688254 - truck ?level_247688256 - level)
	:precondition (and 
			(loaded ?goods_247688253 ?truck_247688254 ?level_247688256) 
			(next ?level_247688252 ?level_247688256) 
			(next ?level_247688256 ?level_247688255)
	)
	:effect (and 
		(not (loaded ?goods_247688253 ?truck_247688254 ?level_247688252)) 
		(not (loaded ?goods_247688253 ?truck_247688254 ?level_247688255)) 
		(next ?level_247688252 ?level_247688255) 
		(next ?level_247688256 ?level_247688252) 
		(next ?level_247688255 ?level_247688256)
	)
)

(:action act_act_tpp-propositional_302095_302708
	:parameters ( ?level_247688252 - level ?level_247688255 - level ?goods_247688253 - goods ?truck_247688254 - truck ?level_247688256 - level)
	:precondition (and 
			(loaded ?goods_247688253 ?truck_247688254 ?level_247688256) 
			(next ?level_247688252 ?level_247688256) 
			(next ?level_247688256 ?level_247688255)
	)
	:effect (and 
		(loaded ?goods_247688253 ?truck_247688254 ?level_247688252) 
		(next ?level_247688255 ?level_247688256)
	)
)

(:action act_act_tpp-propositional_302096_302709
	:parameters ( ?level_316892766 - level ?level_316892763 - level ?level_316892764 - level ?truck_316892767 - truck ?goods_316892765 - goods)
	:precondition (and 
			(loaded ?goods_316892765 ?truck_316892767 ?level_316892763) 
			(next ?level_316892763 ?level_316892766) 
			(next ?level_316892764 ?level_316892763)
	)
	:effect (and 
		(not (loaded ?goods_316892765 ?truck_316892767 ?level_316892764)) 
		(next ?level_316892766 ?level_316892763)
	)
)

(:action act_act_tpp-propositional_302096_302710
	:parameters ( ?level_316892766 - level ?level_316892763 - level ?level_316892764 - level ?truck_316892767 - truck ?goods_316892765 - goods)
	:precondition (and 
			(loaded ?goods_316892765 ?truck_316892767 ?level_316892763) 
			(next ?level_316892763 ?level_316892766) 
			(next ?level_316892764 ?level_316892763)
	)
	:effect (and 
		(loaded ?goods_316892765 ?truck_316892767 ?level_316892766) 
		(loaded ?goods_316892765 ?truck_316892767 ?level_316892764) 
		(next ?level_316892763 ?level_316892764)
	)
)

(:action act_act_tpp-propositional_302097_302711
	:parameters ( ?level_403381247 - level ?level_403381245 - level ?level_403381243 - level ?truck_403381244 - truck ?goods_403381246 - goods)
	:precondition (and 
			(loaded ?goods_403381246 ?truck_403381244 ?level_403381247) 
			(next ?level_403381247 ?level_403381245) 
			(next ?level_403381245 ?level_403381243)
	)
	:effect (and 
		(not (loaded ?goods_403381246 ?truck_403381244 ?level_403381245)) 
		(next ?level_403381243 ?level_403381247)
	)
)

(:action act_act_tpp-propositional_302097_302712
	:parameters ( ?level_403381247 - level ?level_403381245 - level ?truck_403381244 - truck ?level_403381243 - level ?goods_403381246 - goods)
	:precondition (and 
			(loaded ?goods_403381246 ?truck_403381244 ?level_403381247) 
			(next ?level_403381247 ?level_403381245) 
			(next ?level_403381245 ?level_403381243)
	)
	:effect (and 
		(loaded ?goods_403381246 ?truck_403381244 ?level_403381243) 
		(loaded ?goods_403381246 ?truck_403381244 ?level_403381245) 
		(next ?level_403381247 ?level_403381243) 
		(stored ?goods_403381246 ?level_403381243)
	)
)

(:action act_act_tpp-propositional_302098_302713
	:parameters ( ?level_418870635 - level ?level_418870638 - level ?truck_418870636 - truck ?goods_418870637 - goods ?level_418870634 - level)
	:precondition (and 
			(loaded ?goods_418870637 ?truck_418870636 ?level_418870638) 
			(next ?level_418870634 ?level_418870638) 
			(next ?level_418870635 ?level_418870634)
	)
	:effect (and 
		(loaded ?goods_418870637 ?truck_418870636 ?level_418870635) 
		(next ?level_418870638 ?level_418870635) 
		(next ?level_418870638 ?level_418870634) 
		(next ?level_418870634 ?level_418870635) 
		(next ?level_418870635 ?level_418870638)
	)
)

(:action act_act_tpp-propositional_302098_302714
	:parameters ( ?level_418870635 - level ?level_418870638 - level ?truck_418870636 - truck ?goods_418870637 - goods ?level_418870634 - level)
	:precondition (and 
			(loaded ?goods_418870637 ?truck_418870636 ?level_418870638) 
			(next ?level_418870634 ?level_418870638) 
			(next ?level_418870635 ?level_418870634)
	)
	:effect (and 
		(not (loaded ?goods_418870637 ?truck_418870636 ?level_418870634)) 
		(not (loaded ?goods_418870637 ?truck_418870636 ?level_418870635)) 
		(next ?level_418870638 ?level_418870634) 
		(next ?level_418870635 ?level_418870638) 
		(stored ?goods_418870637 ?level_418870638)
	)
)

(:action act_act_tpp-propositional_302099_302715
	:parameters ( ?level_30255850 - level ?level_30255852 - level ?goods_30255849 - goods ?market_30255851 - market ?truck_30255853 - truck ?goods_30255854 - goods)
	:precondition (and 
			(loaded ?goods_30255849 ?truck_30255853 ?level_30255850) 
			(loaded ?goods_30255854 ?truck_30255853 ?level_30255852) 
			(next ?level_30255852 ?level_30255850) 
			(ready-to-load ?goods_30255849 ?market_30255851 ?level_30255852) 
			(stored ?goods_30255854 ?level_30255850)
	)
	:effect (and 
		(loaded ?goods_30255849 ?truck_30255853 ?level_30255852) 
		(ready-to-load ?goods_30255849 ?market_30255851 ?level_30255850) 
		(not (ready-to-load ?goods_30255854 ?market_30255851 ?level_30255850))
	)
)

(:action act_act_tpp-propositional_302100_302716
	:parameters ( ?level_109288768 - level ?place_109288767 - place ?truck_109288765 - truck ?goods_109288766 - goods ?truck_109288769 - truck ?level_109288770 - level)
	:precondition (and 
			(at ?truck_109288769 ?place_109288767) 
			(loaded ?goods_109288766 ?truck_109288769 ?level_109288768) 
			(loaded ?goods_109288766 ?truck_109288765 ?level_109288768) 
			(next ?level_109288770 ?level_109288768) 
			(stored ?goods_109288766 ?level_109288770)
	)
	:effect (and 
		(at ?truck_109288765 ?place_109288767) 
		(loaded ?goods_109288766 ?truck_109288769 ?level_109288770) 
		(next ?level_109288768 ?level_109288770)
	)
)

(:action act_act_tpp-propositional_302101_302717
	:parameters ( ?level_415005875 - level ?goods_415005876 - goods ?level_415005878 - level ?level_415005879 - level ?level_415005877 - level)
	:precondition (and 
			(next ?level_415005875 ?level_415005879) 
			(next ?level_415005878 ?level_415005875) 
			(stored ?goods_415005876 ?level_415005877)
	)
	:effect (and 
		(next ?level_415005878 ?level_415005877) 
		(next ?level_415005877 ?level_415005879) 
		(not (stored ?goods_415005876 ?level_415005878)) 
		(stored ?goods_415005876 ?level_415005875)
	)
)

(:action act_act_tpp-propositional_302101_302718
	:parameters ( ?level_415005875 - level ?goods_415005876 - goods ?level_415005878 - level ?level_415005879 - level ?level_415005877 - level)
	:precondition (and 
			(next ?level_415005875 ?level_415005879) 
			(next ?level_415005878 ?level_415005875) 
			(stored ?goods_415005876 ?level_415005877)
	)
	:effect (and 
		(next ?level_415005877 ?level_415005875) 
		(next ?level_415005879 ?level_415005878) 
		(next ?level_415005875 ?level_415005878) 
		(stored ?goods_415005876 ?level_415005879) 
		(stored ?goods_415005876 ?level_415005878)
	)
)

(:action act_act_tpp-propositional_302102_302719
	:parameters ( ?level_446377870 - level ?level_446377871 - level ?level_446377872 - level ?goods_446377873 - goods)
	:precondition (and 
			(next ?level_446377872 ?level_446377871) 
			(next ?level_446377870 ?level_446377871) 
			(stored ?goods_446377873 ?level_446377871)
	)
	:effect (and 
		(next ?level_446377871 ?level_446377872) 
		(next ?level_446377871 ?level_446377870) 
		(next ?level_446377872 ?level_446377870) 
		(stored ?goods_446377873 ?level_446377870) 
		(not (stored ?goods_446377873 ?level_446377872))
	)
)

(:action act_act_tpp-propositional_302103_302720
	:parameters ( ?level_42023450 - level ?truck_42023446 - truck ?level_42023449 - level ?market_42023448 - market ?level_42023445 - level ?goods_42023447 - goods)
	:precondition (and 
			(loaded ?goods_42023447 ?truck_42023446 ?level_42023445) 
			(next ?level_42023449 ?level_42023450) 
			(ready-to-load ?goods_42023447 ?market_42023448 ?level_42023449) 
			(stored ?goods_42023447 ?level_42023449)
	)
	:effect (and 
		(loaded ?goods_42023447 ?truck_42023446 ?level_42023449) 
		(next ?level_42023450 ?level_42023449) 
		(not (ready-to-load ?goods_42023447 ?market_42023448 ?level_42023445)) 
		(stored ?goods_42023447 ?level_42023445)
	)
)

(:action act_act_tpp-propositional_302104_302721
	:parameters ( ?level_527043789 - level ?goods_527043786 - goods ?level_527043785 - level ?market_527043784 - market ?level_527043787 - level ?truck_527043788 - truck)
	:precondition (and 
			(loaded ?goods_527043786 ?truck_527043788 ?level_527043787) 
			(next ?level_527043789 ?level_527043787) 
			(ready-to-load ?goods_527043786 ?market_527043784 ?level_527043785) 
			(stored ?goods_527043786 ?level_527043789)
	)
	:effect (and 
		(loaded ?goods_527043786 ?truck_527043788 ?level_527043789) 
		(next ?level_527043787 ?level_527043785) 
		(ready-to-load ?goods_527043786 ?market_527043784 ?level_527043787) 
		(ready-to-load ?goods_527043786 ?market_527043784 ?level_527043789)
	)
)

(:action act_act_tpp-propositional_302105_302722
	:parameters ( ?level_411477864 - level ?level_411477861 - level ?level_411477862 - level ?goods_411477865 - goods ?market_411477863 - market)
	:precondition (and 
			(next ?level_411477861 ?level_411477862) 
			(next ?level_411477862 ?level_411477864) 
			(ready-to-load ?goods_411477865 ?market_411477863 ?level_411477861)
	)
	:effect (and 
		(next ?level_411477861 ?level_411477864) 
		(ready-to-load ?goods_411477865 ?market_411477863 ?level_411477862) 
		(stored ?goods_411477865 ?level_411477861)
	)
)

(:action act_act_tpp-propositional_302105_302723
	:parameters ( ?level_411477864 - level ?level_411477861 - level ?level_411477862 - level ?goods_411477865 - goods ?market_411477863 - market)
	:precondition (and 
			(next ?level_411477861 ?level_411477862) 
			(next ?level_411477862 ?level_411477864) 
			(ready-to-load ?goods_411477865 ?market_411477863 ?level_411477861)
	)
	:effect (and 
		(next ?level_411477862 ?level_411477861) 
		(ready-to-load ?goods_411477865 ?market_411477863 ?level_411477862) 
		(not (ready-to-load ?goods_411477865 ?market_411477863 ?level_411477864)) 
		(not (stored ?goods_411477865 ?level_411477861))
	)
)

(:action act_act_tpp-propositional_302106_302724
	:parameters ( ?level_216077761 - level ?truck_216077759 - truck ?level_216077760 - level ?goods_216077762 - goods ?truck_216077764 - truck ?level_216077763 - level)
	:precondition (and 
			(loaded ?goods_216077762 ?truck_216077759 ?level_216077763) 
			(loaded ?goods_216077762 ?truck_216077764 ?level_216077761) 
			(loaded ?goods_216077762 ?truck_216077764 ?level_216077763) 
			(stored ?goods_216077762 ?level_216077760)
	)
	:effect (and 
		(loaded ?goods_216077762 ?truck_216077759 ?level_216077761) 
		(loaded ?goods_216077762 ?truck_216077764 ?level_216077760) 
		(next ?level_216077763 ?level_216077761)
	)
)

(:action act_act_tpp-propositional_302107_302725
	:parameters ( ?goods_526537430 - goods ?truck_526537431 - truck ?level_526537434 - level ?place_526537433 - place ?level_526537432 - level ?place_526537429 - place)
	:precondition (and 
			(connected ?place_526537429 ?place_526537433) 
			(loaded ?goods_526537430 ?truck_526537431 ?level_526537432) 
			(next ?level_526537432 ?level_526537434)
	)
	:effect (and 
		(not (at ?truck_526537431 ?place_526537429)) 
		(at ?truck_526537431 ?place_526537433) 
		(loaded ?goods_526537430 ?truck_526537431 ?level_526537434) 
		(next ?level_526537434 ?level_526537432) 
		(stored ?goods_526537430 ?level_526537434)
	)
)

(:action act_act_tpp-propositional_302107_302726
	:parameters ( ?goods_526537430 - goods ?truck_526537431 - truck ?level_526537434 - level ?place_526537433 - place ?level_526537432 - level ?place_526537429 - place)
	:precondition (and 
			(connected ?place_526537429 ?place_526537433) 
			(loaded ?goods_526537430 ?truck_526537431 ?level_526537432) 
			(next ?level_526537432 ?level_526537434)
	)
	:effect (and 
		(at ?truck_526537431 ?place_526537429) 
		(not (at ?truck_526537431 ?place_526537433)) 
		(connected ?place_526537433 ?place_526537429) 
		(loaded ?goods_526537430 ?truck_526537431 ?level_526537434) 
		(next ?level_526537434 ?level_526537432)
	)
)

(:action act_act_tpp-propositional_302107_302727
	:parameters ( ?goods_526537430 - goods ?truck_526537431 - truck ?level_526537434 - level ?place_526537433 - place ?level_526537432 - level ?place_526537429 - place)
	:precondition (and 
			(connected ?place_526537429 ?place_526537433) 
			(loaded ?goods_526537430 ?truck_526537431 ?level_526537432) 
			(next ?level_526537432 ?level_526537434)
	)
	:effect (and 
		(at ?truck_526537431 ?place_526537429) 
		(at ?truck_526537431 ?place_526537433) 
		(next ?level_526537434 ?level_526537432) 
		(not (stored ?goods_526537430 ?level_526537434))
	)
)

(:action act_act_tpp-propositional_302108_302728
	:parameters ( ?market_351159050 - market ?level_351159049 - level ?truck_351159048 - truck ?goods_351159047 - goods ?level_351159052 - level ?level_351159051 - level)
	:precondition (and 
			(loaded ?goods_351159047 ?truck_351159048 ?level_351159051) 
			(ready-to-load ?goods_351159047 ?market_351159050 ?level_351159052) 
			(stored ?goods_351159047 ?level_351159049)
	)
	:effect (and 
		(not (loaded ?goods_351159047 ?truck_351159048 ?level_351159049)) 
		(next ?level_351159051 ?level_351159052) 
		(next ?level_351159051 ?level_351159049) 
		(next ?level_351159049 ?level_351159051) 
		(ready-to-load ?goods_351159047 ?market_351159050 ?level_351159051)
	)
)

(:action act_act_tpp-propositional_302108_302729
	:parameters ( ?market_351159050 - market ?level_351159049 - level ?truck_351159048 - truck ?goods_351159047 - goods ?level_351159052 - level ?level_351159051 - level)
	:precondition (and 
			(loaded ?goods_351159047 ?truck_351159048 ?level_351159051) 
			(ready-to-load ?goods_351159047 ?market_351159050 ?level_351159052) 
			(stored ?goods_351159047 ?level_351159049)
	)
	:effect (and 
		(loaded ?goods_351159047 ?truck_351159048 ?level_351159052) 
		(next ?level_351159052 ?level_351159049) 
		(next ?level_351159049 ?level_351159052) 
		(not (ready-to-load ?goods_351159047 ?market_351159050 ?level_351159051))
	)
)

(:action act_act_tpp-propositional_302108_302730
	:parameters ( ?market_351159050 - market ?level_351159049 - level ?truck_351159048 - truck ?goods_351159047 - goods ?level_351159052 - level ?level_351159051 - level)
	:precondition (and 
			(loaded ?goods_351159047 ?truck_351159048 ?level_351159051) 
			(ready-to-load ?goods_351159047 ?market_351159050 ?level_351159052) 
			(stored ?goods_351159047 ?level_351159049)
	)
	:effect (and 
		(loaded ?goods_351159047 ?truck_351159048 ?level_351159052) 
		(loaded ?goods_351159047 ?truck_351159048 ?level_351159049) 
		(next ?level_351159052 ?level_351159051) 
		(next ?level_351159049 ?level_351159051) 
		(ready-to-load ?goods_351159047 ?market_351159050 ?level_351159049) 
		(ready-to-load ?goods_351159047 ?market_351159050 ?level_351159051) 
		(stored ?goods_351159047 ?level_351159051)
	)
)

(:action act_act_tpp-propositional_302109_302731
	:parameters ( ?level_5806870 - level ?market_5806869 - market ?goods_5806867 - goods ?level_5806868 - level ?truck_5806866 - truck)
	:precondition (and 
			(loaded ?goods_5806867 ?truck_5806866 ?level_5806868) 
			(ready-to-load ?goods_5806867 ?market_5806869 ?level_5806870) 
			(stored ?goods_5806867 ?level_5806870)
	)
	:effect (and 
		(loaded ?goods_5806867 ?truck_5806866 ?level_5806870) 
		(ready-to-load ?goods_5806867 ?market_5806869 ?level_5806868)
	)
)

(:action act_act_tpp-propositional_302110_302732
	:parameters ( ?level_131596473 - level ?level_131596474 - level ?market_131596471 - market ?goods_131596472 - goods ?truck_131596470 - truck)
	:precondition (and 
			(loaded ?goods_131596472 ?truck_131596470 ?level_131596474) 
			(ready-to-load ?goods_131596472 ?market_131596471 ?level_131596473) 
			(stored ?goods_131596472 ?level_131596474)
	)
	:effect (and 
		(loaded ?goods_131596472 ?truck_131596470 ?level_131596473) 
		(next ?level_131596474 ?level_131596473) 
		(ready-to-load ?goods_131596472 ?market_131596471 ?level_131596474)
	)
)

(:action act_act_tpp-propositional_302111_302733
	:parameters ( ?level_501015071 - level ?place_501015073 - place ?goods_501015072 - goods ?truck_501015076 - truck ?place_501015074 - place ?truck_501015075 - truck)
	:precondition (and 
			(at ?truck_501015075 ?place_501015073) 
			(connected ?place_501015073 ?place_501015074) 
			(loaded ?goods_501015072 ?truck_501015076 ?level_501015071)
	)
	:effect (and 
		(at ?truck_501015075 ?place_501015074) 
		(at ?truck_501015076 ?place_501015074) 
		(connected ?place_501015074 ?place_501015073) 
		(loaded ?goods_501015072 ?truck_501015075 ?level_501015071) 
		(stored ?goods_501015072 ?level_501015071)
	)
)

(:action act_act_tpp-propositional_302112_302734
	:parameters ( ?level_492061100 - level ?level_492061103 - level ?goods_492061104 - goods ?truck_492061102 - truck ?goods_492061101 - goods)
	:precondition (and 
			(loaded ?goods_492061104 ?truck_492061102 ?level_492061103) 
			(next ?level_492061100 ?level_492061103) 
			(next ?level_492061103 ?level_492061100) 
			(stored ?goods_492061101 ?level_492061103)
	)
	:effect (and 
		(not (loaded ?goods_492061101 ?truck_492061102 ?level_492061103)) 
		(not (stored ?goods_492061104 ?level_492061103)) 
		(not (stored ?goods_492061101 ?level_492061100))
	)
)

(:action act_act_tpp-propositional_302112_302735
	:parameters ( ?level_492061100 - level ?level_492061103 - level ?goods_492061104 - goods ?truck_492061102 - truck ?goods_492061101 - goods)
	:precondition (and 
			(loaded ?goods_492061104 ?truck_492061102 ?level_492061103) 
			(next ?level_492061100 ?level_492061103) 
			(next ?level_492061103 ?level_492061100) 
			(stored ?goods_492061101 ?level_492061103)
	)
	:effect (and 
		(loaded ?goods_492061101 ?truck_492061102 ?level_492061100) 
		(not (loaded ?goods_492061104 ?truck_492061102 ?level_492061100)) 
		(stored ?goods_492061101 ?level_492061100) 
		(stored ?goods_492061104 ?level_492061103)
	)
)

(:action act_act_tpp-propositional_302113_302736
	:parameters ( ?level_82076585 - level ?level_82076584 - level ?level_82076586 - level ?truck_82076582 - truck ?goods_82076583 - goods)
	:precondition (and 
			(loaded ?goods_82076583 ?truck_82076582 ?level_82076584) 
			(stored ?goods_82076583 ?level_82076586) 
			(stored ?goods_82076583 ?level_82076585)
	)
	:effect (and 
		(not (loaded ?goods_82076583 ?truck_82076582 ?level_82076585)) 
		(loaded ?goods_82076583 ?truck_82076582 ?level_82076586) 
		(next ?level_82076584 ?level_82076585) 
		(next ?level_82076585 ?level_82076584) 
		(next ?level_82076586 ?level_82076585) 
		(next ?level_82076586 ?level_82076584)
	)
)

(:action act_act_tpp-propositional_302113_302737
	:parameters ( ?level_82076585 - level ?level_82076584 - level ?level_82076586 - level ?truck_82076582 - truck ?goods_82076583 - goods)
	:precondition (and 
			(loaded ?goods_82076583 ?truck_82076582 ?level_82076584) 
			(stored ?goods_82076583 ?level_82076586) 
			(stored ?goods_82076583 ?level_82076585)
	)
	:effect (and 
		(loaded ?goods_82076583 ?truck_82076582 ?level_82076585) 
		(not (loaded ?goods_82076583 ?truck_82076582 ?level_82076586)) 
		(not (stored ?goods_82076583 ?level_82076584))
	)
)

(:action act_act_tpp-propositional_302113_302738
	:parameters ( ?level_82076585 - level ?level_82076584 - level ?level_82076586 - level ?truck_82076582 - truck ?goods_82076583 - goods)
	:precondition (and 
			(loaded ?goods_82076583 ?truck_82076582 ?level_82076584) 
			(stored ?goods_82076583 ?level_82076586) 
			(stored ?goods_82076583 ?level_82076585)
	)
	:effect (and 
		(loaded ?goods_82076583 ?truck_82076582 ?level_82076585) 
		(loaded ?goods_82076583 ?truck_82076582 ?level_82076586) 
		(next ?level_82076584 ?level_82076586) 
		(next ?level_82076584 ?level_82076585) 
		(next ?level_82076586 ?level_82076585) 
		(next ?level_82076586 ?level_82076584)
	)
)

(:action act_act_tpp-propositional_302114_302739
	:parameters ( ?truck_438125761 - truck ?goods_438125760 - goods ?level_438125759 - level ?truck_438125757 - truck ?place_438125758 - place ?level_438125762 - level)
	:precondition (and 
			(at ?truck_438125757 ?place_438125758) 
			(loaded ?goods_438125760 ?truck_438125761 ?level_438125759) 
			(next ?level_438125759 ?level_438125762)
	)
	:effect (and 
		(at ?truck_438125761 ?place_438125758) 
		(not (loaded ?goods_438125760 ?truck_438125761 ?level_438125762)) 
		(loaded ?goods_438125760 ?truck_438125757 ?level_438125762) 
		(not (loaded ?goods_438125760 ?truck_438125757 ?level_438125759)) 
		(not (stored ?goods_438125760 ?level_438125759)) 
		(stored ?goods_438125760 ?level_438125762)
	)
)

(:action act_act_tpp-propositional_302114_302740
	:parameters ( ?truck_438125761 - truck ?goods_438125760 - goods ?level_438125759 - level ?truck_438125757 - truck ?place_438125758 - place ?level_438125762 - level)
	:precondition (and 
			(at ?truck_438125757 ?place_438125758) 
			(loaded ?goods_438125760 ?truck_438125761 ?level_438125759) 
			(next ?level_438125759 ?level_438125762)
	)
	:effect (and 
		(at ?truck_438125761 ?place_438125758) 
		(not (loaded ?goods_438125760 ?truck_438125757 ?level_438125762)) 
		(not (loaded ?goods_438125760 ?truck_438125757 ?level_438125759)) 
		(stored ?goods_438125760 ?level_438125762)
	)
)

(:action act_act_tpp-propositional_302114_302741
	:parameters ( ?truck_438125761 - truck ?goods_438125760 - goods ?level_438125759 - level ?place_438125758 - place ?truck_438125757 - truck ?level_438125762 - level)
	:precondition (and 
			(at ?truck_438125757 ?place_438125758) 
			(loaded ?goods_438125760 ?truck_438125761 ?level_438125759) 
			(next ?level_438125759 ?level_438125762)
	)
	:effect (and 
		(at ?truck_438125761 ?place_438125758) 
		(loaded ?goods_438125760 ?truck_438125761 ?level_438125762) 
		(loaded ?goods_438125760 ?truck_438125757 ?level_438125762) 
		(not (loaded ?goods_438125760 ?truck_438125757 ?level_438125759)) 
		(next ?level_438125762 ?level_438125759)
	)
)

(:action act_act_tpp-propositional_302114_302742
	:parameters ( ?truck_438125761 - truck ?goods_438125760 - goods ?level_438125759 - level ?truck_438125757 - truck ?place_438125758 - place ?level_438125762 - level)
	:precondition (and 
			(at ?truck_438125757 ?place_438125758) 
			(loaded ?goods_438125760 ?truck_438125761 ?level_438125759) 
			(next ?level_438125759 ?level_438125762)
	)
	:effect (and 
		(at ?truck_438125761 ?place_438125758) 
		(not (loaded ?goods_438125760 ?truck_438125761 ?level_438125762)) 
		(loaded ?goods_438125760 ?truck_438125757 ?level_438125762) 
		(loaded ?goods_438125760 ?truck_438125757 ?level_438125759) 
		(next ?level_438125762 ?level_438125759) 
		(stored ?goods_438125760 ?level_438125759) 
		(not (stored ?goods_438125760 ?level_438125762))
	)
)

(:action act_act_tpp-propositional_302114_302743
	:parameters ( ?truck_438125761 - truck ?goods_438125760 - goods ?level_438125759 - level ?place_438125758 - place ?truck_438125757 - truck ?level_438125762 - level)
	:precondition (and 
			(at ?truck_438125757 ?place_438125758) 
			(loaded ?goods_438125760 ?truck_438125761 ?level_438125759) 
			(next ?level_438125759 ?level_438125762)
	)
	:effect (and 
		(at ?truck_438125761 ?place_438125758) 
		(loaded ?goods_438125760 ?truck_438125757 ?level_438125759) 
		(next ?level_438125762 ?level_438125759) 
		(stored ?goods_438125760 ?level_438125759) 
		(stored ?goods_438125760 ?level_438125762)
	)
)

(:action act_act_tpp-propositional_302114_302744
	:parameters ( ?truck_438125761 - truck ?goods_438125760 - goods ?level_438125759 - level ?truck_438125757 - truck ?place_438125758 - place ?level_438125762 - level)
	:precondition (and 
			(at ?truck_438125757 ?place_438125758) 
			(loaded ?goods_438125760 ?truck_438125761 ?level_438125759) 
			(next ?level_438125759 ?level_438125762)
	)
	:effect (and 
		(not (at ?truck_438125761 ?place_438125758)) 
		(not (loaded ?goods_438125760 ?truck_438125757 ?level_438125762)) 
		(loaded ?goods_438125760 ?truck_438125757 ?level_438125759) 
		(not (stored ?goods_438125760 ?level_438125762))
	)
)

(:action act_act_tpp-propositional_302115_302745
	:parameters ( ?goods_405202322 - goods ?truck_405202319 - truck ?level_405202323 - level ?level_405202321 - level ?goods_405202320 - goods)
	:precondition (and 
			(loaded ?goods_405202322 ?truck_405202319 ?level_405202321) 
			(loaded ?goods_405202320 ?truck_405202319 ?level_405202321) 
			(next ?level_405202321 ?level_405202323)
	)
	:effect (and 
		(loaded ?goods_405202320 ?truck_405202319 ?level_405202323) 
		(loaded ?goods_405202322 ?truck_405202319 ?level_405202323) 
		(next ?level_405202323 ?level_405202321)
	)
)

(:action act_act_tpp-propositional_302115_302746
	:parameters ( ?goods_405202322 - goods ?truck_405202319 - truck ?level_405202323 - level ?level_405202321 - level ?goods_405202320 - goods)
	:precondition (and 
			(loaded ?goods_405202322 ?truck_405202319 ?level_405202321) 
			(loaded ?goods_405202320 ?truck_405202319 ?level_405202321) 
			(next ?level_405202321 ?level_405202323)
	)
	:effect (and 
		(not (loaded ?goods_405202320 ?truck_405202319 ?level_405202323)) 
		(loaded ?goods_405202322 ?truck_405202319 ?level_405202323) 
		(next ?level_405202323 ?level_405202321)
	)
)

(:action act_act_tpp-propositional_302115_302747
	:parameters ( ?goods_405202322 - goods ?truck_405202319 - truck ?level_405202323 - level ?level_405202321 - level ?goods_405202320 - goods)
	:precondition (and 
			(loaded ?goods_405202322 ?truck_405202319 ?level_405202321) 
			(loaded ?goods_405202320 ?truck_405202319 ?level_405202321) 
			(next ?level_405202321 ?level_405202323)
	)
	:effect (and 
		(loaded ?goods_405202320 ?truck_405202319 ?level_405202323) 
		(not (loaded ?goods_405202322 ?truck_405202319 ?level_405202323)) 
		(next ?level_405202323 ?level_405202321) 
		(stored ?goods_405202320 ?level_405202321) 
		(stored ?goods_405202322 ?level_405202323)
	)
)

(:action act_act_tpp-propositional_302116_302748
	:parameters ( ?level_591052674 - level ?level_591052676 - level ?level_591052678 - level ?truck_591052677 - truck ?goods_591052675 - goods)
	:precondition (and 
			(loaded ?goods_591052675 ?truck_591052677 ?level_591052676) 
			(loaded ?goods_591052675 ?truck_591052677 ?level_591052678) 
			(next ?level_591052674 ?level_591052676)
	)
	:effect (and 
		(not (loaded ?goods_591052675 ?truck_591052677 ?level_591052674)) 
		(next ?level_591052676 ?level_591052678) 
		(stored ?goods_591052675 ?level_591052676)
	)
)

(:action act_act_tpp-propositional_302116_302749
	:parameters ( ?level_591052674 - level ?level_591052676 - level ?level_591052678 - level ?truck_591052677 - truck ?goods_591052675 - goods)
	:precondition (and 
			(loaded ?goods_591052675 ?truck_591052677 ?level_591052676) 
			(loaded ?goods_591052675 ?truck_591052677 ?level_591052678) 
			(next ?level_591052674 ?level_591052676)
	)
	:effect (and 
		(loaded ?goods_591052675 ?truck_591052677 ?level_591052674) 
		(next ?level_591052674 ?level_591052678) 
		(next ?level_591052676 ?level_591052678) 
		(next ?level_591052678 ?level_591052676) 
		(next ?level_591052678 ?level_591052674) 
		(not (stored ?goods_591052675 ?level_591052678)) 
		(stored ?goods_591052675 ?level_591052676)
	)
)

(:action act_act_tpp-propositional_302117_302750
	:parameters ( ?level_238237747 - level ?goods_238237751 - goods ?level_238237750 - level ?truck_238237749 - truck ?goods_238237748 - goods)
	:precondition (and 
			(loaded ?goods_238237748 ?truck_238237749 ?level_238237747) 
			(loaded ?goods_238237751 ?truck_238237749 ?level_238237750) 
			(next ?level_238237750 ?level_238237747) 
			(stored ?goods_238237748 ?level_238237747)
	)
	:effect (and 
		(loaded ?goods_238237751 ?truck_238237749 ?level_238237747) 
		(loaded ?goods_238237748 ?truck_238237749 ?level_238237750) 
		(stored ?goods_238237748 ?level_238237750)
	)
)

(:action act_act_tpp-propositional_302118_302751
	:parameters ( ?truck_464366661 - truck ?level_464366662 - level ?goods_464366660 - goods ?level_464366658 - level ?level_464366659 - level)
	:precondition (and 
			(loaded ?goods_464366660 ?truck_464366661 ?level_464366659) 
			(next ?level_464366662 ?level_464366659) 
			(next ?level_464366658 ?level_464366662) 
			(stored ?goods_464366660 ?level_464366659)
	)
	:effect (and 
		(loaded ?goods_464366660 ?truck_464366661 ?level_464366662) 
		(next ?level_464366658 ?level_464366659) 
		(not (stored ?goods_464366660 ?level_464366662))
	)
)

(:action act_act_tpp-propositional_302119_302752
	:parameters ( ?market_19811382 - market ?level_19811381 - level ?level_19811378 - level ?truck_19811380 - truck ?goods_19811379 - goods)
	:precondition (and 
			(loaded ?goods_19811379 ?truck_19811380 ?level_19811381) 
			(ready-to-load ?goods_19811379 ?market_19811382 ?level_19811381) 
			(stored ?goods_19811379 ?level_19811378)
	)
	:effect (and 
		(not (loaded ?goods_19811379 ?truck_19811380 ?level_19811378)) 
		(next ?level_19811378 ?level_19811381) 
		(not (ready-to-load ?goods_19811379 ?market_19811382 ?level_19811378))
	)
)

(:action act_act_tpp-propositional_302119_302753
	:parameters ( ?market_19811382 - market ?level_19811381 - level ?level_19811378 - level ?truck_19811380 - truck ?goods_19811379 - goods)
	:precondition (and 
			(loaded ?goods_19811379 ?truck_19811380 ?level_19811381) 
			(ready-to-load ?goods_19811379 ?market_19811382 ?level_19811381) 
			(stored ?goods_19811379 ?level_19811378)
	)
	:effect (and 
		(not (loaded ?goods_19811379 ?truck_19811380 ?level_19811378)) 
		(next ?level_19811381 ?level_19811378) 
		(ready-to-load ?goods_19811379 ?market_19811382 ?level_19811378) 
		(stored ?goods_19811379 ?level_19811381)
	)
)

(:action act_act_tpp-propositional_302120_302754
	:parameters ( ?level_407859445 - level ?level_407859448 - level ?goods_407859449 - goods ?goods_407859446 - goods ?truck_407859447 - truck)
	:precondition (and 
			(loaded ?goods_407859446 ?truck_407859447 ?level_407859448) 
			(stored ?goods_407859449 ?level_407859448) 
			(stored ?goods_407859449 ?level_407859445)
	)
	:effect (and 
		(loaded ?goods_407859446 ?truck_407859447 ?level_407859445) 
		(loaded ?goods_407859449 ?truck_407859447 ?level_407859445) 
		(next ?level_407859448 ?level_407859445) 
		(not (stored ?goods_407859446 ?level_407859445))
	)
)

(:action act_act_tpp-propositional_302120_302755
	:parameters ( ?level_407859445 - level ?goods_407859449 - goods ?level_407859448 - level ?goods_407859446 - goods ?truck_407859447 - truck)
	:precondition (and 
			(loaded ?goods_407859446 ?truck_407859447 ?level_407859448) 
			(stored ?goods_407859449 ?level_407859448) 
			(stored ?goods_407859449 ?level_407859445)
	)
	:effect (and 
		(loaded ?goods_407859449 ?truck_407859447 ?level_407859445) 
		(loaded ?goods_407859449 ?truck_407859447 ?level_407859448) 
		(stored ?goods_407859446 ?level_407859445)
	)
)

(:action act_act_tpp-propositional_302121_302756
	:parameters ( ?truck_124755172 - truck ?place_124755168 - place ?goods_124755169 - goods ?level_124755173 - level ?truck_124755170 - truck ?place_124755171 - place)
	:precondition (and 
			(at ?truck_124755170 ?place_124755171) 
			(at ?truck_124755172 ?place_124755168) 
			(loaded ?goods_124755169 ?truck_124755170 ?level_124755173) 
			(stored ?goods_124755169 ?level_124755173)
	)
	:effect (and 
		(at ?truck_124755170 ?place_124755168) 
		(at ?truck_124755172 ?place_124755171) 
		(loaded ?goods_124755169 ?truck_124755172 ?level_124755173)
	)
)

(:action act_act_tpp-propositional_302122_302757
	:parameters ( ?level_426511310 - level ?goods_426511314 - goods ?goods_426511313 - goods ?level_426511311 - level ?truck_426511312 - truck)
	:precondition (and 
			(loaded ?goods_426511313 ?truck_426511312 ?level_426511310) 
			(loaded ?goods_426511314 ?truck_426511312 ?level_426511311) 
			(stored ?goods_426511314 ?level_426511310)
	)
	:effect (and 
		(loaded ?goods_426511314 ?truck_426511312 ?level_426511310) 
		(loaded ?goods_426511313 ?truck_426511312 ?level_426511311) 
		(next ?level_426511310 ?level_426511311) 
		(not (stored ?goods_426511313 ?level_426511311)) 
		(stored ?goods_426511314 ?level_426511311)
	)
)

(:action act_act_tpp-propositional_302122_302758
	:parameters ( ?level_426511310 - level ?goods_426511314 - goods ?goods_426511313 - goods ?truck_426511312 - truck ?level_426511311 - level)
	:precondition (and 
			(loaded ?goods_426511313 ?truck_426511312 ?level_426511310) 
			(loaded ?goods_426511314 ?truck_426511312 ?level_426511311) 
			(stored ?goods_426511314 ?level_426511310)
	)
	:effect (and 
		(not (loaded ?goods_426511314 ?truck_426511312 ?level_426511310)) 
		(not (loaded ?goods_426511313 ?truck_426511312 ?level_426511311)) 
		(next ?level_426511310 ?level_426511311) 
		(not (stored ?goods_426511313 ?level_426511310))
	)
)

(:action act_act_tpp-propositional_302122_302759
	:parameters ( ?level_426511310 - level ?goods_426511314 - goods ?goods_426511313 - goods ?level_426511311 - level ?truck_426511312 - truck)
	:precondition (and 
			(loaded ?goods_426511313 ?truck_426511312 ?level_426511310) 
			(loaded ?goods_426511314 ?truck_426511312 ?level_426511311) 
			(stored ?goods_426511314 ?level_426511310)
	)
	:effect (and 
		(loaded ?goods_426511314 ?truck_426511312 ?level_426511310) 
		(not (loaded ?goods_426511313 ?truck_426511312 ?level_426511311))
	)
)

(:action act_act_tpp-propositional_302123_302760
	:parameters ( ?goods_291973310 - goods ?level_291973309 - level ?level_291973308 - level ?truck_291973307 - truck ?market_291973306 - market ?level_291973311 - level)
	:precondition (and 
			(loaded ?goods_291973310 ?truck_291973307 ?level_291973311) 
			(next ?level_291973311 ?level_291973308) 
			(ready-to-load ?goods_291973310 ?market_291973306 ?level_291973309) 
			(stored ?goods_291973310 ?level_291973308) 
			(stored ?goods_291973310 ?level_291973311)
	)
	:effect (and 
		(not (loaded ?goods_291973310 ?truck_291973307 ?level_291973308)) 
		(next ?level_291973309 ?level_291973311) 
		(not (ready-to-load ?goods_291973310 ?market_291973306 ?level_291973311))
	)
)

(:action act_act_tpp-propositional_302124_302761
	:parameters ( ?market_338578352 - market ?level_338578349 - level ?level_338578351 - level ?goods_338578353 - goods ?truck_338578350 - truck)
	:precondition (and 
			(loaded ?goods_338578353 ?truck_338578350 ?level_338578349) 
			(next ?level_338578349 ?level_338578351) 
			(ready-to-load ?goods_338578353 ?market_338578352 ?level_338578349) 
			(stored ?goods_338578353 ?level_338578351) 
			(stored ?goods_338578353 ?level_338578349)
	)
	:effect (and 
		(not (loaded ?goods_338578353 ?truck_338578350 ?level_338578351)) 
		(next ?level_338578351 ?level_338578349) 
		(not (ready-to-load ?goods_338578353 ?market_338578352 ?level_338578351))
	)
)

(:action act_act_tpp-propositional_302125_302762
	:parameters ( ?level_410340237 - level ?market_410340238 - market ?goods_410340239 - goods ?level_410340240 - level ?truck_410340236 - truck ?goods_410340235 - goods)
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

(:action act_act_tpp-propositional_302125_302763
	:parameters ( ?level_410340237 - level ?market_410340238 - market ?goods_410340239 - goods ?level_410340240 - level ?truck_410340236 - truck ?goods_410340235 - goods)
	:precondition (and 
			(loaded ?goods_410340235 ?truck_410340236 ?level_410340237) 
			(next ?level_410340237 ?level_410340240) 
			(ready-to-load ?goods_410340239 ?market_410340238 ?level_410340237)
	)
	:effect (and 
		(not (loaded ?goods_410340239 ?truck_410340236 ?level_410340237)) 
		(not (loaded ?goods_410340235 ?truck_410340236 ?level_410340240)) 
		(not (loaded ?goods_410340239 ?truck_410340236 ?level_410340240)) 
		(next ?level_410340240 ?level_410340237) 
		(ready-to-load ?goods_410340235 ?market_410340238 ?level_410340237) 
		(not (ready-to-load ?goods_410340235 ?market_410340238 ?level_410340240)) 
		(stored ?goods_410340235 ?level_410340237) 
		(stored ?goods_410340239 ?level_410340237)
	)
)

(:action act_act_tpp-propositional_302125_302764
	:parameters ( ?level_410340237 - level ?market_410340238 - market ?goods_410340239 - goods ?level_410340240 - level ?truck_410340236 - truck ?goods_410340235 - goods)
	:precondition (and 
			(loaded ?goods_410340235 ?truck_410340236 ?level_410340237) 
			(next ?level_410340237 ?level_410340240) 
			(ready-to-load ?goods_410340239 ?market_410340238 ?level_410340237)
	)
	:effect (and 
		(loaded ?goods_410340239 ?truck_410340236 ?level_410340237) 
		(loaded ?goods_410340239 ?truck_410340236 ?level_410340240) 
		(next ?level_410340240 ?level_410340237) 
		(ready-to-load ?goods_410340235 ?market_410340238 ?level_410340237) 
		(stored ?goods_410340235 ?level_410340237)
	)
)

(:action act_act_tpp-propositional_302126_302765
	:parameters ( ?level_183913313 - level ?level_183913314 - level ?truck_183913310 - truck ?goods_183913311 - goods ?level_183913312 - level)
	:precondition (and 
			(loaded ?goods_183913311 ?truck_183913310 ?level_183913313) 
			(next ?level_183913314 ?level_183913313) 
			(stored ?goods_183913311 ?level_183913313) 
			(stored ?goods_183913311 ?level_183913312)
	)
	:effect (and 
		(loaded ?goods_183913311 ?truck_183913310 ?level_183913314) 
		(loaded ?goods_183913311 ?truck_183913310 ?level_183913312) 
		(next ?level_183913313 ?level_183913314)
	)
)

(:action act_act_tpp-propositional_302127_302766
	:parameters ( ?level_378657518 - level ?level_378657519 - level ?goods_378657523 - goods ?truck_378657521 - truck ?level_378657520 - level ?level_378657522 - level)
	:precondition (and 
			(loaded ?goods_378657523 ?truck_378657521 ?level_378657520) 
			(next ?level_378657518 ?level_378657520) 
			(stored ?goods_378657523 ?level_378657519) 
			(stored ?goods_378657523 ?level_378657522)
	)
	:effect (and 
		(loaded ?goods_378657523 ?truck_378657521 ?level_378657519) 
		(loaded ?goods_378657523 ?truck_378657521 ?level_378657518) 
		(next ?level_378657520 ?level_378657522)
	)
)

(:action act_act_tpp-propositional_302128_302767
	:parameters ( ?level_466235347 - level ?level_466235348 - level ?goods_466235346 - goods ?level_466235350 - level ?truck_466235349 - truck)
	:precondition (and 
			(loaded ?goods_466235346 ?truck_466235349 ?level_466235348) 
			(next ?level_466235347 ?level_466235350) 
			(stored ?goods_466235346 ?level_466235348) 
			(stored ?goods_466235346 ?level_466235347)
	)
	:effect (and 
		(loaded ?goods_466235346 ?truck_466235349 ?level_466235350) 
		(loaded ?goods_466235346 ?truck_466235349 ?level_466235347) 
		(next ?level_466235348 ?level_466235347)
	)
)

(:action act_act_tpp-propositional_302129_302768
	:parameters ( ?truck_486801557 - truck ?level_486801558 - level ?goods_486801559 - goods ?goods_486801556 - goods ?market_486801560 - market ?level_486801561 - level)
	:precondition (and 
			(loaded ?goods_486801559 ?truck_486801557 ?level_486801561) 
			(next ?level_486801558 ?level_486801561) 
			(ready-to-load ?goods_486801556 ?market_486801560 ?level_486801561) 
			(ready-to-load ?goods_486801559 ?market_486801560 ?level_486801561) 
			(stored ?goods_486801559 ?level_486801558)
	)
	:effect (and 
		(not (loaded ?goods_486801556 ?truck_486801557 ?level_486801561)) 
		(ready-to-load ?goods_486801559 ?market_486801560 ?level_486801558)
	)
)

(:action act_act_tpp-propositional_302130_302769
	:parameters ( ?level_272858685 - level ?level_272858684 - level ?goods_272858688 - goods ?place_272858687 - place ?truck_272858683 - truck ?place_272858686 - place)
	:precondition (and 
			(connected ?place_272858686 ?place_272858687) 
			(loaded ?goods_272858688 ?truck_272858683 ?level_272858684) 
			(next ?level_272858685 ?level_272858684) 
			(stored ?goods_272858688 ?level_272858684)
	)
	:effect (and 
		(at ?truck_272858683 ?place_272858686) 
		(connected ?place_272858687 ?place_272858686) 
		(next ?level_272858684 ?level_272858685) 
		(stored ?goods_272858688 ?level_272858685)
	)
)

(:action act_act_tpp-propositional_302131_302770
	:parameters ( ?level_136445319 - level ?level_136445318 - level ?level_136445317 - level ?truck_136445315 - truck ?goods_136445316 - goods)
	:precondition (and 
			(loaded ?goods_136445316 ?truck_136445315 ?level_136445319) 
			(next ?level_136445318 ?level_136445319) 
			(next ?level_136445318 ?level_136445317)
	)
	:effect (and 
		(not (loaded ?goods_136445316 ?truck_136445315 ?level_136445317)) 
		(loaded ?goods_136445316 ?truck_136445315 ?level_136445318) 
		(next ?level_136445319 ?level_136445318) 
		(not (stored ?goods_136445316 ?level_136445318))
	)
)

(:action act_act_tpp-propositional_302131_302771
	:parameters ( ?level_136445319 - level ?level_136445318 - level ?level_136445317 - level ?truck_136445315 - truck ?goods_136445316 - goods)
	:precondition (and 
			(loaded ?goods_136445316 ?truck_136445315 ?level_136445319) 
			(next ?level_136445318 ?level_136445319) 
			(next ?level_136445318 ?level_136445317)
	)
	:effect (and 
		(not (loaded ?goods_136445316 ?truck_136445315 ?level_136445318)) 
		(next ?level_136445319 ?level_136445317) 
		(stored ?goods_136445316 ?level_136445318) 
		(stored ?goods_136445316 ?level_136445319)
	)
)

(:action act_act_tpp-propositional_302132_302772
	:parameters ( ?level_57559627 - level ?level_57559625 - level ?level_57559626 - level ?goods_57559628 - goods ?truck_57559624 - truck)
	:precondition (and 
			(loaded ?goods_57559628 ?truck_57559624 ?level_57559625) 
			(loaded ?goods_57559628 ?truck_57559624 ?level_57559627) 
			(next ?level_57559627 ?level_57559626) 
			(next ?level_57559627 ?level_57559625) 
			(stored ?goods_57559628 ?level_57559625) 
			(stored ?goods_57559628 ?level_57559626)
	)
	:effect (and 
		(loaded ?goods_57559628 ?truck_57559624 ?level_57559626) 
		(next ?level_57559625 ?level_57559627)
	)
)

(:action act_act_tpp-propositional_302133_302773
	:parameters ( ?level_343955499 - level ?level_343955502 - level ?level_343955501 - level ?goods_343955503 - goods ?level_343955500 - level ?truck_343955498 - truck)
	:precondition (and 
			(loaded ?goods_343955503 ?truck_343955498 ?level_343955502) 
			(loaded ?goods_343955503 ?truck_343955498 ?level_343955501) 
			(next ?level_343955500 ?level_343955499) 
			(next ?level_343955500 ?level_343955501)
	)
	:effect (and 
		(not (loaded ?goods_343955503 ?truck_343955498 ?level_343955500)) 
		(next ?level_343955501 ?level_343955499) 
		(not (stored ?goods_343955503 ?level_343955502)) 
		(not (stored ?goods_343955503 ?level_343955501))
	)
)

(:action act_act_tpp-propositional_302134_302774
	:parameters ( ?place_457908524 - place ?goods_457908523 - goods ?place_457908522 - place ?level_457908527 - level ?level_457908525 - level ?truck_457908526 - truck)
	:precondition (and 
			(at ?truck_457908526 ?place_457908524) 
			(connected ?place_457908522 ?place_457908524) 
			(loaded ?goods_457908523 ?truck_457908526 ?level_457908525) 
			(next ?level_457908527 ?level_457908525)
	)
	:effect (and 
		(connected ?place_457908524 ?place_457908522) 
		(not (loaded ?goods_457908523 ?truck_457908526 ?level_457908527)) 
		(next ?level_457908525 ?level_457908527) 
		(stored ?goods_457908523 ?level_457908527)
	)
)

(:action act_act_tpp-propositional_302134_302775
	:parameters ( ?place_457908524 - place ?place_457908522 - place ?goods_457908523 - goods ?level_457908527 - level ?level_457908525 - level ?truck_457908526 - truck)
	:precondition (and 
			(at ?truck_457908526 ?place_457908524) 
			(connected ?place_457908522 ?place_457908524) 
			(loaded ?goods_457908523 ?truck_457908526 ?level_457908525) 
			(next ?level_457908527 ?level_457908525)
	)
	:effect (and 
		(connected ?place_457908524 ?place_457908522) 
		(loaded ?goods_457908523 ?truck_457908526 ?level_457908527) 
		(next ?level_457908525 ?level_457908527)
	)
)

(:action act_act_tpp-propositional_302135_302776
	:parameters ( ?truck_48904238 - truck ?truck_48904237 - truck ?goods_48904240 - goods ?level_48904236 - level ?place_48904239 - place ?level_48904235 - level)
	:precondition (and 
			(at ?truck_48904238 ?place_48904239) 
			(loaded ?goods_48904240 ?truck_48904237 ?level_48904235) 
			(next ?level_48904235 ?level_48904236) 
			(stored ?goods_48904240 ?level_48904235) 
			(stored ?goods_48904240 ?level_48904236)
	)
	:effect (and 
		(at ?truck_48904237 ?place_48904239) 
		(loaded ?goods_48904240 ?truck_48904238 ?level_48904235) 
		(next ?level_48904236 ?level_48904235)
	)
)

(:action act_act_tpp-propositional_302136_302777
	:parameters ( ?level_552408717 - level ?market_552408716 - market ?goods_552408718 - goods ?goods_552408714 - goods ?truck_552408715 - truck ?level_552408713 - level)
	:precondition (and 
			(loaded ?goods_552408718 ?truck_552408715 ?level_552408717) 
			(loaded ?goods_552408714 ?truck_552408715 ?level_552408717) 
			(ready-to-load ?goods_552408714 ?market_552408716 ?level_552408713)
	)
	:effect (and 
		(loaded ?goods_552408718 ?truck_552408715 ?level_552408713) 
		(not (loaded ?goods_552408714 ?truck_552408715 ?level_552408713)) 
		(next ?level_552408713 ?level_552408717) 
		(not (ready-to-load ?goods_552408718 ?market_552408716 ?level_552408717)) 
		(ready-to-load ?goods_552408714 ?market_552408716 ?level_552408717) 
		(stored ?goods_552408714 ?level_552408713)
	)
)

(:action act_act_tpp-propositional_302137_302778
	:parameters ( ?level_92931823 - level ?level_92931824 - level ?truck_92931826 - truck ?goods_92931825 - goods ?market_92931828 - market ?level_92931827 - level)
	:precondition (and 
			(loaded ?goods_92931825 ?truck_92931826 ?level_92931827) 
			(ready-to-load ?goods_92931825 ?market_92931828 ?level_92931827) 
			(stored ?goods_92931825 ?level_92931824) 
			(stored ?goods_92931825 ?level_92931823)
	)
	:effect (and 
		(not (loaded ?goods_92931825 ?truck_92931826 ?level_92931823)) 
		(ready-to-load ?goods_92931825 ?market_92931828 ?level_92931824) 
		(stored ?goods_92931825 ?level_92931827)
	)
)

(:action act_act_tpp-propositional_302138_302779
	:parameters ( ?truck_381401775 - truck ?level_381401772 - level ?goods_381401773 - goods ?goods_381401771 - goods ?level_381401774 - level)
	:precondition (and 
			(loaded ?goods_381401771 ?truck_381401775 ?level_381401774) 
			(loaded ?goods_381401773 ?truck_381401775 ?level_381401772) 
			(next ?level_381401774 ?level_381401772) 
			(stored ?goods_381401773 ?level_381401774)
	)
	:effect (and 
		(loaded ?goods_381401771 ?truck_381401775 ?level_381401772) 
		(stored ?goods_381401771 ?level_381401774) 
		(stored ?goods_381401773 ?level_381401772)
	)
)

(:action act_act_tpp-propositional_302139_302780
	:parameters ( ?level_174566817 - level ?level_174566816 - level ?goods_174566815 - goods ?truck_174566818 - truck ?goods_174566819 - goods)
	:precondition (and 
			(loaded ?goods_174566815 ?truck_174566818 ?level_174566817) 
			(stored ?goods_174566815 ?level_174566817) 
			(stored ?goods_174566819 ?level_174566816)
	)
	:effect (and 
		(loaded ?goods_174566819 ?truck_174566818 ?level_174566816) 
		(loaded ?goods_174566815 ?truck_174566818 ?level_174566816) 
		(next ?level_174566817 ?level_174566816) 
		(stored ?goods_174566819 ?level_174566817) 
		(stored ?goods_174566815 ?level_174566816)
	)
)

(:action act_act_tpp-propositional_302140_302781
	:parameters ( ?level_136714317 - level ?level_136714319 - level ?level_136714318 - level)
	:precondition (and 
			(next ?level_136714319 ?level_136714317) 
			(next ?level_136714319 ?level_136714318) 
			(next ?level_136714318 ?level_136714317)
	)
	:effect (and 
		(next ?level_136714317 ?level_136714318) 
		(next ?level_136714318 ?level_136714319) 
		(next ?level_136714317 ?level_136714319)
	)
)

(:action act_act_tpp-propositional_302141_302782
	:parameters ( ?level_180850459 - level ?level_180850457 - level ?truck_180850458 - truck ?level_180850462 - level ?goods_180850460 - goods ?level_180850461 - level)
	:precondition (and 
			(loaded ?goods_180850460 ?truck_180850458 ?level_180850462) 
			(loaded ?goods_180850460 ?truck_180850458 ?level_180850459) 
			(next ?level_180850462 ?level_180850461) 
			(next ?level_180850462 ?level_180850457)
	)
	:effect (and 
		(loaded ?goods_180850460 ?truck_180850458 ?level_180850457) 
		(next ?level_180850461 ?level_180850462) 
		(next ?level_180850459 ?level_180850461)
	)
)

(:action act_act_tpp-propositional_302142_302783
	:parameters ( ?level_193822931 - level ?level_193822933 - level ?level_193822929 - level ?goods_193822930 - goods ?truck_193822932 - truck)
	:precondition (and 
			(loaded ?goods_193822930 ?truck_193822932 ?level_193822933) 
			(loaded ?goods_193822930 ?truck_193822932 ?level_193822931) 
			(next ?level_193822931 ?level_193822933) 
			(next ?level_193822931 ?level_193822929)
	)
	:effect (and 
		(loaded ?goods_193822930 ?truck_193822932 ?level_193822929) 
		(next ?level_193822933 ?level_193822931) 
		(next ?level_193822929 ?level_193822931)
	)
)

(:action act_act_tpp-propositional_302143_302784
	:parameters ( ?level_531243436 - level ?truck_531243435 - truck ?goods_531243439 - goods ?level_531243438 - level ?level_531243437 - level)
	:precondition (and 
			(loaded ?goods_531243439 ?truck_531243435 ?level_531243436) 
			(next ?level_531243436 ?level_531243438) 
			(stored ?goods_531243439 ?level_531243436) 
			(stored ?goods_531243439 ?level_531243437)
	)
	:effect (and 
		(loaded ?goods_531243439 ?truck_531243435 ?level_531243437) 
		(next ?level_531243438 ?level_531243437) 
		(next ?level_531243438 ?level_531243436) 
		(stored ?goods_531243439 ?level_531243438)
	)
)

(:action act_act_tpp-propositional_302144_302785
	:parameters ( ?goods_144216397 - goods ?goods_144216396 - goods ?level_144216398 - level ?level_144216395 - level)
	:precondition (and 
			(stored ?goods_144216396 ?level_144216398) 
			(stored ?goods_144216397 ?level_144216395)
	)
	:effect (and 
		(stored ?goods_144216397 ?level_144216398) 
		(stored ?goods_144216396 ?level_144216395)
	)
)

(:action act_act_tpp-propositional_302145_302786
	:parameters ( ?level_146700953 - level ?truck_146700955 - truck ?truck_146700954 - truck ?level_146700950 - level ?goods_146700952 - goods ?place_146700951 - place)
	:precondition (and 
			(at ?truck_146700954 ?place_146700951) 
			(loaded ?goods_146700952 ?truck_146700955 ?level_146700953) 
			(next ?level_146700953 ?level_146700950) 
			(stored ?goods_146700952 ?level_146700953)
	)
	:effect (and 
		(at ?truck_146700955 ?place_146700951) 
		(loaded ?goods_146700952 ?truck_146700954 ?level_146700953) 
		(next ?level_146700950 ?level_146700953)
	)
)

(:action act_act_tpp-propositional_302146_302787
	:parameters ( ?level_151562149 - level ?level_151562150 - level ?level_151562151 - level)
	:precondition (and 
			(next ?level_151562149 ?level_151562150) 
			(next ?level_151562149 ?level_151562151)
	)
	:effect (and 
		(next ?level_151562151 ?level_151562149) 
		(next ?level_151562150 ?level_151562149) 
		(next ?level_151562151 ?level_151562150) 
		(next ?level_151562150 ?level_151562151)
	)
)

(:action act_act_tpp-propositional_302147_302788
	:parameters ( ?level_271011020 - level ?level_271011021 - level ?level_271011022 - level ?level_271011019 - level)
	:precondition (and 
			(next ?level_271011021 ?level_271011019) 
			(next ?level_271011022 ?level_271011020)
	)
	:effect (and 
		(next ?level_271011021 ?level_271011022) 
		(next ?level_271011022 ?level_271011021) 
		(next ?level_271011020 ?level_271011019) 
		(next ?level_271011019 ?level_271011020)
	)
)

(:action act_act_tpp-propositional_302148_302789
	:parameters ( ?level_300732604 - level ?level_300732603 - level ?level_300732605 - level)
	:precondition (and 
			(next ?level_300732605 ?level_300732604) 
			(next ?level_300732603 ?level_300732604)
	)
	:effect (and 
		(next ?level_300732603 ?level_300732605) 
		(next ?level_300732604 ?level_300732605) 
		(next ?level_300732605 ?level_300732603) 
		(next ?level_300732604 ?level_300732603)
	)
)

(:action act_act_tpp-propositional_302149_302790
	:parameters ( ?level_312199798 - level ?place_312199799 - place ?goods_312199800 - goods ?truck_312199801 - truck ?level_312199802 - level ?truck_312199803 - truck)
	:precondition (and 
			(at ?truck_312199801 ?place_312199799) 
			(loaded ?goods_312199800 ?truck_312199803 ?level_312199798) 
			(next ?level_312199802 ?level_312199798) 
			(stored ?goods_312199800 ?level_312199802)
	)
	:effect (and 
		(at ?truck_312199803 ?place_312199799) 
		(not (loaded ?goods_312199800 ?truck_312199801 ?level_312199798)) 
		(loaded ?goods_312199800 ?truck_312199801 ?level_312199802) 
		(not (loaded ?goods_312199800 ?truck_312199803 ?level_312199802)) 
		(stored ?goods_312199800 ?level_312199798)
	)
)

(:action act_act_tpp-propositional_302149_302791
	:parameters ( ?level_312199798 - level ?place_312199799 - place ?goods_312199800 - goods ?truck_312199801 - truck ?level_312199802 - level ?truck_312199803 - truck)
	:precondition (and 
			(at ?truck_312199801 ?place_312199799) 
			(loaded ?goods_312199800 ?truck_312199803 ?level_312199798) 
			(next ?level_312199802 ?level_312199798) 
			(stored ?goods_312199800 ?level_312199802)
	)
	:effect (and 
		(at ?truck_312199803 ?place_312199799) 
		(loaded ?goods_312199800 ?truck_312199801 ?level_312199798) 
		(loaded ?goods_312199800 ?truck_312199801 ?level_312199802) 
		(next ?level_312199798 ?level_312199802) 
		(not (stored ?goods_312199800 ?level_312199798))
	)
)

(:action act_act_tpp-propositional_302150_302792
	:parameters ( ?truck_368843414 - truck ?place_368843413 - place ?truck_368843410 - truck ?goods_368843412 - goods ?level_368843411 - level ?level_368843415 - level)
	:precondition (and 
			(at ?truck_368843414 ?place_368843413) 
			(loaded ?goods_368843412 ?truck_368843410 ?level_368843415) 
			(next ?level_368843411 ?level_368843415) 
			(stored ?goods_368843412 ?level_368843415)
	)
	:effect (and 
		(at ?truck_368843410 ?place_368843413) 
		(not (loaded ?goods_368843412 ?truck_368843414 ?level_368843411)) 
		(loaded ?goods_368843412 ?truck_368843410 ?level_368843411) 
		(next ?level_368843415 ?level_368843411)
	)
)

(:action act_act_tpp-propositional_302150_302793
	:parameters ( ?truck_368843414 - truck ?truck_368843410 - truck ?place_368843413 - place ?goods_368843412 - goods ?level_368843411 - level ?level_368843415 - level)
	:precondition (and 
			(at ?truck_368843414 ?place_368843413) 
			(loaded ?goods_368843412 ?truck_368843410 ?level_368843415) 
			(next ?level_368843411 ?level_368843415) 
			(stored ?goods_368843412 ?level_368843415)
	)
	:effect (and 
		(at ?truck_368843410 ?place_368843413) 
		(loaded ?goods_368843412 ?truck_368843414 ?level_368843411) 
		(loaded ?goods_368843412 ?truck_368843414 ?level_368843415) 
		(next ?level_368843415 ?level_368843411) 
		(stored ?goods_368843412 ?level_368843411)
	)
)

(:action act_act_tpp-propositional_302150_302794
	:parameters ( ?truck_368843414 - truck ?place_368843413 - place ?truck_368843410 - truck ?goods_368843412 - goods ?level_368843411 - level ?level_368843415 - level)
	:precondition (and 
			(at ?truck_368843414 ?place_368843413) 
			(loaded ?goods_368843412 ?truck_368843410 ?level_368843415) 
			(next ?level_368843411 ?level_368843415) 
			(stored ?goods_368843412 ?level_368843415)
	)
	:effect (and 
		(not (at ?truck_368843410 ?place_368843413)) 
		(not (loaded ?goods_368843412 ?truck_368843414 ?level_368843411)) 
		(next ?level_368843415 ?level_368843411)
	)
)

(:action act_act_tpp-propositional_302151_302795
	:parameters ( ?goods_138898684 - goods ?truck_138898685 - truck ?level_138898686 - level ?market_138898683 - market ?level_138898682 - level)
	:precondition (and 
			(loaded ?goods_138898684 ?truck_138898685 ?level_138898682) 
			(next ?level_138898682 ?level_138898686) 
			(ready-to-load ?goods_138898684 ?market_138898683 ?level_138898686) 
			(stored ?goods_138898684 ?level_138898682)
	)
	:effect (and 
		(loaded ?goods_138898684 ?truck_138898685 ?level_138898686) 
		(ready-to-load ?goods_138898684 ?market_138898683 ?level_138898682)
	)
)

(:action act_act_tpp-propositional_302151_302796
	:parameters ( ?goods_138898684 - goods ?truck_138898685 - truck ?level_138898686 - level ?market_138898683 - market ?level_138898682 - level)
	:precondition (and 
			(loaded ?goods_138898684 ?truck_138898685 ?level_138898682) 
			(next ?level_138898682 ?level_138898686) 
			(ready-to-load ?goods_138898684 ?market_138898683 ?level_138898686) 
			(stored ?goods_138898684 ?level_138898682)
	)
	:effect (and 
		(loaded ?goods_138898684 ?truck_138898685 ?level_138898686) 
		(next ?level_138898686 ?level_138898682) 
		(not (ready-to-load ?goods_138898684 ?market_138898683 ?level_138898682))
	)
)

(:action act_act_tpp-propositional_302152_302797
	:parameters ( ?level_70167868 - level ?level_70167867 - level ?truck_70167866 - truck ?goods_70167870 - goods ?level_70167869 - level)
	:precondition (and 
			(loaded ?goods_70167870 ?truck_70167866 ?level_70167868) 
			(loaded ?goods_70167870 ?truck_70167866 ?level_70167867) 
			(next ?level_70167869 ?level_70167867) 
			(next ?level_70167869 ?level_70167868)
	)
	:effect (and 
		(not (loaded ?goods_70167870 ?truck_70167866 ?level_70167869)) 
		(next ?level_70167868 ?level_70167867)
	)
)

(:action act_act_tpp-propositional_302153_302798
	:parameters ( ?goods_373708747 - goods ?level_373708745 - level ?level_373708746 - level ?truck_373708748 - truck ?level_373708749 - level)
	:precondition (and 
			(loaded ?goods_373708747 ?truck_373708748 ?level_373708749) 
			(loaded ?goods_373708747 ?truck_373708748 ?level_373708746) 
			(next ?level_373708745 ?level_373708746) 
			(next ?level_373708749 ?level_373708746)
	)
	:effect (and 
		(not (loaded ?goods_373708747 ?truck_373708748 ?level_373708745)) 
		(next ?level_373708746 ?level_373708749)
	)
)

(:action act_act_tpp-propositional_302154_302799
	:parameters ( ?goods_581905245 - goods ?truck_581905244 - truck ?level_581905246 - level ?goods_581905247 - goods ?market_581905242 - market ?level_581905243 - level)
	:precondition (and 
			(loaded ?goods_581905245 ?truck_581905244 ?level_581905243) 
			(next ?level_581905243 ?level_581905246) 
			(ready-to-load ?goods_581905245 ?market_581905242 ?level_581905246) 
			(ready-to-load ?goods_581905245 ?market_581905242 ?level_581905243) 
			(stored ?goods_581905247 ?level_581905243) 
			(stored ?goods_581905245 ?level_581905246)
	)
	:effect (and 
		(loaded ?goods_581905245 ?truck_581905244 ?level_581905246) 
		(ready-to-load ?goods_581905247 ?market_581905242 ?level_581905243)
	)
)

(:action act_act_tpp-propositional_302155_302800
	:parameters ( ?level_126184221 - level ?truck_126184219 - truck ?truck_126184218 - truck ?place_126184220 - place ?goods_126184222 - goods)
	:precondition (and 
			(at ?truck_126184218 ?place_126184220) 
			(loaded ?goods_126184222 ?truck_126184219 ?level_126184221)
	)
	:effect (and 
		(not (at ?truck_126184219 ?place_126184220)) 
		(not (loaded ?goods_126184222 ?truck_126184218 ?level_126184221)) 
		(not (stored ?goods_126184222 ?level_126184221))
	)
)

(:action act_act_tpp-propositional_302155_302801
	:parameters ( ?level_126184221 - level ?truck_126184219 - truck ?truck_126184218 - truck ?place_126184220 - place ?goods_126184222 - goods)
	:precondition (and 
			(at ?truck_126184218 ?place_126184220) 
			(loaded ?goods_126184222 ?truck_126184219 ?level_126184221)
	)
	:effect (and 
		(at ?truck_126184219 ?place_126184220) 
		(loaded ?goods_126184222 ?truck_126184218 ?level_126184221) 
		(stored ?goods_126184222 ?level_126184221)
	)
)

(:action act_act_tpp-propositional_302155_302802
	:parameters ( ?level_126184221 - level ?truck_126184219 - truck ?truck_126184218 - truck ?place_126184220 - place ?goods_126184222 - goods)
	:precondition (and 
			(at ?truck_126184218 ?place_126184220) 
			(loaded ?goods_126184222 ?truck_126184219 ?level_126184221)
	)
	:effect (and 
		(at ?truck_126184219 ?place_126184220) 
		(not (loaded ?goods_126184222 ?truck_126184218 ?level_126184221)) 
		(stored ?goods_126184222 ?level_126184221)
	)
)

(:action act_act_tpp-propositional_302155_302803
	:parameters ( ?level_126184221 - level ?truck_126184219 - truck ?truck_126184218 - truck ?place_126184220 - place ?goods_126184222 - goods)
	:precondition (and 
			(at ?truck_126184218 ?place_126184220) 
			(loaded ?goods_126184222 ?truck_126184219 ?level_126184221)
	)
	:effect (and 
		(not (at ?truck_126184219 ?place_126184220)) 
		(loaded ?goods_126184222 ?truck_126184218 ?level_126184221) 
		(stored ?goods_126184222 ?level_126184221)
	)
)

(:action act_act_tpp-propositional_302156_302804
	:parameters ( ?level_242654678 - level ?level_242654680 - level ?goods_242654676 - goods ?goods_242654679 - goods ?truck_242654677 - truck)
	:precondition (and 
			(loaded ?goods_242654679 ?truck_242654677 ?level_242654678) 
			(loaded ?goods_242654676 ?truck_242654677 ?level_242654678) 
			(next ?level_242654680 ?level_242654678) 
			(stored ?goods_242654679 ?level_242654680) 
			(stored ?goods_242654676 ?level_242654678)
	)
	:effect (and 
		(not (loaded ?goods_242654676 ?truck_242654677 ?level_242654680)) 
		(loaded ?goods_242654679 ?truck_242654677 ?level_242654680) 
		(stored ?goods_242654679 ?level_242654678)
	)
)

(:action act_act_tpp-propositional_302157_302805
	:parameters ( ?goods_524934524 - goods ?truck_524934522 - truck ?goods_524934521 - goods ?level_524934525 - level ?level_524934523 - level)
	:precondition (and 
			(loaded ?goods_524934524 ?truck_524934522 ?level_524934523) 
			(loaded ?goods_524934521 ?truck_524934522 ?level_524934525) 
			(next ?level_524934523 ?level_524934525) 
			(stored ?goods_524934521 ?level_524934523) 
			(stored ?goods_524934521 ?level_524934525)
	)
	:effect (and 
		(loaded ?goods_524934524 ?truck_524934522 ?level_524934525) 
		(not (loaded ?goods_524934521 ?truck_524934522 ?level_524934523)) 
		(stored ?goods_524934524 ?level_524934525)
	)
)

(:action act_act_tpp-propositional_302158_302806
	:parameters ( ?goods_263741561 - goods ?level_263741562 - level ?level_263741560 - level ?goods_263741563 - goods ?truck_263741559 - truck)
	:precondition (and 
			(loaded ?goods_263741561 ?truck_263741559 ?level_263741562) 
			(loaded ?goods_263741563 ?truck_263741559 ?level_263741560) 
			(next ?level_263741562 ?level_263741560)
	)
	:effect (and 
		(loaded ?goods_263741561 ?truck_263741559 ?level_263741560) 
		(not (loaded ?goods_263741563 ?truck_263741559 ?level_263741562)) 
		(stored ?goods_263741561 ?level_263741560) 
		(stored ?goods_263741563 ?level_263741562)
	)
)

(:action act_act_tpp-propositional_302158_302807
	:parameters ( ?goods_263741561 - goods ?level_263741562 - level ?level_263741560 - level ?goods_263741563 - goods ?truck_263741559 - truck)
	:precondition (and 
			(loaded ?goods_263741561 ?truck_263741559 ?level_263741562) 
			(loaded ?goods_263741563 ?truck_263741559 ?level_263741560) 
			(next ?level_263741562 ?level_263741560)
	)
	:effect (and 
		(not (loaded ?goods_263741561 ?truck_263741559 ?level_263741560)) 
		(not (stored ?goods_263741561 ?level_263741562)) 
		(stored ?goods_263741563 ?level_263741562)
	)
)

(:action act_act_tpp-propositional_302158_302808
	:parameters ( ?goods_263741561 - goods ?level_263741562 - level ?level_263741560 - level ?goods_263741563 - goods ?truck_263741559 - truck)
	:precondition (and 
			(loaded ?goods_263741561 ?truck_263741559 ?level_263741562) 
			(loaded ?goods_263741563 ?truck_263741559 ?level_263741560) 
			(next ?level_263741562 ?level_263741560)
	)
	:effect (and 
		(loaded ?goods_263741563 ?truck_263741559 ?level_263741562) 
		(next ?level_263741560 ?level_263741562) 
		(stored ?goods_263741561 ?level_263741562)
	)
)

(:action act_act_tpp-propositional_302159_302809
	:parameters ( ?level_230101282 - level ?goods_230101284 - goods ?truck_230101281 - truck ?goods_230101280 - goods ?level_230101283 - level)
	:precondition (and 
			(loaded ?goods_230101284 ?truck_230101281 ?level_230101283) 
			(next ?level_230101283 ?level_230101282) 
			(next ?level_230101282 ?level_230101283) 
			(stored ?goods_230101280 ?level_230101282)
	)
	:effect (and 
		(not (loaded ?goods_230101284 ?truck_230101281 ?level_230101282)) 
		(loaded ?goods_230101280 ?truck_230101281 ?level_230101283) 
		(loaded ?goods_230101280 ?truck_230101281 ?level_230101282)
	)
)

(:action act_act_tpp-propositional_302159_302810
	:parameters ( ?level_230101282 - level ?goods_230101284 - goods ?truck_230101281 - truck ?goods_230101280 - goods ?level_230101283 - level)
	:precondition (and 
			(loaded ?goods_230101284 ?truck_230101281 ?level_230101283) 
			(next ?level_230101283 ?level_230101282) 
			(next ?level_230101282 ?level_230101283) 
			(stored ?goods_230101280 ?level_230101282)
	)
	:effect (and 
		(not (loaded ?goods_230101280 ?truck_230101281 ?level_230101283)) 
		(stored ?goods_230101284 ?level_230101282)
	)
)

(:action act_act_tpp-propositional_302160_302811
	:parameters ( ?truck_3373025 - truck ?market_3373026 - market ?level_3373027 - level ?goods_3373028 - goods ?goods_3373029 - goods ?level_3373030 - level)
	:precondition (and 
			(loaded ?goods_3373029 ?truck_3373025 ?level_3373030) 
			(next ?level_3373030 ?level_3373027) 
			(ready-to-load ?goods_3373028 ?market_3373026 ?level_3373030) 
			(stored ?goods_3373029 ?level_3373030)
	)
	:effect (and 
		(loaded ?goods_3373028 ?truck_3373025 ?level_3373027) 
		(not (loaded ?goods_3373028 ?truck_3373025 ?level_3373030)) 
		(next ?level_3373027 ?level_3373030) 
		(not (ready-to-load ?goods_3373029 ?market_3373026 ?level_3373027)) 
		(ready-to-load ?goods_3373029 ?market_3373026 ?level_3373030) 
		(stored ?goods_3373028 ?level_3373030)
	)
)

(:action act_act_tpp-propositional_302161_302812
	:parameters ( ?level_284534051 - level ?level_284534055 - level ?market_284534053 - market ?truck_284534050 - truck ?goods_284534052 - goods ?goods_284534054 - goods)
	:precondition (and 
			(loaded ?goods_284534052 ?truck_284534050 ?level_284534051) 
			(next ?level_284534051 ?level_284534055) 
			(ready-to-load ?goods_284534054 ?market_284534053 ?level_284534051) 
			(stored ?goods_284534054 ?level_284534055)
	)
	:effect (and 
		(loaded ?goods_284534052 ?truck_284534050 ?level_284534055) 
		(next ?level_284534055 ?level_284534051) 
		(ready-to-load ?goods_284534054 ?market_284534053 ?level_284534055) 
		(stored ?goods_284534054 ?level_284534051)
	)
)

(:action act_act_tpp-propositional_302162_302813
	:parameters ( ?level_351200779 - level ?truck_351200776 - truck ?level_351200777 - level ?market_351200778 - market ?goods_351200781 - goods ?level_351200780 - level)
	:precondition (and 
			(loaded ?goods_351200781 ?truck_351200776 ?level_351200779) 
			(next ?level_351200777 ?level_351200779) 
			(ready-to-load ?goods_351200781 ?market_351200778 ?level_351200780) 
			(stored ?goods_351200781 ?level_351200779)
	)
	:effect (and 
		(loaded ?goods_351200781 ?truck_351200776 ?level_351200780) 
		(next ?level_351200780 ?level_351200779) 
		(ready-to-load ?goods_351200781 ?market_351200778 ?level_351200777) 
		(stored ?goods_351200781 ?level_351200777)
	)
)

(:action act_act_tpp-propositional_302163_302814
	:parameters ( ?level_44338086 - level ?level_44338087 - level ?truck_44338084 - truck ?goods_44338088 - goods ?level_44338085 - level)
	:precondition (and 
			(loaded ?goods_44338088 ?truck_44338084 ?level_44338087) 
			(next ?level_44338086 ?level_44338087) 
			(next ?level_44338087 ?level_44338085) 
			(next ?level_44338086 ?level_44338085)
	)
	:effect (and 
		(loaded ?goods_44338088 ?truck_44338084 ?level_44338086) 
		(not (loaded ?goods_44338088 ?truck_44338084 ?level_44338085)) 
		(stored ?goods_44338088 ?level_44338087)
	)
)

(:action act_act_tpp-propositional_302164_302815
	:parameters ( ?goods_253632081 - goods ?truck_253632080 - truck ?level_253632076 - level ?level_253632077 - level ?level_253632078 - level ?goods_253632079 - goods)
	:precondition (and 
			(loaded ?goods_253632081 ?truck_253632080 ?level_253632078) 
			(loaded ?goods_253632081 ?truck_253632080 ?level_253632076) 
			(loaded ?goods_253632079 ?truck_253632080 ?level_253632077) 
			(next ?level_253632077 ?level_253632078)
	)
	:effect (and 
		(loaded ?goods_253632079 ?truck_253632080 ?level_253632076) 
		(loaded ?goods_253632081 ?truck_253632080 ?level_253632077) 
		(next ?level_253632078 ?level_253632077)
	)
)

(:action act_act_tpp-propositional_302165_302816
	:parameters ( ?level_13168053 - level ?level_13168051 - level ?goods_13168052 - goods)
	:precondition (and 
			(next ?level_13168053 ?level_13168051) 
			(stored ?goods_13168052 ?level_13168051)
	)
	:effect (and 
		(next ?level_13168051 ?level_13168053) 
		(stored ?goods_13168052 ?level_13168053)
	)
)

(:action act_act_tpp-propositional_302165_302817
	:parameters ( ?level_13168053 - level ?level_13168051 - level ?goods_13168052 - goods)
	:precondition (and 
			(next ?level_13168053 ?level_13168051) 
			(stored ?goods_13168052 ?level_13168051)
	)
	:effect (and 
		(next ?level_13168051 ?level_13168053) 
		(not (stored ?goods_13168052 ?level_13168053))
	)
)

(:action act_act_tpp-propositional_302166_302818
	:parameters ( ?level_26433197 - level ?level_26433198 - level ?goods_26433196 - goods)
	:precondition (and 
			(next ?level_26433197 ?level_26433198) 
			(stored ?goods_26433196 ?level_26433197)
	)
	:effect (and 
		(next ?level_26433198 ?level_26433197) 
		(stored ?goods_26433196 ?level_26433198)
	)
)

(:action act_act_tpp-propositional_302166_302819
	:parameters ( ?level_26433197 - level ?level_26433198 - level ?goods_26433196 - goods)
	:precondition (and 
			(next ?level_26433197 ?level_26433198) 
			(stored ?goods_26433196 ?level_26433197)
	)
	:effect (and 
		(next ?level_26433198 ?level_26433197) 
		(not (stored ?goods_26433196 ?level_26433198))
	)
)

(:action act_act_tpp-propositional_302167_302820
	:parameters ( ?level_177017072 - level ?level_177017073 - level ?level_177017075 - level ?goods_177017074 - goods)
	:precondition (and 
			(next ?level_177017073 ?level_177017075) 
			(stored ?goods_177017074 ?level_177017072)
	)
	:effect (and 
		(next ?level_177017075 ?level_177017073) 
		(next ?level_177017072 ?level_177017073) 
		(next ?level_177017072 ?level_177017075) 
		(next ?level_177017075 ?level_177017072) 
		(stored ?goods_177017074 ?level_177017075) 
		(not (stored ?goods_177017074 ?level_177017073))
	)
)

(:action act_act_tpp-propositional_302167_302821
	:parameters ( ?level_177017072 - level ?level_177017073 - level ?level_177017075 - level ?goods_177017074 - goods)
	:precondition (and 
			(next ?level_177017073 ?level_177017075) 
			(stored ?goods_177017074 ?level_177017072)
	)
	:effect (and 
		(next ?level_177017072 ?level_177017073) 
		(next ?level_177017072 ?level_177017075) 
		(next ?level_177017073 ?level_177017072) 
		(next ?level_177017075 ?level_177017072) 
		(not (stored ?goods_177017074 ?level_177017075)) 
		(stored ?goods_177017074 ?level_177017073)
	)
)

(:action act_act_tpp-propositional_302168_302822
	:parameters ( ?truck_485549007 - truck ?goods_485549008 - goods ?level_485549011 - level ?level_485549010 - level ?level_485549012 - level ?market_485549009 - market)
	:precondition (and 
			(loaded ?goods_485549008 ?truck_485549007 ?level_485549012) 
			(next ?level_485549010 ?level_485549012) 
			(ready-to-load ?goods_485549008 ?market_485549009 ?level_485549011) 
			(stored ?goods_485549008 ?level_485549011) 
			(stored ?goods_485549008 ?level_485549012)
	)
	:effect (and 
		(loaded ?goods_485549008 ?truck_485549007 ?level_485549011) 
		(not (ready-to-load ?goods_485549008 ?market_485549009 ?level_485549012)) 
		(not (stored ?goods_485549008 ?level_485549010))
	)
)

(:action act_act_tpp-propositional_302169_302823
	:parameters ( ?goods_513060818 - goods ?truck_513060815 - truck ?goods_513060817 - goods ?level_513060814 - level ?level_513060816 - level)
	:precondition (and 
			(loaded ?goods_513060818 ?truck_513060815 ?level_513060816) 
			(loaded ?goods_513060818 ?truck_513060815 ?level_513060814) 
			(loaded ?goods_513060817 ?truck_513060815 ?level_513060814) 
			(next ?level_513060814 ?level_513060816)
	)
	:effect (and 
		(not (loaded ?goods_513060817 ?truck_513060815 ?level_513060816)) 
		(stored ?goods_513060817 ?level_513060814) 
		(not (stored ?goods_513060818 ?level_513060816))
	)
)

(:action act_act_tpp-propositional_302170_302824
	:parameters ( ?goods_478000377 - goods ?level_478000381 - level ?level_478000379 - level ?truck_478000380 - truck ?level_478000378 - level ?level_478000376 - level)
	:precondition (and 
			(loaded ?goods_478000377 ?truck_478000380 ?level_478000378) 
			(next ?level_478000376 ?level_478000381) 
			(next ?level_478000381 ?level_478000376) 
			(next ?level_478000379 ?level_478000381)
	)
	:effect (and 
		(loaded ?goods_478000377 ?truck_478000380 ?level_478000381) 
		(loaded ?goods_478000377 ?truck_478000380 ?level_478000376) 
		(next ?level_478000376 ?level_478000379) 
		(next ?level_478000378 ?level_478000381) 
		(next ?level_478000381 ?level_478000378) 
		(stored ?goods_478000377 ?level_478000376)
	)
)

(:action act_act_tpp-propositional_302171_302825
	:parameters ( ?level_254374272 - level ?level_254374271 - level ?goods_254374273 - goods ?level_254374270 - level ?truck_254374274 - truck)
	:precondition (and 
			(loaded ?goods_254374273 ?truck_254374274 ?level_254374270) 
			(next ?level_254374270 ?level_254374271) 
			(next ?level_254374272 ?level_254374271) 
			(next ?level_254374270 ?level_254374272)
	)
	:effect (and 
		(loaded ?goods_254374273 ?truck_254374274 ?level_254374272) 
		(stored ?goods_254374273 ?level_254374271) 
		(stored ?goods_254374273 ?level_254374270)
	)
)

(:action act_act_tpp-propositional_302172_302826
	:parameters ( ?level_4203662 - level ?truck_4203659 - truck ?level_4203658 - level ?truck_4203661 - truck ?goods_4203660 - goods)
	:precondition (and 
			(loaded ?goods_4203660 ?truck_4203661 ?level_4203658) 
			(loaded ?goods_4203660 ?truck_4203659 ?level_4203662) 
			(next ?level_4203658 ?level_4203662) 
			(stored ?goods_4203660 ?level_4203662)
	)
	:effect (and 
		(loaded ?goods_4203660 ?truck_4203659 ?level_4203658) 
		(loaded ?goods_4203660 ?truck_4203661 ?level_4203662) 
		(not (stored ?goods_4203660 ?level_4203658))
	)
)

(:action act_act_tpp-propositional_302172_302827
	:parameters ( ?level_4203662 - level ?truck_4203659 - truck ?level_4203658 - level ?truck_4203661 - truck ?goods_4203660 - goods)
	:precondition (and 
			(loaded ?goods_4203660 ?truck_4203661 ?level_4203658) 
			(loaded ?goods_4203660 ?truck_4203659 ?level_4203662) 
			(next ?level_4203658 ?level_4203662) 
			(stored ?goods_4203660 ?level_4203662)
	)
	:effect (and 
		(not (loaded ?goods_4203660 ?truck_4203659 ?level_4203658)) 
		(not (loaded ?goods_4203660 ?truck_4203661 ?level_4203662))
	)
)

(:action act_act_tpp-propositional_302173_302828
	:parameters ( ?truck_458351271 - truck ?goods_458351272 - goods ?level_458351269 - level ?level_458351268 - level ?goods_458351270 - goods)
	:precondition (and 
			(loaded ?goods_458351270 ?truck_458351271 ?level_458351269) 
			(loaded ?goods_458351272 ?truck_458351271 ?level_458351268) 
			(next ?level_458351268 ?level_458351269) 
			(stored ?goods_458351270 ?level_458351268)
	)
	:effect (and 
		(loaded ?goods_458351272 ?truck_458351271 ?level_458351269) 
		(loaded ?goods_458351270 ?truck_458351271 ?level_458351268)
	)
)

(:action act_act_tpp-propositional_302174_302829
	:parameters ( ?level_255956275 - level ?level_255956270 - level ?truck_255956271 - truck ?truck_255956272 - truck ?goods_255956273 - goods ?place_255956274 - place)
	:precondition (and 
			(at ?truck_255956271 ?place_255956274) 
			(loaded ?goods_255956273 ?truck_255956272 ?level_255956275) 
			(loaded ?goods_255956273 ?truck_255956272 ?level_255956270) 
			(next ?level_255956270 ?level_255956275)
	)
	:effect (and 
		(at ?truck_255956272 ?place_255956274) 
		(loaded ?goods_255956273 ?truck_255956271 ?level_255956270) 
		(not (loaded ?goods_255956273 ?truck_255956271 ?level_255956275)) 
		(stored ?goods_255956273 ?level_255956275)
	)
)

(:action act_act_tpp-propositional_302174_302830
	:parameters ( ?level_255956275 - level ?level_255956270 - level ?truck_255956271 - truck ?goods_255956273 - goods ?truck_255956272 - truck ?place_255956274 - place)
	:precondition (and 
			(at ?truck_255956271 ?place_255956274) 
			(loaded ?goods_255956273 ?truck_255956272 ?level_255956275) 
			(loaded ?goods_255956273 ?truck_255956272 ?level_255956270) 
			(next ?level_255956270 ?level_255956275)
	)
	:effect (and 
		(at ?truck_255956272 ?place_255956274) 
		(loaded ?goods_255956273 ?truck_255956271 ?level_255956275) 
		(next ?level_255956275 ?level_255956270)
	)
)

(:action act_act_tpp-propositional_302175_302831
	:parameters ( ?truck_454513228 - truck ?place_454513229 - place ?goods_454513225 - goods ?truck_454513230 - truck ?level_454513226 - level ?level_454513227 - level)
	:precondition (and 
			(at ?truck_454513230 ?place_454513229) 
			(loaded ?goods_454513225 ?truck_454513228 ?level_454513226) 
			(loaded ?goods_454513225 ?truck_454513230 ?level_454513226) 
			(next ?level_454513226 ?level_454513227)
	)
	:effect (and 
		(at ?truck_454513228 ?place_454513229) 
		(loaded ?goods_454513225 ?truck_454513230 ?level_454513227) 
		(stored ?goods_454513225 ?level_454513226)
	)
)

(:action act_act_tpp-propositional_302176_302832
	:parameters ( ?market_528593793 - market ?level_528593794 - level ?level_528593791 - level ?level_528593790 - level ?truck_528593792 - truck ?goods_528593795 - goods)
	:precondition (and 
			(loaded ?goods_528593795 ?truck_528593792 ?level_528593791) 
			(next ?level_528593794 ?level_528593791) 
			(ready-to-load ?goods_528593795 ?market_528593793 ?level_528593794) 
			(ready-to-load ?goods_528593795 ?market_528593793 ?level_528593790)
	)
	:effect (and 
		(loaded ?goods_528593795 ?truck_528593792 ?level_528593790) 
		(next ?level_528593791 ?level_528593794) 
		(not (ready-to-load ?goods_528593795 ?market_528593793 ?level_528593791)) 
		(stored ?goods_528593795 ?level_528593794)
	)
)

(:action act_act_tpp-propositional_302177_302833
	:parameters ( ?level_230745478 - level ?level_230745480 - level ?goods_230745479 - goods ?truck_230745476 - truck ?level_230745475 - level ?goods_230745477 - goods)
	:precondition (and 
			(loaded ?goods_230745479 ?truck_230745476 ?level_230745478) 
			(next ?level_230745480 ?level_230745475) 
			(stored ?goods_230745477 ?level_230745475)
	)
	:effect (and 
		(loaded ?goods_230745477 ?truck_230745476 ?level_230745475) 
		(loaded ?goods_230745479 ?truck_230745476 ?level_230745475) 
		(loaded ?goods_230745477 ?truck_230745476 ?level_230745480) 
		(next ?level_230745478 ?level_230745475) 
		(next ?level_230745480 ?level_230745478) 
		(next ?level_230745475 ?level_230745480) 
		(next ?level_230745478 ?level_230745480) 
		(next ?level_230745475 ?level_230745478)
	)
)

(:action act_act_tpp-propositional_302177_302834
	:parameters ( ?level_230745478 - level ?level_230745480 - level ?goods_230745479 - goods ?level_230745475 - level ?truck_230745476 - truck ?goods_230745477 - goods)
	:precondition (and 
			(loaded ?goods_230745479 ?truck_230745476 ?level_230745478) 
			(next ?level_230745480 ?level_230745475) 
			(stored ?goods_230745477 ?level_230745475)
	)
	:effect (and 
		(loaded ?goods_230745477 ?truck_230745476 ?level_230745475) 
		(not (loaded ?goods_230745477 ?truck_230745476 ?level_230745480)) 
		(stored ?goods_230745477 ?level_230745478) 
		(stored ?goods_230745479 ?level_230745475)
	)
)

(:action act_act_tpp-propositional_302178_302835
	:parameters ( ?truck_401861409 - truck ?level_401861411 - level ?goods_401861410 - goods ?goods_401861412 - goods ?level_401861408 - level ?market_401861413 - market)
	:precondition (and 
			(loaded ?goods_401861410 ?truck_401861409 ?level_401861411) 
			(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861408)
	)
	:effect (and 
		(not (loaded ?goods_401861412 ?truck_401861409 ?level_401861411)) 
		(not (loaded ?goods_401861410 ?truck_401861409 ?level_401861408)) 
		(not (loaded ?goods_401861412 ?truck_401861409 ?level_401861408)) 
		(next ?level_401861408 ?level_401861411) 
		(not (ready-to-load ?goods_401861410 ?market_401861413 ?level_401861411)) 
		(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861411) 
		(ready-to-load ?goods_401861410 ?market_401861413 ?level_401861408) 
		(not (stored ?goods_401861410 ?level_401861411))
	)
)

(:action act_act_tpp-propositional_302178_302836
	:parameters ( ?truck_401861409 - truck ?level_401861411 - level ?goods_401861410 - goods ?goods_401861412 - goods ?level_401861408 - level ?market_401861413 - market)
	:precondition (and 
			(loaded ?goods_401861410 ?truck_401861409 ?level_401861411) 
			(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861408)
	)
	:effect (and 
		(loaded ?goods_401861410 ?truck_401861409 ?level_401861408) 
		(loaded ?goods_401861412 ?truck_401861409 ?level_401861411) 
		(next ?level_401861411 ?level_401861408) 
		(next ?level_401861408 ?level_401861411) 
		(not (ready-to-load ?goods_401861410 ?market_401861413 ?level_401861411)) 
		(ready-to-load ?goods_401861410 ?market_401861413 ?level_401861408) 
		(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861411) 
		(not (stored ?goods_401861410 ?level_401861411)) 
		(not (stored ?goods_401861412 ?level_401861411)) 
		(stored ?goods_401861410 ?level_401861408) 
		(stored ?goods_401861412 ?level_401861408)
	)
)

(:action act_act_tpp-propositional_302178_302837
	:parameters ( ?truck_401861409 - truck ?level_401861411 - level ?goods_401861410 - goods ?goods_401861412 - goods ?level_401861408 - level ?market_401861413 - market)
	:precondition (and 
			(loaded ?goods_401861410 ?truck_401861409 ?level_401861411) 
			(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861408)
	)
	:effect (and 
		(not (loaded ?goods_401861410 ?truck_401861409 ?level_401861408)) 
		(loaded ?goods_401861412 ?truck_401861409 ?level_401861411) 
		(loaded ?goods_401861412 ?truck_401861409 ?level_401861408) 
		(next ?level_401861411 ?level_401861408) 
		(next ?level_401861408 ?level_401861411) 
		(ready-to-load ?goods_401861410 ?market_401861413 ?level_401861411) 
		(not (ready-to-load ?goods_401861412 ?market_401861413 ?level_401861411)) 
		(not (ready-to-load ?goods_401861410 ?market_401861413 ?level_401861408)) 
		(stored ?goods_401861412 ?level_401861411) 
		(stored ?goods_401861410 ?level_401861408)
	)
)

(:action act_act_tpp-propositional_302178_302838
	:parameters ( ?truck_401861409 - truck ?level_401861411 - level ?goods_401861410 - goods ?goods_401861412 - goods ?level_401861408 - level ?market_401861413 - market)
	:precondition (and 
			(loaded ?goods_401861410 ?truck_401861409 ?level_401861411) 
			(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861408)
	)
	:effect (and 
		(not (loaded ?goods_401861412 ?truck_401861409 ?level_401861411)) 
		(loaded ?goods_401861410 ?truck_401861409 ?level_401861408) 
		(next ?level_401861411 ?level_401861408) 
		(next ?level_401861408 ?level_401861411) 
		(ready-to-load ?goods_401861410 ?market_401861413 ?level_401861411) 
		(ready-to-load ?goods_401861412 ?market_401861413 ?level_401861411) 
		(ready-to-load ?goods_401861410 ?market_401861413 ?level_401861408) 
		(stored ?goods_401861410 ?level_401861408)
	)
)

(:action act_act_tpp-propositional_302179_302839
	:parameters ( ?level_262047650 - level ?level_262047651 - level ?goods_262047649 - goods ?level_262047653 - level ?truck_262047654 - truck ?truck_262047652 - truck)
	:precondition (and 
			(loaded ?goods_262047649 ?truck_262047654 ?level_262047651) 
			(loaded ?goods_262047649 ?truck_262047652 ?level_262047651) 
			(next ?level_262047651 ?level_262047650) 
			(next ?level_262047650 ?level_262047653)
	)
	:effect (and 
		(loaded ?goods_262047649 ?truck_262047652 ?level_262047653) 
		(loaded ?goods_262047649 ?truck_262047654 ?level_262047653) 
		(next ?level_262047653 ?level_262047651) 
		(next ?level_262047650 ?level_262047651)
	)
)

(:action act_act_tpp-propositional_302180_302840
	:parameters ( ?goods_449315155 - goods ?truck_449315153 - truck ?goods_449315152 - goods ?level_449315154 - level)
	:precondition (and 
			(loaded ?goods_449315155 ?truck_449315153 ?level_449315154) 
			(stored ?goods_449315152 ?level_449315154)
	)
	:effect (and 
		(not (loaded ?goods_449315152 ?truck_449315153 ?level_449315154)) 
		(stored ?goods_449315155 ?level_449315154)
	)
)

(:action act_act_tpp-propositional_302180_302841
	:parameters ( ?goods_449315155 - goods ?truck_449315153 - truck ?goods_449315152 - goods ?level_449315154 - level)
	:precondition (and 
			(loaded ?goods_449315155 ?truck_449315153 ?level_449315154) 
			(stored ?goods_449315152 ?level_449315154)
	)
	:effect (and 
		(loaded ?goods_449315152 ?truck_449315153 ?level_449315154) 
		(stored ?goods_449315155 ?level_449315154)
	)
)

(:action act_act_tpp-propositional_302180_302842
	:parameters ( ?goods_449315155 - goods ?truck_449315153 - truck ?goods_449315152 - goods ?level_449315154 - level)
	:precondition (and 
			(loaded ?goods_449315155 ?truck_449315153 ?level_449315154) 
			(stored ?goods_449315152 ?level_449315154)
	)
	:effect (and 
		(not (loaded ?goods_449315152 ?truck_449315153 ?level_449315154)) 
		(not (stored ?goods_449315155 ?level_449315154))
	)
)

(:action act_act_tpp-propositional_302180_302843
	:parameters ( ?goods_449315155 - goods ?truck_449315153 - truck ?goods_449315152 - goods ?level_449315154 - level)
	:precondition (and 
			(loaded ?goods_449315155 ?truck_449315153 ?level_449315154) 
			(stored ?goods_449315152 ?level_449315154)
	)
	:effect (and 
		(loaded ?goods_449315152 ?truck_449315153 ?level_449315154) 
		(not (stored ?goods_449315155 ?level_449315154))
	)
)

(:action act_act_tpp-propositional_302181_302844
	:parameters ( ?level_49315206 - level ?level_49315207 - level ?truck_49315205 - truck ?goods_49315209 - goods ?goods_49315208 - goods)
	:precondition (and 
			(loaded ?goods_49315208 ?truck_49315205 ?level_49315206) 
			(loaded ?goods_49315209 ?truck_49315205 ?level_49315206) 
			(stored ?goods_49315208 ?level_49315207)
	)
	:effect (and 
		(loaded ?goods_49315208 ?truck_49315205 ?level_49315207) 
		(not (stored ?goods_49315209 ?level_49315206))
	)
)

(:action act_act_tpp-propositional_302181_302845
	:parameters ( ?level_49315206 - level ?level_49315207 - level ?truck_49315205 - truck ?goods_49315209 - goods ?goods_49315208 - goods)
	:precondition (and 
			(loaded ?goods_49315208 ?truck_49315205 ?level_49315206) 
			(loaded ?goods_49315209 ?truck_49315205 ?level_49315206) 
			(stored ?goods_49315208 ?level_49315207)
	)
	:effect (and 
		(not (loaded ?goods_49315208 ?truck_49315205 ?level_49315207)) 
		(stored ?goods_49315209 ?level_49315206)
	)
)

(:action act_act_tpp-propositional_302182_302846
	:parameters ( ?goods_341000335 - goods ?market_341000336 - market ?goods_341000337 - goods ?level_341000334 - level ?level_341000338 - level)
	:precondition (and 
			(next ?level_341000334 ?level_341000338) 
			(ready-to-load ?goods_341000335 ?market_341000336 ?level_341000334) 
			(stored ?goods_341000337 ?level_341000338)
	)
	:effect (and 
		(ready-to-load ?goods_341000335 ?market_341000336 ?level_341000338) 
		(not (stored ?goods_341000335 ?level_341000334)) 
		(not (stored ?goods_341000337 ?level_341000334))
	)
)

(:action act_act_tpp-propositional_302182_302847
	:parameters ( ?goods_341000335 - goods ?market_341000336 - market ?goods_341000337 - goods ?level_341000334 - level ?level_341000338 - level)
	:precondition (and 
			(next ?level_341000334 ?level_341000338) 
			(ready-to-load ?goods_341000335 ?market_341000336 ?level_341000334) 
			(stored ?goods_341000337 ?level_341000338)
	)
	:effect (and 
		(ready-to-load ?goods_341000335 ?market_341000336 ?level_341000338) 
		(stored ?goods_341000337 ?level_341000334)
	)
)

(:action act_act_tpp-propositional_302183_302848
	:parameters ( ?level_15244739 - level ?goods_15244737 - goods ?truck_15244738 - truck ?goods_15244740 - goods ?level_15244736 - level)
	:precondition (and 
			(loaded ?goods_15244737 ?truck_15244738 ?level_15244736) 
			(loaded ?goods_15244740 ?truck_15244738 ?level_15244736) 
			(next ?level_15244739 ?level_15244736)
	)
	:effect (and 
		(not (loaded ?goods_15244740 ?truck_15244738 ?level_15244739)) 
		(stored ?goods_15244737 ?level_15244736)
	)
)

(:action act_act_tpp-propositional_302183_302849
	:parameters ( ?level_15244739 - level ?goods_15244737 - goods ?truck_15244738 - truck ?goods_15244740 - goods ?level_15244736 - level)
	:precondition (and 
			(loaded ?goods_15244737 ?truck_15244738 ?level_15244736) 
			(loaded ?goods_15244740 ?truck_15244738 ?level_15244736) 
			(next ?level_15244739 ?level_15244736)
	)
	:effect (and 
		(loaded ?goods_15244740 ?truck_15244738 ?level_15244739) 
		(stored ?goods_15244737 ?level_15244739) 
		(stored ?goods_15244740 ?level_15244736)
	)
)

(:action act_act_tpp-propositional_302184_302850
	:parameters ( ?truck_6167681 - truck ?goods_6167683 - goods ?level_6167684 - level ?level_6167680 - level ?level_6167682 - level)
	:precondition (and 
			(loaded ?goods_6167683 ?truck_6167681 ?level_6167684) 
			(loaded ?goods_6167683 ?truck_6167681 ?level_6167682) 
			(next ?level_6167684 ?level_6167680) 
			(next ?level_6167680 ?level_6167684) 
			(next ?level_6167680 ?level_6167682)
	)
	:effect (and 
		(not (loaded ?goods_6167683 ?truck_6167681 ?level_6167680)) 
		(next ?level_6167682 ?level_6167684) 
		(not (stored ?goods_6167683 ?level_6167684))
	)
)

(:action act_act_tpp-propositional_302185_302851
	:parameters ( ?goods_366604805 - goods ?market_366604804 - market ?goods_366604803 - goods ?level_366604802 - level)
	:precondition (and 
			(ready-to-load ?goods_366604805 ?market_366604804 ?level_366604802) 
			(stored ?goods_366604803 ?level_366604802)
	)
	:effect (and 
		(ready-to-load ?goods_366604803 ?market_366604804 ?level_366604802) 
		(not (stored ?goods_366604805 ?level_366604802))
	)
)

(:action act_act_tpp-propositional_302185_302852
	:parameters ( ?goods_366604805 - goods ?market_366604804 - market ?goods_366604803 - goods ?level_366604802 - level)
	:precondition (and 
			(ready-to-load ?goods_366604805 ?market_366604804 ?level_366604802) 
			(stored ?goods_366604803 ?level_366604802)
	)
	:effect (and 
		(not (ready-to-load ?goods_366604803 ?market_366604804 ?level_366604802)) 
		(stored ?goods_366604805 ?level_366604802)
	)
)

(:action act_act_tpp-propositional_302185_302853
	:parameters ( ?goods_366604805 - goods ?market_366604804 - market ?goods_366604803 - goods ?level_366604802 - level)
	:precondition (and 
			(ready-to-load ?goods_366604805 ?market_366604804 ?level_366604802) 
			(stored ?goods_366604803 ?level_366604802)
	)
	:effect (and 
		(not (ready-to-load ?goods_366604803 ?market_366604804 ?level_366604802)) 
		(not (stored ?goods_366604805 ?level_366604802))
	)
)

(:action act_act_tpp-propositional_302186_302854
	:parameters ( ?level_56164045 - level ?goods_56164044 - goods ?level_56164047 - level ?goods_56164046 - goods ?level_56164042 - level ?market_56164043 - market)
	:precondition (and 
			(next ?level_56164042 ?level_56164047) 
			(ready-to-load ?goods_56164044 ?market_56164043 ?level_56164047) 
			(stored ?goods_56164046 ?level_56164045)
	)
	:effect (and 
		(next ?level_56164045 ?level_56164042) 
		(ready-to-load ?goods_56164046 ?market_56164043 ?level_56164047) 
		(not (ready-to-load ?goods_56164044 ?market_56164043 ?level_56164045))
	)
)

(:action act_act_tpp-propositional_302187_302855
	:parameters ( ?truck_277428066 - truck ?level_277428064 - level ?market_277428063 - market ?level_277428065 - level ?goods_277428062 - goods ?truck_277428061 - truck)
	:precondition (and 
			(loaded ?goods_277428062 ?truck_277428061 ?level_277428064) 
			(loaded ?goods_277428062 ?truck_277428066 ?level_277428064) 
			(ready-to-load ?goods_277428062 ?market_277428063 ?level_277428065)
	)
	:effect (and 
		(not (loaded ?goods_277428062 ?truck_277428066 ?level_277428065)) 
		(loaded ?goods_277428062 ?truck_277428061 ?level_277428065) 
		(ready-to-load ?goods_277428062 ?market_277428063 ?level_277428064)
	)
)

(:action act_act_tpp-propositional_302188_302856
	:parameters ( ?level_121795209 - level ?level_121795207 - level ?truck_121795208 - truck ?goods_121795206 - goods ?truck_121795205 - truck)
	:precondition (and 
			(loaded ?goods_121795206 ?truck_121795208 ?level_121795209) 
			(loaded ?goods_121795206 ?truck_121795205 ?level_121795207) 
			(next ?level_121795207 ?level_121795209) 
			(next ?level_121795209 ?level_121795207) 
			(stored ?goods_121795206 ?level_121795209)
	)
	:effect (and 
		(loaded ?goods_121795206 ?truck_121795205 ?level_121795209) 
		(loaded ?goods_121795206 ?truck_121795208 ?level_121795207)
	)
)

(:action act_act_tpp-propositional_302189_302857
	:parameters ( ?level_75306021 - level ?goods_75306020 - goods ?goods_75306022 - goods ?level_75306018 - level ?truck_75306017 - truck ?truck_75306019 - truck)
	:precondition (and 
			(loaded ?goods_75306022 ?truck_75306017 ?level_75306018) 
			(loaded ?goods_75306020 ?truck_75306019 ?level_75306021) 
			(stored ?goods_75306022 ?level_75306021)
	)
	:effect (and 
		(loaded ?goods_75306022 ?truck_75306019 ?level_75306018) 
		(loaded ?goods_75306020 ?truck_75306017 ?level_75306021) 
		(stored ?goods_75306020 ?level_75306021)
	)
)

(:action act_act_tpp-propositional_302190_302858
	:parameters ( ?level_526243165 - level ?level_526243164 - level ?truck_526243163 - truck ?truck_526243161 - truck ?goods_526243162 - goods)
	:precondition (and 
			(loaded ?goods_526243162 ?truck_526243161 ?level_526243164) 
			(loaded ?goods_526243162 ?truck_526243163 ?level_526243165) 
			(stored ?goods_526243162 ?level_526243165)
	)
	:effect (and 
		(loaded ?goods_526243162 ?truck_526243163 ?level_526243164) 
		(loaded ?goods_526243162 ?truck_526243161 ?level_526243165) 
		(stored ?goods_526243162 ?level_526243164)
	)
)

(:action act_act_tpp-propositional_302190_302859
	:parameters ( ?level_526243165 - level ?level_526243164 - level ?truck_526243163 - truck ?truck_526243161 - truck ?goods_526243162 - goods)
	:precondition (and 
			(loaded ?goods_526243162 ?truck_526243161 ?level_526243164) 
			(loaded ?goods_526243162 ?truck_526243163 ?level_526243165) 
			(stored ?goods_526243162 ?level_526243165)
	)
	:effect (and 
		(not (loaded ?goods_526243162 ?truck_526243163 ?level_526243164)) 
		(loaded ?goods_526243162 ?truck_526243161 ?level_526243165) 
		(not (stored ?goods_526243162 ?level_526243164))
	)
)

(:action act_act_tpp-propositional_302191_302860
	:parameters ( ?goods_391578905 - goods ?level_391578909 - level ?level_391578908 - level ?truck_391578907 - truck ?level_391578906 - level ?level_391578904 - level)
	:precondition (and 
			(loaded ?goods_391578905 ?truck_391578907 ?level_391578908) 
			(next ?level_391578904 ?level_391578909) 
			(stored ?goods_391578905 ?level_391578906)
	)
	:effect (and 
		(loaded ?goods_391578905 ?truck_391578907 ?level_391578909) 
		(not (loaded ?goods_391578905 ?truck_391578907 ?level_391578906)) 
		(loaded ?goods_391578905 ?truck_391578907 ?level_391578904) 
		(next ?level_391578909 ?level_391578908)
	)
)

(:action act_act_tpp-propositional_302191_302861
	:parameters ( ?goods_391578905 - goods ?level_391578909 - level ?level_391578908 - level ?truck_391578907 - truck ?level_391578906 - level ?level_391578904 - level)
	:precondition (and 
			(loaded ?goods_391578905 ?truck_391578907 ?level_391578908) 
			(next ?level_391578904 ?level_391578909) 
			(stored ?goods_391578905 ?level_391578906)
	)
	:effect (and 
		(loaded ?goods_391578905 ?truck_391578907 ?level_391578909) 
		(loaded ?goods_391578905 ?truck_391578907 ?level_391578906) 
		(loaded ?goods_391578905 ?truck_391578907 ?level_391578904) 
		(next ?level_391578909 ?level_391578906) 
		(next ?level_391578909 ?level_391578908) 
		(next ?level_391578904 ?level_391578908)
	)
)

(:action act_act_tpp-propositional_302192_302862
	:parameters ( ?level_78411727 - level ?truck_78411731 - truck ?goods_78411730 - goods ?level_78411728 - level ?truck_78411729 - truck ?goods_78411726 - goods)
	:precondition (and 
			(loaded ?goods_78411730 ?truck_78411729 ?level_78411728) 
			(loaded ?goods_78411726 ?truck_78411731 ?level_78411727) 
			(stored ?goods_78411726 ?level_78411728)
	)
	:effect (and 
		(loaded ?goods_78411730 ?truck_78411731 ?level_78411727) 
		(not (loaded ?goods_78411726 ?truck_78411731 ?level_78411728)) 
		(not (loaded ?goods_78411726 ?truck_78411729 ?level_78411728)) 
		(next ?level_78411728 ?level_78411727)
	)
)

(:action act_act_tpp-propositional_302193_302863
	:parameters ( ?truck_57768803 - truck ?truck_57768800 - truck ?goods_57768801 - goods ?level_57768799 - level ?level_57768804 - level ?level_57768802 - level)
	:precondition (and 
			(loaded ?goods_57768801 ?truck_57768800 ?level_57768804) 
			(loaded ?goods_57768801 ?truck_57768803 ?level_57768802) 
			(next ?level_57768802 ?level_57768799)
	)
	:effect (and 
		(not (loaded ?goods_57768801 ?truck_57768800 ?level_57768802)) 
		(loaded ?goods_57768801 ?truck_57768803 ?level_57768799) 
		(next ?level_57768802 ?level_57768804)
	)
)

(:action act_act_tpp-propositional_302194_302864
	:parameters ( ?level_443891437 - level ?goods_443891441 - goods ?truck_443891440 - truck ?goods_443891442 - goods ?level_443891438 - level ?market_443891439 - market)
	:precondition (and 
			(loaded ?goods_443891442 ?truck_443891440 ?level_443891438) 
			(loaded ?goods_443891442 ?truck_443891440 ?level_443891437) 
			(ready-to-load ?goods_443891441 ?market_443891439 ?level_443891438)
	)
	:effect (and 
		(loaded ?goods_443891441 ?truck_443891440 ?level_443891438) 
		(next ?level_443891437 ?level_443891438) 
		(not (ready-to-load ?goods_443891442 ?market_443891439 ?level_443891437))
	)
)

(:action act_act_tpp-propositional_302195_302865
	:parameters ( ?goods_332956335 - goods ?goods_332956331 - goods ?truck_332956330 - truck ?level_332956332 - level ?level_332956333 - level ?level_332956334 - level)
	:precondition (and 
			(loaded ?goods_332956331 ?truck_332956330 ?level_332956333) 
			(loaded ?goods_332956331 ?truck_332956330 ?level_332956332) 
			(stored ?goods_332956335 ?level_332956334)
	)
	:effect (and 
		(loaded ?goods_332956335 ?truck_332956330 ?level_332956333) 
		(next ?level_332956332 ?level_332956333) 
		(next ?level_332956333 ?level_332956332) 
		(not (stored ?goods_332956331 ?level_332956334))
	)
)

(:action act_act_tpp-propositional_302196_302866
	:parameters ( ?level_7471346 - level ?level_7471343 - level ?level_7471344 - level ?goods_7471345 - goods)
	:precondition (and 
			(next ?level_7471346 ?level_7471343) 
			(next ?level_7471343 ?level_7471344) 
			(stored ?goods_7471345 ?level_7471343)
	)
	:effect (and 
		(next ?level_7471343 ?level_7471346) 
		(not (stored ?goods_7471345 ?level_7471344))
	)
)

(:action act_act_tpp-propositional_302197_302867
	:parameters ( ?level_26547088 - level ?level_26547089 - level ?goods_26547087 - goods ?level_26547090 - level)
	:precondition (and 
			(next ?level_26547089 ?level_26547088) 
			(next ?level_26547090 ?level_26547089) 
			(stored ?goods_26547087 ?level_26547090)
	)
	:effect (and 
		(next ?level_26547090 ?level_26547088) 
		(not (stored ?goods_26547087 ?level_26547089))
	)
)

(:action act_act_tpp-propositional_302198_302868
	:parameters ( ?level_138792376 - level ?level_138792377 - level ?level_138792375 - level ?goods_138792374 - goods)
	:precondition (and 
			(next ?level_138792377 ?level_138792375) 
			(next ?level_138792375 ?level_138792377) 
			(stored ?goods_138792374 ?level_138792376)
	)
	:effect (and 
		(next ?level_138792377 ?level_138792376) 
		(not (stored ?goods_138792374 ?level_138792375))
	)
)

(:action act_act_tpp-propositional_302198_302869
	:parameters ( ?level_138792376 - level ?level_138792377 - level ?level_138792375 - level ?goods_138792374 - goods)
	:precondition (and 
			(next ?level_138792377 ?level_138792375) 
			(next ?level_138792375 ?level_138792377) 
			(stored ?goods_138792374 ?level_138792376)
	)
	:effect (and 
		(next ?level_138792376 ?level_138792377) 
		(next ?level_138792375 ?level_138792376) 
		(stored ?goods_138792374 ?level_138792375)
	)
)

(:action act_act_tpp-propositional_302199_302870
	:parameters ( ?level_222380741 - level ?level_222380743 - level ?level_222380742 - level ?goods_222380740 - goods)
	:precondition (and 
			(next ?level_222380742 ?level_222380741) 
			(next ?level_222380743 ?level_222380742) 
			(stored ?goods_222380740 ?level_222380741)
	)
	:effect (and 
		(next ?level_222380741 ?level_222380742) 
		(not (stored ?goods_222380740 ?level_222380743))
	)
)

(:action act_act_tpp-propositional_302200_302871
	:parameters ( ?goods_310460691 - goods ?level_310460692 - level ?level_310460694 - level ?level_310460693 - level)
	:precondition (and 
			(next ?level_310460692 ?level_310460694) 
			(next ?level_310460692 ?level_310460693) 
			(stored ?goods_310460691 ?level_310460694)
	)
	:effect (and 
		(next ?level_310460694 ?level_310460692) 
		(not (stored ?goods_310460691 ?level_310460693))
	)
)

(:action act_act_tpp-propositional_302200_302872
	:parameters ( ?goods_310460691 - goods ?level_310460692 - level ?level_310460694 - level ?level_310460693 - level)
	:precondition (and 
			(next ?level_310460692 ?level_310460694) 
			(next ?level_310460692 ?level_310460693) 
			(stored ?goods_310460691 ?level_310460694)
	)
	:effect (and 
		(next ?level_310460694 ?level_310460692) 
		(stored ?goods_310460691 ?level_310460693)
	)
)

(:action act_act_tpp-propositional_302201_302873
	:parameters ( ?level_346484604 - level ?level_346484603 - level ?level_346484602 - level ?goods_346484601 - goods)
	:precondition (and 
			(next ?level_346484603 ?level_346484604) 
			(next ?level_346484602 ?level_346484604) 
			(stored ?goods_346484601 ?level_346484602)
	)
	:effect (and 
		(next ?level_346484604 ?level_346484602) 
		(not (stored ?goods_346484601 ?level_346484603))
	)
)

(:action act_act_tpp-propositional_302202_302874
	:parameters ( ?goods_389065493 - goods ?level_389065490 - level ?level_389065491 - level ?level_389065492 - level)
	:precondition (and 
			(next ?level_389065490 ?level_389065492) 
			(next ?level_389065491 ?level_389065492) 
			(stored ?goods_389065493 ?level_389065490)
	)
	:effect (and 
		(next ?level_389065491 ?level_389065490) 
		(not (stored ?goods_389065493 ?level_389065492))
	)
)

(:action act_act_tpp-propositional_302202_302875
	:parameters ( ?goods_389065493 - goods ?level_389065490 - level ?level_389065491 - level ?level_389065492 - level)
	:precondition (and 
			(next ?level_389065490 ?level_389065492) 
			(next ?level_389065491 ?level_389065492) 
			(stored ?goods_389065493 ?level_389065490)
	)
	:effect (and 
		(next ?level_389065491 ?level_389065490) 
		(stored ?goods_389065493 ?level_389065492)
	)
)

(:action act_act_tpp-propositional_302203_302876
	:parameters ( ?place_67122640 - place ?goods_67122638 - goods ?truck_67122639 - truck ?level_67122636 - level ?truck_67122635 - truck ?level_67122637 - level)
	:precondition (and 
			(at ?truck_67122639 ?place_67122640) 
			(loaded ?goods_67122638 ?truck_67122635 ?level_67122637) 
			(next ?level_67122636 ?level_67122637) 
			(stored ?goods_67122638 ?level_67122637) 
			(stored ?goods_67122638 ?level_67122636)
	)
	:effect (and 
		(at ?truck_67122635 ?place_67122640) 
		(loaded ?goods_67122638 ?truck_67122635 ?level_67122636) 
		(loaded ?goods_67122638 ?truck_67122639 ?level_67122637)
	)
)

(:action act_act_tpp-propositional_302204_302877
	:parameters ( ?level_168923873 - level ?level_168923874 - level ?truck_168923877 - truck ?level_168923876 - level ?goods_168923875 - goods)
	:precondition (and 
			(loaded ?goods_168923875 ?truck_168923877 ?level_168923876) 
			(next ?level_168923873 ?level_168923876) 
			(next ?level_168923873 ?level_168923874) 
			(next ?level_168923874 ?level_168923876)
	)
	:effect (and 
		(not (loaded ?goods_168923875 ?truck_168923877 ?level_168923874)) 
		(not (loaded ?goods_168923875 ?truck_168923877 ?level_168923873)) 
		(next ?level_168923876 ?level_168923874)
	)
)

(:action act_act_tpp-propositional_302205_302878
	:parameters ( ?goods_115475010 - goods ?market_115475011 - market ?level_115475015 - level ?level_115475014 - level ?truck_115475012 - truck ?goods_115475013 - goods)
	:precondition (and 
			(loaded ?goods_115475013 ?truck_115475012 ?level_115475015) 
			(ready-to-load ?goods_115475013 ?market_115475011 ?level_115475015) 
			(ready-to-load ?goods_115475013 ?market_115475011 ?level_115475014) 
			(stored ?goods_115475010 ?level_115475015) 
			(stored ?goods_115475013 ?level_115475015) 
			(stored ?goods_115475013 ?level_115475014)
	)
	:effect (and 
		(not (loaded ?goods_115475013 ?truck_115475012 ?level_115475014)) 
		(ready-to-load ?goods_115475010 ?market_115475011 ?level_115475015)
	)
)

(:action act_act_tpp-propositional_302206_302879
	:parameters ( ?level_336871665 - level ?level_336871662 - level ?goods_336871666 - goods ?level_336871663 - level ?market_336871664 - market)
	:precondition (and 
			(next ?level_336871665 ?level_336871663) 
			(next ?level_336871665 ?level_336871662) 
			(ready-to-load ?goods_336871666 ?market_336871664 ?level_336871662)
	)
	:effect (and 
		(next ?level_336871662 ?level_336871665) 
		(ready-to-load ?goods_336871666 ?market_336871664 ?level_336871663)
	)
)

(:action act_act_tpp-propositional_302207_302880
	:parameters ( ?goods_545858828 - goods ?level_545858826 - level ?level_545858825 - level ?level_545858827 - level)
	:precondition (and 
			(next ?level_545858825 ?level_545858826) 
			(next ?level_545858825 ?level_545858827) 
			(stored ?goods_545858828 ?level_545858827)
	)
	:effect (and 
		(next ?level_545858827 ?level_545858826) 
		(stored ?goods_545858828 ?level_545858825)
	)
)

(:action act_act_tpp-propositional_302208_302881
	:parameters ( ?goods_562545652 - goods ?level_562545651 - level ?level_562545650 - level ?level_562545649 - level)
	:precondition (and 
			(next ?level_562545651 ?level_562545649) 
			(next ?level_562545650 ?level_562545651) 
			(stored ?goods_562545652 ?level_562545651)
	)
	:effect (and 
		(next ?level_562545649 ?level_562545651) 
		(stored ?goods_562545652 ?level_562545650)
	)
)

(:action act_act_tpp-propositional_302209_302882
	:parameters ( ?level_73722642 - level ?goods_73722638 - goods ?truck_73722641 - truck ?truck_73722640 - truck ?place_73722637 - place ?level_73722639 - level)
	:precondition (and 
			(at ?truck_73722640 ?place_73722637) 
			(loaded ?goods_73722638 ?truck_73722641 ?level_73722639) 
			(next ?level_73722639 ?level_73722642) 
			(next ?level_73722642 ?level_73722639)
	)
	:effect (and 
		(at ?truck_73722641 ?place_73722637) 
		(not (loaded ?goods_73722638 ?truck_73722640 ?level_73722639)) 
		(not (loaded ?goods_73722638 ?truck_73722641 ?level_73722642)) 
		(not (stored ?goods_73722638 ?level_73722642))
	)
)

(:action act_act_tpp-propositional_302209_302883
	:parameters ( ?level_73722642 - level ?goods_73722638 - goods ?truck_73722641 - truck ?truck_73722640 - truck ?place_73722637 - place ?level_73722639 - level)
	:precondition (and 
			(at ?truck_73722640 ?place_73722637) 
			(loaded ?goods_73722638 ?truck_73722641 ?level_73722639) 
			(next ?level_73722639 ?level_73722642) 
			(next ?level_73722642 ?level_73722639)
	)
	:effect (and 
		(not (at ?truck_73722641 ?place_73722637)) 
		(loaded ?goods_73722638 ?truck_73722640 ?level_73722639) 
		(loaded ?goods_73722638 ?truck_73722641 ?level_73722642)
	)
)

(:action act_act_tpp-propositional_302210_302884
	:parameters ( ?level_400723734 - level ?level_400723738 - level ?truck_400723739 - truck ?truck_400723737 - truck ?level_400723736 - level ?goods_400723735 - goods)
	:precondition (and 
			(loaded ?goods_400723735 ?truck_400723737 ?level_400723738) 
			(loaded ?goods_400723735 ?truck_400723739 ?level_400723736) 
			(stored ?goods_400723735 ?level_400723734) 
			(stored ?goods_400723735 ?level_400723738)
	)
	:effect (and 
		(loaded ?goods_400723735 ?truck_400723739 ?level_400723734) 
		(not (loaded ?goods_400723735 ?truck_400723737 ?level_400723734)) 
		(next ?level_400723736 ?level_400723734) 
		(next ?level_400723736 ?level_400723738)
	)
)

(:action act_act_tpp-propositional_302211_302885
	:parameters ( ?level_51208418 - level ?goods_51208416 - goods ?truck_51208419 - truck ?place_51208417 - place ?place_51208415 - place)
	:precondition (and 
			(connected ?place_51208415 ?place_51208417) 
			(loaded ?goods_51208416 ?truck_51208419 ?level_51208418)
	)
	:effect (and 
		(not (at ?truck_51208419 ?place_51208417)) 
		(not (at ?truck_51208419 ?place_51208415)) 
		(connected ?place_51208417 ?place_51208415) 
		(not (stored ?goods_51208416 ?level_51208418))
	)
)

(:action act_act_tpp-propositional_302211_302886
	:parameters ( ?level_51208418 - level ?goods_51208416 - goods ?truck_51208419 - truck ?place_51208417 - place ?place_51208415 - place)
	:precondition (and 
			(connected ?place_51208415 ?place_51208417) 
			(loaded ?goods_51208416 ?truck_51208419 ?level_51208418)
	)
	:effect (and 
		(at ?truck_51208419 ?place_51208417) 
		(at ?truck_51208419 ?place_51208415) 
		(stored ?goods_51208416 ?level_51208418)
	)
)

(:action act_act_tpp-propositional_302211_302887
	:parameters ( ?level_51208418 - level ?goods_51208416 - goods ?truck_51208419 - truck ?place_51208417 - place ?place_51208415 - place)
	:precondition (and 
			(connected ?place_51208415 ?place_51208417) 
			(loaded ?goods_51208416 ?truck_51208419 ?level_51208418)
	)
	:effect (and 
		(at ?truck_51208419 ?place_51208417) 
		(not (at ?truck_51208419 ?place_51208415)) 
		(connected ?place_51208417 ?place_51208415) 
		(stored ?goods_51208416 ?level_51208418)
	)
)

(:action act_act_tpp-propositional_302211_302888
	:parameters ( ?level_51208418 - level ?goods_51208416 - goods ?truck_51208419 - truck ?place_51208417 - place ?place_51208415 - place)
	:precondition (and 
			(connected ?place_51208415 ?place_51208417) 
			(loaded ?goods_51208416 ?truck_51208419 ?level_51208418)
	)
	:effect (and 
		(not (at ?truck_51208419 ?place_51208417)) 
		(at ?truck_51208419 ?place_51208415) 
		(not (stored ?goods_51208416 ?level_51208418))
	)
)

(:action act_act_tpp-propositional_302212_302889
	:parameters ( ?level_15796990 - level ?market_15796991 - market ?level_15796988 - level ?truck_15796987 - truck ?level_15796989 - level ?goods_15796992 - goods)
	:precondition (and 
			(loaded ?goods_15796992 ?truck_15796987 ?level_15796988) 
			(next ?level_15796990 ?level_15796989) 
			(next ?level_15796989 ?level_15796990) 
			(ready-to-load ?goods_15796992 ?market_15796991 ?level_15796988)
	)
	:effect (and 
		(loaded ?goods_15796992 ?truck_15796987 ?level_15796990) 
		(next ?level_15796989 ?level_15796988) 
		(not (ready-to-load ?goods_15796992 ?market_15796991 ?level_15796990))
	)
)

(:action act_act_tpp-propositional_302213_302890
	:parameters ( ?goods_298356691 - goods ?goods_298356694 - goods ?truck_298356693 - truck ?level_298356692 - level ?level_298356690 - level ?truck_298356689 - truck)
	:precondition (and 
			(loaded ?goods_298356691 ?truck_298356689 ?level_298356692) 
			(loaded ?goods_298356694 ?truck_298356689 ?level_298356690) 
			(loaded ?goods_298356691 ?truck_298356693 ?level_298356690)
	)
	:effect (and 
		(not (loaded ?goods_298356694 ?truck_298356693 ?level_298356690)) 
		(not (loaded ?goods_298356691 ?truck_298356689 ?level_298356690)) 
		(next ?level_298356690 ?level_298356692)
	)
)

(:action act_act_tpp-propositional_302214_302891
	:parameters ( ?level_293426039 - level ?goods_293426036 - goods ?level_293426040 - level ?truck_293426038 - truck ?goods_293426037 - goods)
	:precondition (and 
			(loaded ?goods_293426037 ?truck_293426038 ?level_293426040) 
			(loaded ?goods_293426036 ?truck_293426038 ?level_293426040) 
			(loaded ?goods_293426037 ?truck_293426038 ?level_293426039) 
			(next ?level_293426040 ?level_293426039) 
			(next ?level_293426039 ?level_293426040)
	)
	:effect (and 
		(loaded ?goods_293426036 ?truck_293426038 ?level_293426039) 
		(stored ?goods_293426037 ?level_293426040)
	)
)

(:action act_act_tpp-propositional_302215_302892
	:parameters ( ?truck_576975046 - truck ?market_576975043 - market ?level_576975047 - level ?goods_576975042 - goods ?level_576975045 - level ?level_576975044 - level)
	:precondition (and 
			(loaded ?goods_576975042 ?truck_576975046 ?level_576975047) 
			(loaded ?goods_576975042 ?truck_576975046 ?level_576975044) 
			(ready-to-load ?goods_576975042 ?market_576975043 ?level_576975045)
	)
	:effect (and 
		(loaded ?goods_576975042 ?truck_576975046 ?level_576975045) 
		(next ?level_576975045 ?level_576975044) 
		(next ?level_576975045 ?level_576975047) 
		(next ?level_576975044 ?level_576975047) 
		(next ?level_576975047 ?level_576975045) 
		(ready-to-load ?goods_576975042 ?market_576975043 ?level_576975047)
	)
)

(:action act_act_tpp-propositional_302216_302893
	:parameters ( ?level_57694529 - level ?level_57694528 - level ?truck_57694531 - truck ?level_57694530 - level ?goods_57694532 - goods)
	:precondition (and 
			(loaded ?goods_57694532 ?truck_57694531 ?level_57694529) 
			(loaded ?goods_57694532 ?truck_57694531 ?level_57694530) 
			(next ?level_57694530 ?level_57694529) 
			(next ?level_57694528 ?level_57694530)
	)
	:effect (and 
		(loaded ?goods_57694532 ?truck_57694531 ?level_57694528) 
		(next ?level_57694529 ?level_57694530)
	)
)

(:action act_act_tpp-propositional_302217_302894
	:parameters ( ?level_310394619 - level ?goods_310394620 - goods ?level_310394621 - level ?level_310394622 - level ?truck_310394618 - truck)
	:precondition (and 
			(loaded ?goods_310394620 ?truck_310394618 ?level_310394621) 
			(loaded ?goods_310394620 ?truck_310394618 ?level_310394622) 
			(next ?level_310394621 ?level_310394619) 
			(next ?level_310394622 ?level_310394619)
	)
	:effect (and 
		(loaded ?goods_310394620 ?truck_310394618 ?level_310394619) 
		(next ?level_310394622 ?level_310394621)
	)
)

(:action act_act_tpp-propositional_302218_302895
	:parameters ( ?place_584256381 - place ?level_584256382 - level ?place_584256383 - place ?truck_584256385 - truck ?goods_584256386 - goods ?truck_584256384 - truck)
	:precondition (and 
			(at ?truck_584256384 ?place_584256381) 
			(at ?truck_584256385 ?place_584256383) 
			(loaded ?goods_584256386 ?truck_584256385 ?level_584256382)
	)
	:effect (and 
		(at ?truck_584256384 ?place_584256383) 
		(at ?truck_584256385 ?place_584256381) 
		(not (loaded ?goods_584256386 ?truck_584256384 ?level_584256382)) 
		(not (stored ?goods_584256386 ?level_584256382))
	)
)

(:action act_act_tpp-propositional_302219_302896
	:parameters ( ?goods_397071192 - goods ?goods_397071191 - goods ?level_397071190 - level ?truck_397071193 - truck ?level_397071194 - level)
	:precondition (and 
			(loaded ?goods_397071192 ?truck_397071193 ?level_397071194) 
			(next ?level_397071190 ?level_397071194) 
			(stored ?goods_397071192 ?level_397071190) 
			(stored ?goods_397071191 ?level_397071190)
	)
	:effect (and 
		(not (loaded ?goods_397071192 ?truck_397071193 ?level_397071190)) 
		(not (loaded ?goods_397071191 ?truck_397071193 ?level_397071194)) 
		(next ?level_397071194 ?level_397071190)
	)
)

(:action act_act_tpp-propositional_302220_302897
	:parameters ( ?level_189478623 - level ?level_189478625 - level ?place_189478622 - place ?place_189478624 - place)
	:precondition (and 
			(connected ?place_189478622 ?place_189478624) 
			(next ?level_189478625 ?level_189478623)
	)
	:effect (and 
		(connected ?place_189478624 ?place_189478622) 
		(next ?level_189478623 ?level_189478625)
	)
)

(:action act_act_tpp-propositional_302221_302898
	:parameters ( ?market_138279107 - market ?level_138279103 - level ?level_138279104 - level ?truck_138279102 - truck ?goods_138279106 - goods ?goods_138279105 - goods)
	:precondition (and 
			(loaded ?goods_138279105 ?truck_138279102 ?level_138279103) 
			(ready-to-load ?goods_138279106 ?market_138279107 ?level_138279104) 
			(stored ?goods_138279105 ?level_138279103) 
			(stored ?goods_138279105 ?level_138279104)
	)
	:effect (and 
		(loaded ?goods_138279106 ?truck_138279102 ?level_138279103) 
		(next ?level_138279104 ?level_138279103) 
		(not (ready-to-load ?goods_138279105 ?market_138279107 ?level_138279104))
	)
)

(:action act_act_tpp-propositional_302222_302899
	:parameters ( ?market_366063774 - market ?truck_366063775 - truck ?goods_366063779 - goods ?level_366063776 - level ?level_366063777 - level ?level_366063778 - level)
	:precondition (and 
			(loaded ?goods_366063779 ?truck_366063775 ?level_366063777) 
			(loaded ?goods_366063779 ?truck_366063775 ?level_366063776) 
			(next ?level_366063777 ?level_366063778) 
			(ready-to-load ?goods_366063779 ?market_366063774 ?level_366063777)
	)
	:effect (and 
		(not (loaded ?goods_366063779 ?truck_366063775 ?level_366063778)) 
		(next ?level_366063777 ?level_366063776) 
		(next ?level_366063776 ?level_366063777) 
		(not (ready-to-load ?goods_366063779 ?market_366063774 ?level_366063776))
	)
)

(:action act_act_tpp-propositional_302223_302900
	:parameters ( ?market_383476003 - market ?level_383476004 - level ?truck_383476000 - truck ?level_383476001 - level ?goods_383476005 - goods ?level_383476002 - level)
	:precondition (and 
			(loaded ?goods_383476005 ?truck_383476000 ?level_383476004) 
			(ready-to-load ?goods_383476005 ?market_383476003 ?level_383476001) 
			(stored ?goods_383476005 ?level_383476001) 
			(stored ?goods_383476005 ?level_383476002)
	)
	:effect (and 
		(loaded ?goods_383476005 ?truck_383476000 ?level_383476001) 
		(next ?level_383476002 ?level_383476004) 
		(not (ready-to-load ?goods_383476005 ?market_383476003 ?level_383476002))
	)
)

(:action act_act_tpp-propositional_302224_302901
	:parameters ( ?truck_371554681 - truck ?level_371554683 - level ?level_371554684 - level ?goods_371554679 - goods ?level_371554682 - level ?level_371554680 - level)
	:precondition (and 
			(loaded ?goods_371554679 ?truck_371554681 ?level_371554680) 
			(loaded ?goods_371554679 ?truck_371554681 ?level_371554682) 
			(loaded ?goods_371554679 ?truck_371554681 ?level_371554684) 
			(next ?level_371554680 ?level_371554683)
	)
	:effect (and 
		(not (loaded ?goods_371554679 ?truck_371554681 ?level_371554683)) 
		(next ?level_371554684 ?level_371554680) 
		(next ?level_371554680 ?level_371554682)
	)
)

(:action act_act_tpp-propositional_302225_302902
	:parameters ( ?level_93227782 - level ?goods_93227783 - goods ?truck_93227784 - truck ?level_93227785 - level)
	:precondition (and 
			(loaded ?goods_93227783 ?truck_93227784 ?level_93227785) 
			(stored ?goods_93227783 ?level_93227785) 
			(stored ?goods_93227783 ?level_93227782)
	)
	:effect (and 
		(not (loaded ?goods_93227783 ?truck_93227784 ?level_93227782)) 
		(next ?level_93227782 ?level_93227785) 
		(next ?level_93227785 ?level_93227782)
	)
)

(:action act_act_tpp-propositional_302225_302903
	:parameters ( ?level_93227782 - level ?goods_93227783 - goods ?truck_93227784 - truck ?level_93227785 - level)
	:precondition (and 
			(loaded ?goods_93227783 ?truck_93227784 ?level_93227785) 
			(stored ?goods_93227783 ?level_93227785) 
			(stored ?goods_93227783 ?level_93227782)
	)
	:effect (and 
		(loaded ?goods_93227783 ?truck_93227784 ?level_93227782) 
		(next ?level_93227782 ?level_93227785) 
		(next ?level_93227785 ?level_93227782)
	)
)

(:action act_act_tpp-propositional_302226_302904
	:parameters ( ?level_419548024 - level ?level_419548023 - level ?level_419548025 - level ?truck_419548022 - truck ?level_419548020 - level ?goods_419548021 - goods)
	:precondition (and 
			(loaded ?goods_419548021 ?truck_419548022 ?level_419548025) 
			(loaded ?goods_419548021 ?truck_419548022 ?level_419548024) 
			(next ?level_419548023 ?level_419548025) 
			(next ?level_419548023 ?level_419548020) 
			(stored ?goods_419548021 ?level_419548020)
	)
	:effect (and 
		(not (loaded ?goods_419548021 ?truck_419548022 ?level_419548023)) 
		(next ?level_419548020 ?level_419548025) 
		(stored ?goods_419548021 ?level_419548024)
	)
)

(:action act_act_tpp-propositional_302227_302905
	:parameters ( ?goods_202577036 - goods ?level_202577037 - level ?truck_202577038 - truck ?level_202577033 - level ?level_202577035 - level ?level_202577034 - level)
	:precondition (and 
			(loaded ?goods_202577036 ?truck_202577038 ?level_202577035) 
			(loaded ?goods_202577036 ?truck_202577038 ?level_202577033) 
			(next ?level_202577035 ?level_202577034) 
			(next ?level_202577033 ?level_202577037) 
			(stored ?goods_202577036 ?level_202577034)
	)
	:effect (and 
		(loaded ?goods_202577036 ?truck_202577038 ?level_202577037) 
		(next ?level_202577034 ?level_202577035) 
		(next ?level_202577033 ?level_202577034)
	)
)

(:action act_act_tpp-propositional_302228_302906
	:parameters ( ?goods_428606617 - goods ?level_428606614 - level ?level_428606615 - level ?level_428606616 - level ?truck_428606618 - truck)
	:precondition (and 
			(loaded ?goods_428606617 ?truck_428606618 ?level_428606614) 
			(loaded ?goods_428606617 ?truck_428606618 ?level_428606615) 
			(next ?level_428606616 ?level_428606614) 
			(next ?level_428606615 ?level_428606614) 
			(stored ?goods_428606617 ?level_428606615)
	)
	:effect (and 
		(loaded ?goods_428606617 ?truck_428606618 ?level_428606616) 
		(next ?level_428606615 ?level_428606616) 
		(next ?level_428606614 ?level_428606616)
	)
)

(:action act_act_tpp-propositional_302229_302907
	:parameters ( ?level_239375977 - level ?level_239375979 - level ?truck_239375981 - truck ?market_239375978 - market ?goods_239375980 - goods ?goods_239375982 - goods)
	:precondition (and 
			(loaded ?goods_239375980 ?truck_239375981 ?level_239375977) 
			(loaded ?goods_239375982 ?truck_239375981 ?level_239375977) 
			(next ?level_239375979 ?level_239375977) 
			(ready-to-load ?goods_239375980 ?market_239375978 ?level_239375977)
	)
	:effect (and 
		(not (loaded ?goods_239375982 ?truck_239375981 ?level_239375979)) 
		(ready-to-load ?goods_239375982 ?market_239375978 ?level_239375977) 
		(stored ?goods_239375980 ?level_239375979)
	)
)

(:action act_act_tpp-propositional_302230_302908
	:parameters ( ?level_150942272 - level ?goods_150942267 - goods ?truck_150942268 - truck ?level_150942269 - level ?truck_150942270 - truck ?goods_150942271 - goods)
	:precondition (and 
			(loaded ?goods_150942271 ?truck_150942268 ?level_150942269) 
			(loaded ?goods_150942267 ?truck_150942270 ?level_150942269) 
			(next ?level_150942269 ?level_150942272) 
			(stored ?goods_150942267 ?level_150942269) 
			(stored ?goods_150942271 ?level_150942272)
	)
	:effect (and 
		(loaded ?goods_150942271 ?truck_150942270 ?level_150942269) 
		(loaded ?goods_150942267 ?truck_150942268 ?level_150942272)
	)
)

(:action act_act_tpp-propositional_302231_302909
	:parameters ( ?level_560674305 - level ?goods_560674302 - goods ?truck_560674303 - truck ?goods_560674304 - goods ?level_560674301 - level)
	:precondition (and 
			(loaded ?goods_560674304 ?truck_560674303 ?level_560674301) 
			(next ?level_560674305 ?level_560674301) 
			(stored ?goods_560674302 ?level_560674305) 
			(stored ?goods_560674302 ?level_560674301)
	)
	:effect (and 
		(not (loaded ?goods_560674302 ?truck_560674303 ?level_560674305)) 
		(loaded ?goods_560674302 ?truck_560674303 ?level_560674301) 
		(stored ?goods_560674304 ?level_560674301)
	)
)

(:action act_act_tpp-propositional_302231_302910
	:parameters ( ?level_560674305 - level ?goods_560674302 - goods ?level_560674301 - level ?goods_560674304 - goods ?truck_560674303 - truck)
	:precondition (and 
			(loaded ?goods_560674304 ?truck_560674303 ?level_560674301) 
			(next ?level_560674305 ?level_560674301) 
			(stored ?goods_560674302 ?level_560674305) 
			(stored ?goods_560674302 ?level_560674301)
	)
	:effect (and 
		(not (loaded ?goods_560674302 ?truck_560674303 ?level_560674301)) 
		(stored ?goods_560674304 ?level_560674305)
	)
)

(:action act_act_tpp-propositional_302232_302911
	:parameters ( ?place_74702466 - place ?truck_74702462 - truck ?level_74702467 - level ?goods_74702465 - goods ?level_74702464 - level ?truck_74702463 - truck)
	:precondition (and 
			(at ?truck_74702462 ?place_74702466) 
			(loaded ?goods_74702465 ?truck_74702463 ?level_74702467) 
			(loaded ?goods_74702465 ?truck_74702462 ?level_74702464)
	)
	:effect (and 
		(at ?truck_74702463 ?place_74702466) 
		(loaded ?goods_74702465 ?truck_74702462 ?level_74702467) 
		(next ?level_74702467 ?level_74702464) 
		(next ?level_74702464 ?level_74702467) 
		(not (stored ?goods_74702465 ?level_74702464)) 
		(stored ?goods_74702465 ?level_74702467)
	)
)

(:action act_act_tpp-propositional_302233_302912
	:parameters ( ?goods_137660361 - goods ?level_137660366 - level ?level_137660364 - level ?level_137660363 - level ?goods_137660362 - goods ?truck_137660365 - truck)
	:precondition (and 
			(loaded ?goods_137660362 ?truck_137660365 ?level_137660366) 
			(loaded ?goods_137660361 ?truck_137660365 ?level_137660364) 
			(next ?level_137660363 ?level_137660366) 
			(stored ?goods_137660361 ?level_137660366)
	)
	:effect (and 
		(loaded ?goods_137660362 ?truck_137660365 ?level_137660364) 
		(loaded ?goods_137660361 ?truck_137660365 ?level_137660366) 
		(next ?level_137660364 ?level_137660363)
	)
)

(:action act_act_tpp-propositional_302234_302913
	:parameters ( ?truck_351231947 - truck ?level_351231950 - level ?goods_351231949 - goods ?level_351231948 - level ?goods_351231951 - goods)
	:precondition (and 
			(loaded ?goods_351231951 ?truck_351231947 ?level_351231950) 
			(loaded ?goods_351231949 ?truck_351231947 ?level_351231950) 
			(next ?level_351231948 ?level_351231950) 
			(stored ?goods_351231951 ?level_351231948)
	)
	:effect (and 
		(loaded ?goods_351231951 ?truck_351231947 ?level_351231948) 
		(loaded ?goods_351231949 ?truck_351231947 ?level_351231948) 
		(next ?level_351231950 ?level_351231948)
	)
)

(:action act_act_tpp-propositional_302235_302914
	:parameters ( ?level_357033813 - level ?level_357033812 - level ?goods_357033808 - goods ?truck_357033810 - truck ?truck_357033811 - truck ?level_357033809 - level)
	:precondition (and 
			(loaded ?goods_357033808 ?truck_357033810 ?level_357033809) 
			(loaded ?goods_357033808 ?truck_357033811 ?level_357033812) 
			(next ?level_357033809 ?level_357033813) 
			(stored ?goods_357033808 ?level_357033813)
	)
	:effect (and 
		(loaded ?goods_357033808 ?truck_357033811 ?level_357033809) 
		(loaded ?goods_357033808 ?truck_357033810 ?level_357033812) 
		(next ?level_357033812 ?level_357033813)
	)
)

(:action act_act_tpp-propositional_302236_302915
	:parameters ( ?level_513798322 - level ?goods_513798326 - goods ?level_513798325 - level ?level_513798327 - level ?truck_513798324 - truck ?goods_513798323 - goods)
	:precondition (and 
			(loaded ?goods_513798323 ?truck_513798324 ?level_513798325) 
			(loaded ?goods_513798326 ?truck_513798324 ?level_513798325) 
			(next ?level_513798322 ?level_513798327) 
			(stored ?goods_513798326 ?level_513798325)
	)
	:effect (and 
		(loaded ?goods_513798323 ?truck_513798324 ?level_513798327) 
		(loaded ?goods_513798326 ?truck_513798324 ?level_513798322) 
		(next ?level_513798322 ?level_513798325)
	)
)

(:action act_act_tpp-propositional_302237_302916
	:parameters ( ?level_398839430 - level ?goods_398839429 - goods ?level_398839431 - level ?level_398839427 - level ?market_398839428 - market)
	:precondition (and 
			(next ?level_398839427 ?level_398839430) 
			(next ?level_398839431 ?level_398839427) 
			(ready-to-load ?goods_398839429 ?market_398839428 ?level_398839431)
	)
	:effect (and 
		(next ?level_398839430 ?level_398839431) 
		(next ?level_398839427 ?level_398839431) 
		(not (ready-to-load ?goods_398839429 ?market_398839428 ?level_398839430)) 
		(not (ready-to-load ?goods_398839429 ?market_398839428 ?level_398839427)) 
		(not (stored ?goods_398839429 ?level_398839430))
	)
)

(:action act_act_tpp-propositional_302238_302917
	:parameters ( ?level_310374583 - level ?level_310374586 - level ?truck_310374585 - truck ?level_310374582 - level ?goods_310374584 - goods)
	:precondition (and 
			(loaded ?goods_310374584 ?truck_310374585 ?level_310374583) 
			(next ?level_310374582 ?level_310374583) 
			(next ?level_310374586 ?level_310374583) 
			(stored ?goods_310374584 ?level_310374582)
	)
	:effect (and 
		(loaded ?goods_310374584 ?truck_310374585 ?level_310374586) 
		(next ?level_310374586 ?level_310374582) 
		(stored ?goods_310374584 ?level_310374583) 
		(not (stored ?goods_310374584 ?level_310374586))
	)
)

(:action act_act_tpp-propositional_302239_302918
	:parameters ( ?goods_131029110 - goods ?level_131029111 - level ?level_131029112 - level ?market_131029109 - market ?level_131029113 - level ?truck_131029108 - truck)
	:precondition (and 
			(loaded ?goods_131029110 ?truck_131029108 ?level_131029112) 
			(next ?level_131029112 ?level_131029113) 
			(next ?level_131029112 ?level_131029111) 
			(ready-to-load ?goods_131029110 ?market_131029109 ?level_131029112)
	)
	:effect (and 
		(loaded ?goods_131029110 ?truck_131029108 ?level_131029113) 
		(next ?level_131029113 ?level_131029112) 
		(ready-to-load ?goods_131029110 ?market_131029109 ?level_131029113) 
		(not (ready-to-load ?goods_131029110 ?market_131029109 ?level_131029111))
	)
)

(:action act_act_tpp-propositional_302240_302919
	:parameters ( ?level_561377294 - level ?goods_561377297 - goods ?goods_561377296 - goods ?truck_561377295 - truck ?level_561377293 - level)
	:precondition (and 
			(loaded ?goods_561377296 ?truck_561377295 ?level_561377294) 
			(loaded ?goods_561377296 ?truck_561377295 ?level_561377293) 
			(loaded ?goods_561377297 ?truck_561377295 ?level_561377293)
	)
	:effect (and 
		(loaded ?goods_561377297 ?truck_561377295 ?level_561377294) 
		(next ?level_561377293 ?level_561377294) 
		(stored ?goods_561377296 ?level_561377294)
	)
)

(:action act_act_tpp-propositional_302241_302920
	:parameters ( ?goods_506927523 - goods ?market_506927521 - market ?goods_506927520 - goods ?level_506927522 - level ?level_506927518 - level ?truck_506927519 - truck)
	:precondition (and 
			(loaded ?goods_506927520 ?truck_506927519 ?level_506927522) 
			(loaded ?goods_506927523 ?truck_506927519 ?level_506927518) 
			(ready-to-load ?goods_506927520 ?market_506927521 ?level_506927518)
	)
	:effect (and 
		(not (loaded ?goods_506927520 ?truck_506927519 ?level_506927518)) 
		(not (ready-to-load ?goods_506927523 ?market_506927521 ?level_506927522)) 
		(stored ?goods_506927520 ?level_506927518)
	)
)

(:action act_act_tpp-propositional_302241_302921
	:parameters ( ?goods_506927523 - goods ?goods_506927520 - goods ?market_506927521 - market ?level_506927522 - level ?level_506927518 - level ?truck_506927519 - truck)
	:precondition (and 
			(loaded ?goods_506927520 ?truck_506927519 ?level_506927522) 
			(loaded ?goods_506927523 ?truck_506927519 ?level_506927518) 
			(ready-to-load ?goods_506927520 ?market_506927521 ?level_506927518)
	)
	:effect (and 
		(not (loaded ?goods_506927523 ?truck_506927519 ?level_506927522)) 
		(not (ready-to-load ?goods_506927520 ?market_506927521 ?level_506927522)) 
		(not (stored ?goods_506927520 ?level_506927518))
	)
)

(:action act_act_tpp-propositional_302241_302922
	:parameters ( ?goods_506927523 - goods ?goods_506927520 - goods ?market_506927521 - market ?level_506927522 - level ?level_506927518 - level ?truck_506927519 - truck)
	:precondition (and 
			(loaded ?goods_506927520 ?truck_506927519 ?level_506927522) 
			(loaded ?goods_506927523 ?truck_506927519 ?level_506927518) 
			(ready-to-load ?goods_506927520 ?market_506927521 ?level_506927518)
	)
	:effect (and 
		(loaded ?goods_506927520 ?truck_506927519 ?level_506927518) 
		(not (ready-to-load ?goods_506927523 ?market_506927521 ?level_506927522)) 
		(stored ?goods_506927520 ?level_506927518)
	)
)

(:action act_act_tpp-propositional_302242_302923
	:parameters ( ?truck_201937608 - truck ?truck_201937606 - truck ?level_201937605 - level ?level_201937609 - level ?level_201937607 - level ?goods_201937610 - goods)
	:precondition (and 
			(loaded ?goods_201937610 ?truck_201937606 ?level_201937609) 
			(loaded ?goods_201937610 ?truck_201937608 ?level_201937607) 
			(next ?level_201937605 ?level_201937609)
	)
	:effect (and 
		(loaded ?goods_201937610 ?truck_201937608 ?level_201937609) 
		(loaded ?goods_201937610 ?truck_201937606 ?level_201937605) 
		(next ?level_201937607 ?level_201937605) 
		(stored ?goods_201937610 ?level_201937607)
	)
)

(:action act_act_tpp-propositional_302243_302924
	:parameters ( ?goods_389597401 - goods ?truck_389597400 - truck ?truck_389597405 - truck ?level_389597403 - level ?level_389597402 - level ?goods_389597404 - goods)
	:precondition (and 
			(loaded ?goods_389597404 ?truck_389597400 ?level_389597402) 
			(loaded ?goods_389597401 ?truck_389597405 ?level_389597403) 
			(next ?level_389597403 ?level_389597402)
	)
	:effect (and 
		(loaded ?goods_389597401 ?truck_389597400 ?level_389597403) 
		(loaded ?goods_389597401 ?truck_389597405 ?level_389597402) 
		(loaded ?goods_389597404 ?truck_389597400 ?level_389597403) 
		(next ?level_389597402 ?level_389597403) 
		(stored ?goods_389597404 ?level_389597403)
	)
)

(:action act_act_tpp-propositional_302244_302925
	:parameters ( ?level_289308359 - level ?truck_289308363 - truck ?goods_289308358 - goods ?level_289308362 - level ?level_289308361 - level ?level_289308360 - level)
	:precondition (and 
			(loaded ?goods_289308358 ?truck_289308363 ?level_289308359) 
			(next ?level_289308362 ?level_289308359) 
			(next ?level_289308360 ?level_289308361) 
			(stored ?goods_289308358 ?level_289308361)
	)
	:effect (and 
		(not (loaded ?goods_289308358 ?truck_289308363 ?level_289308360)) 
		(next ?level_289308359 ?level_289308361) 
		(not (stored ?goods_289308358 ?level_289308362))
	)
)

(:action act_act_tpp-propositional_302245_302926
	:parameters ( ?goods_154627502 - goods ?market_154627498 - market ?level_154627499 - level ?truck_154627497 - truck ?goods_154627500 - goods ?level_154627501 - level)
	:precondition (and 
			(loaded ?goods_154627502 ?truck_154627497 ?level_154627499) 
			(ready-to-load ?goods_154627502 ?market_154627498 ?level_154627499) 
			(ready-to-load ?goods_154627500 ?market_154627498 ?level_154627501)
	)
	:effect (and 
		(not (loaded ?goods_154627502 ?truck_154627497 ?level_154627501)) 
		(next ?level_154627501 ?level_154627499) 
		(next ?level_154627499 ?level_154627501) 
		(ready-to-load ?goods_154627500 ?market_154627498 ?level_154627499)
	)
)

(:action act_act_tpp-propositional_302246_302927
	:parameters ( ?goods_501443686 - goods ?market_501443685 - market ?level_501443687 - level ?level_501443684 - level)
	:precondition (and 
			(ready-to-load ?goods_501443686 ?market_501443685 ?level_501443687) 
			(stored ?goods_501443686 ?level_501443684) 
			(stored ?goods_501443686 ?level_501443687)
	)
	:effect (and 
		(next ?level_501443687 ?level_501443684) 
		(next ?level_501443684 ?level_501443687) 
		(not (ready-to-load ?goods_501443686 ?market_501443685 ?level_501443684))
	)
)

(:action act_act_tpp-propositional_302246_302928
	:parameters ( ?goods_501443686 - goods ?market_501443685 - market ?level_501443687 - level ?level_501443684 - level)
	:precondition (and 
			(ready-to-load ?goods_501443686 ?market_501443685 ?level_501443687) 
			(stored ?goods_501443686 ?level_501443684) 
			(stored ?goods_501443686 ?level_501443687)
	)
	:effect (and 
		(next ?level_501443687 ?level_501443684) 
		(ready-to-load ?goods_501443686 ?market_501443685 ?level_501443684)
	)
)

(:action act_act_tpp-propositional_302247_302929
	:parameters ( ?truck_150129554 - truck ?goods_150129555 - goods ?level_150129552 - level ?level_150129553 - level ?level_150129556 - level)
	:precondition (and 
			(loaded ?goods_150129555 ?truck_150129554 ?level_150129552) 
			(next ?level_150129556 ?level_150129553) 
			(next ?level_150129552 ?level_150129553) 
			(stored ?goods_150129555 ?level_150129552)
	)
	:effect (and 
		(not (loaded ?goods_150129555 ?truck_150129554 ?level_150129553)) 
		(next ?level_150129556 ?level_150129552)
	)
)

(:action act_act_tpp-propositional_302247_302930
	:parameters ( ?truck_150129554 - truck ?goods_150129555 - goods ?level_150129552 - level ?level_150129553 - level ?level_150129556 - level)
	:precondition (and 
			(loaded ?goods_150129555 ?truck_150129554 ?level_150129552) 
			(next ?level_150129556 ?level_150129553) 
			(next ?level_150129552 ?level_150129553) 
			(stored ?goods_150129555 ?level_150129552)
	)
	:effect (and 
		(loaded ?goods_150129555 ?truck_150129554 ?level_150129553) 
		(not (loaded ?goods_150129555 ?truck_150129554 ?level_150129556)) 
		(next ?level_150129556 ?level_150129552)
	)
)

(:action act_act_tpp-propositional_302248_302931
	:parameters ( ?truck_533239213 - truck ?goods_533239215 - goods ?place_533239214 - place ?truck_533239212 - truck ?level_533239216 - level ?level_533239211 - level)
	:precondition (and 
			(at ?truck_533239212 ?place_533239214) 
			(loaded ?goods_533239215 ?truck_533239213 ?level_533239211) 
			(next ?level_533239216 ?level_533239211) 
			(next ?level_533239211 ?level_533239216)
	)
	:effect (and 
		(at ?truck_533239213 ?place_533239214) 
		(loaded ?goods_533239215 ?truck_533239212 ?level_533239211) 
		(stored ?goods_533239215 ?level_533239216) 
		(stored ?goods_533239215 ?level_533239211)
	)
)

(:action act_act_tpp-propositional_302249_302932
	:parameters ( ?place_13630181 - place ?truck_13630180 - truck ?level_13630182 - level ?place_13630179 - place ?goods_13630183 - goods)
	:precondition (and 
			(at ?truck_13630180 ?place_13630181) 
			(connected ?place_13630181 ?place_13630179) 
			(stored ?goods_13630183 ?level_13630182)
	)
	:effect (and 
		(connected ?place_13630179 ?place_13630181) 
		(loaded ?goods_13630183 ?truck_13630180 ?level_13630182)
	)
)

(:action act_act_tpp-propositional_302250_302933
	:parameters ( ?goods_60491267 - goods ?level_60491262 - level ?level_60491264 - level ?market_60491266 - market ?level_60491265 - level ?truck_60491263 - truck)
	:precondition (and 
			(loaded ?goods_60491267 ?truck_60491263 ?level_60491262) 
			(next ?level_60491264 ?level_60491265) 
			(ready-to-load ?goods_60491267 ?market_60491266 ?level_60491264)
	)
	:effect (and 
		(not (loaded ?goods_60491267 ?truck_60491263 ?level_60491265)) 
		(loaded ?goods_60491267 ?truck_60491263 ?level_60491264) 
		(next ?level_60491264 ?level_60491262) 
		(ready-to-load ?goods_60491267 ?market_60491266 ?level_60491262) 
		(ready-to-load ?goods_60491267 ?market_60491266 ?level_60491265) 
		(not (stored ?goods_60491267 ?level_60491265))
	)
)

(:action act_act_tpp-propositional_302250_302934
	:parameters ( ?goods_60491267 - goods ?level_60491262 - level ?level_60491264 - level ?market_60491266 - market ?level_60491265 - level ?truck_60491263 - truck)
	:precondition (and 
			(loaded ?goods_60491267 ?truck_60491263 ?level_60491262) 
			(next ?level_60491264 ?level_60491265) 
			(ready-to-load ?goods_60491267 ?market_60491266 ?level_60491264)
	)
	:effect (and 
		(loaded ?goods_60491267 ?truck_60491263 ?level_60491265) 
		(not (loaded ?goods_60491267 ?truck_60491263 ?level_60491264)) 
		(next ?level_60491262 ?level_60491264) 
		(ready-to-load ?goods_60491267 ?market_60491266 ?level_60491262) 
		(not (ready-to-load ?goods_60491267 ?market_60491266 ?level_60491265)) 
		(stored ?goods_60491267 ?level_60491265)
	)
)

(:action act_act_tpp-propositional_302251_302935
	:parameters ( ?goods_211601184 - goods ?level_211601182 - level ?level_211601183 - level ?truck_211601181 - truck ?truck_211601180 - truck)
	:precondition (and 
			(loaded ?goods_211601184 ?truck_211601180 ?level_211601183) 
			(loaded ?goods_211601184 ?truck_211601181 ?level_211601182) 
			(next ?level_211601182 ?level_211601183) 
			(stored ?goods_211601184 ?level_211601182)
	)
	:effect (and 
		(loaded ?goods_211601184 ?truck_211601181 ?level_211601183) 
		(not (loaded ?goods_211601184 ?truck_211601180 ?level_211601182)) 
		(stored ?goods_211601184 ?level_211601183)
	)
)

(:action act_act_tpp-propositional_302251_302936
	:parameters ( ?goods_211601184 - goods ?level_211601182 - level ?level_211601183 - level ?truck_211601181 - truck ?truck_211601180 - truck)
	:precondition (and 
			(loaded ?goods_211601184 ?truck_211601180 ?level_211601183) 
			(loaded ?goods_211601184 ?truck_211601181 ?level_211601182) 
			(next ?level_211601182 ?level_211601183) 
			(stored ?goods_211601184 ?level_211601182)
	)
	:effect (and 
		(not (loaded ?goods_211601184 ?truck_211601181 ?level_211601183)) 
		(not (loaded ?goods_211601184 ?truck_211601180 ?level_211601182))
	)
)

(:action act_act_tpp-propositional_302252_302937
	:parameters ( ?level_98690783 - level ?level_98690784 - level ?truck_98690781 - truck ?goods_98690782 - goods ?level_98690785 - level)
	:precondition (and 
			(loaded ?goods_98690782 ?truck_98690781 ?level_98690784) 
			(loaded ?goods_98690782 ?truck_98690781 ?level_98690783) 
			(next ?level_98690783 ?level_98690784) 
			(next ?level_98690783 ?level_98690785) 
			(stored ?goods_98690782 ?level_98690784)
	)
	:effect (and 
		(loaded ?goods_98690782 ?truck_98690781 ?level_98690785) 
		(next ?level_98690784 ?level_98690785) 
		(stored ?goods_98690782 ?level_98690783)
	)
)

(:action act_act_tpp-propositional_302253_302938
	:parameters ( ?level_427242718 - level ?goods_427242722 - goods ?level_427242721 - level ?truck_427242719 - truck ?truck_427242720 - truck)
	:precondition (and 
			(loaded ?goods_427242722 ?truck_427242719 ?level_427242721) 
			(loaded ?goods_427242722 ?truck_427242720 ?level_427242718) 
			(stored ?goods_427242722 ?level_427242718) 
			(stored ?goods_427242722 ?level_427242721)
	)
	:effect (and 
		(not (loaded ?goods_427242722 ?truck_427242719 ?level_427242718)) 
		(loaded ?goods_427242722 ?truck_427242720 ?level_427242721)
	)
)

(:action act_act_tpp-propositional_302253_302939
	:parameters ( ?goods_427242722 - goods ?level_427242718 - level ?level_427242721 - level ?truck_427242719 - truck ?truck_427242720 - truck)
	:precondition (and 
			(loaded ?goods_427242722 ?truck_427242719 ?level_427242721) 
			(loaded ?goods_427242722 ?truck_427242720 ?level_427242718) 
			(stored ?goods_427242722 ?level_427242718) 
			(stored ?goods_427242722 ?level_427242721)
	)
	:effect (and 
		(loaded ?goods_427242722 ?truck_427242719 ?level_427242718) 
		(loaded ?goods_427242722 ?truck_427242720 ?level_427242721)
	)
)

(:action act_act_tpp-propositional_302254_302940
	:parameters ( ?level_86511824 - level ?level_86511825 - level ?truck_86511826 - truck ?level_86511827 - level ?goods_86511823 - goods)
	:precondition (and 
			(loaded ?goods_86511823 ?truck_86511826 ?level_86511824) 
			(next ?level_86511827 ?level_86511825) 
			(next ?level_86511825 ?level_86511827) 
			(stored ?goods_86511823 ?level_86511824) 
			(stored ?goods_86511823 ?level_86511827)
	)
	:effect (and 
		(loaded ?goods_86511823 ?truck_86511826 ?level_86511827) 
		(next ?level_86511824 ?level_86511827) 
		(stored ?goods_86511823 ?level_86511825)
	)
)

(:action act_act_tpp-propositional_302255_302941
	:parameters ( ?market_376170847 - market ?level_376170849 - level ?level_376170848 - level ?goods_376170846 - goods)
	:precondition (and 
			(next ?level_376170848 ?level_376170849) 
			(ready-to-load ?goods_376170846 ?market_376170847 ?level_376170848) 
			(stored ?goods_376170846 ?level_376170849) 
			(stored ?goods_376170846 ?level_376170848)
	)
	:effect (and 
		(next ?level_376170849 ?level_376170848) 
		(not (ready-to-load ?goods_376170846 ?market_376170847 ?level_376170849))
	)
)

(:action act_act_tpp-propositional_302256_302942
	:parameters ( ?truck_98350191 - truck ?place_98350186 - place ?level_98350190 - level ?goods_98350187 - goods ?level_98350188 - level ?truck_98350189 - truck)
	:precondition (and 
			(at ?truck_98350189 ?place_98350186) 
			(loaded ?goods_98350187 ?truck_98350191 ?level_98350190) 
			(next ?level_98350188 ?level_98350190) 
			(next ?level_98350190 ?level_98350188) 
			(stored ?goods_98350187 ?level_98350188)
	)
	:effect (and 
		(not (at ?truck_98350191 ?place_98350186)) 
		(not (loaded ?goods_98350187 ?truck_98350189 ?level_98350190)) 
		(loaded ?goods_98350187 ?truck_98350189 ?level_98350188)
	)
)

(:action act_act_tpp-propositional_302256_302943
	:parameters ( ?truck_98350191 - truck ?place_98350186 - place ?level_98350190 - level ?goods_98350187 - goods ?level_98350188 - level ?truck_98350189 - truck)
	:precondition (and 
			(at ?truck_98350189 ?place_98350186) 
			(loaded ?goods_98350187 ?truck_98350191 ?level_98350190) 
			(next ?level_98350188 ?level_98350190) 
			(next ?level_98350190 ?level_98350188) 
			(stored ?goods_98350187 ?level_98350188)
	)
	:effect (and 
		(at ?truck_98350191 ?place_98350186) 
		(loaded ?goods_98350187 ?truck_98350189 ?level_98350190) 
		(loaded ?goods_98350187 ?truck_98350191 ?level_98350188)
	)
)

(:action act_act_tpp-propositional_302257_302944
	:parameters ( ?level_494359120 - level ?truck_494359122 - truck ?level_494359121 - level ?level_494359123 - level ?goods_494359119 - goods)
	:precondition (and 
			(loaded ?goods_494359119 ?truck_494359122 ?level_494359120) 
			(stored ?goods_494359119 ?level_494359123) 
			(stored ?goods_494359119 ?level_494359120) 
			(stored ?goods_494359119 ?level_494359121)
	)
	:effect (and 
		(loaded ?goods_494359119 ?truck_494359122 ?level_494359121) 
		(next ?level_494359120 ?level_494359123)
	)
)

(:action act_act_tpp-propositional_302258_302945
	:parameters ( ?level_390803318 - level ?goods_390803317 - goods ?level_390803316 - level ?truck_390803314 - truck ?goods_390803313 - goods ?market_390803315 - market)
	:precondition (and 
			(loaded ?goods_390803313 ?truck_390803314 ?level_390803318) 
			(loaded ?goods_390803317 ?truck_390803314 ?level_390803316) 
			(ready-to-load ?goods_390803313 ?market_390803315 ?level_390803316) 
			(stored ?goods_390803313 ?level_390803318)
	)
	:effect (and 
		(loaded ?goods_390803317 ?truck_390803314 ?level_390803318) 
		(next ?level_390803318 ?level_390803316) 
		(ready-to-load ?goods_390803313 ?market_390803315 ?level_390803318) 
		(not (ready-to-load ?goods_390803317 ?market_390803315 ?level_390803318))
	)
)

(:action act_act_tpp-propositional_302259_302946
	:parameters ( ?level_393564354 - level ?goods_393564358 - goods ?level_393564356 - level ?truck_393564357 - truck ?place_393564355 - place ?place_393564353 - place)
	:precondition (and 
			(at ?truck_393564357 ?place_393564353) 
			(at ?truck_393564357 ?place_393564355) 
			(stored ?goods_393564358 ?level_393564354) 
			(stored ?goods_393564358 ?level_393564356)
	)
	:effect (and 
		(connected ?place_393564355 ?place_393564353) 
		(loaded ?goods_393564358 ?truck_393564357 ?level_393564354) 
		(next ?level_393564356 ?level_393564354)
	)
)

(:action act_act_tpp-propositional_302260_302947
	:parameters ( ?goods_302716770 - goods ?place_302716771 - place ?truck_302716774 - truck ?level_302716773 - level ?truck_302716772 - truck ?goods_302716769 - goods)
	:precondition (and 
			(at ?truck_302716774 ?place_302716771) 
			(loaded ?goods_302716770 ?truck_302716772 ?level_302716773) 
			(stored ?goods_302716769 ?level_302716773) 
			(stored ?goods_302716770 ?level_302716773)
	)
	:effect (and 
		(at ?truck_302716772 ?place_302716771) 
		(loaded ?goods_302716769 ?truck_302716772 ?level_302716773) 
		(loaded ?goods_302716770 ?truck_302716774 ?level_302716773)
	)
)

(:action act_act_tpp-propositional_302261_302948
	:parameters ( ?truck_85286760 - truck ?goods_85286761 - goods ?level_85286758 - level ?market_85286763 - market ?level_85286759 - level ?goods_85286762 - goods)
	:precondition (and 
			(loaded ?goods_85286762 ?truck_85286760 ?level_85286759) 
			(ready-to-load ?goods_85286761 ?market_85286763 ?level_85286758) 
			(ready-to-load ?goods_85286761 ?market_85286763 ?level_85286759)
	)
	:effect (and 
		(not (loaded ?goods_85286761 ?truck_85286760 ?level_85286758)) 
		(loaded ?goods_85286761 ?truck_85286760 ?level_85286759) 
		(next ?level_85286758 ?level_85286759) 
		(ready-to-load ?goods_85286762 ?market_85286763 ?level_85286759)
	)
)

(:action act_act_tpp-propositional_302262_302949
	:parameters ( ?truck_257799065 - truck ?level_257799062 - level ?goods_257799064 - goods ?level_257799061 - level ?level_257799063 - level ?market_257799066 - market)
	:precondition (and 
			(loaded ?goods_257799064 ?truck_257799065 ?level_257799061) 
			(next ?level_257799063 ?level_257799062) 
			(ready-to-load ?goods_257799064 ?market_257799066 ?level_257799061) 
			(stored ?goods_257799064 ?level_257799062)
	)
	:effect (and 
		(not (loaded ?goods_257799064 ?truck_257799065 ?level_257799063)) 
		(next ?level_257799061 ?level_257799063) 
		(next ?level_257799062 ?level_257799061) 
		(ready-to-load ?goods_257799064 ?market_257799066 ?level_257799063)
	)
)

(:action act_act_tpp-propositional_302263_302950
	:parameters ( ?level_465725982 - level ?level_465725981 - level ?level_465725985 - level ?goods_465725983 - goods ?truck_465725984 - truck)
	:precondition (and 
			(loaded ?goods_465725983 ?truck_465725984 ?level_465725982) 
			(next ?level_465725985 ?level_465725982) 
			(stored ?goods_465725983 ?level_465725981) 
			(stored ?goods_465725983 ?level_465725982)
	)
	:effect (and 
		(not (loaded ?goods_465725983 ?truck_465725984 ?level_465725981)) 
		(next ?level_465725982 ?level_465725985) 
		(stored ?goods_465725983 ?level_465725985)
	)
)

(:action act_act_tpp-propositional_302264_302951
	:parameters ( ?goods_376387811 - goods ?truck_376387810 - truck ?level_376387812 - level ?level_376387813 - level ?level_376387808 - level ?level_376387809 - level)
	:precondition (and 
			(loaded ?goods_376387811 ?truck_376387810 ?level_376387813) 
			(loaded ?goods_376387811 ?truck_376387810 ?level_376387812) 
			(loaded ?goods_376387811 ?truck_376387810 ?level_376387808) 
			(next ?level_376387809 ?level_376387812)
	)
	:effect (and 
		(not (loaded ?goods_376387811 ?truck_376387810 ?level_376387809)) 
		(next ?level_376387808 ?level_376387813) 
		(stored ?goods_376387811 ?level_376387812)
	)
)

(:action act_act_tpp-propositional_302264_302952
	:parameters ( ?goods_376387811 - goods ?truck_376387810 - truck ?level_376387812 - level ?level_376387813 - level ?level_376387808 - level ?level_376387809 - level)
	:precondition (and 
			(loaded ?goods_376387811 ?truck_376387810 ?level_376387813) 
			(loaded ?goods_376387811 ?truck_376387810 ?level_376387812) 
			(loaded ?goods_376387811 ?truck_376387810 ?level_376387808) 
			(next ?level_376387809 ?level_376387812)
	)
	:effect (and 
		(loaded ?goods_376387811 ?truck_376387810 ?level_376387809) 
		(next ?level_376387808 ?level_376387813) 
		(next ?level_376387813 ?level_376387812)
	)
)

(:action act_act_tpp-propositional_302265_302953
	:parameters ( ?level_309168283 - level ?level_309168286 - level ?level_309168281 - level ?goods_309168285 - goods ?level_309168282 - level ?truck_309168284 - truck)
	:precondition (and 
			(loaded ?goods_309168285 ?truck_309168284 ?level_309168283) 
			(loaded ?goods_309168285 ?truck_309168284 ?level_309168286) 
			(next ?level_309168281 ?level_309168282) 
			(stored ?goods_309168285 ?level_309168283)
	)
	:effect (and 
		(not (loaded ?goods_309168285 ?truck_309168284 ?level_309168281)) 
		(next ?level_309168286 ?level_309168282) 
		(next ?level_309168282 ?level_309168283)
	)
)

(:action act_act_tpp-propositional_302265_302954
	:parameters ( ?level_309168283 - level ?level_309168286 - level ?level_309168281 - level ?level_309168282 - level ?goods_309168285 - goods ?truck_309168284 - truck)
	:precondition (and 
			(loaded ?goods_309168285 ?truck_309168284 ?level_309168283) 
			(loaded ?goods_309168285 ?truck_309168284 ?level_309168286) 
			(next ?level_309168281 ?level_309168282) 
			(stored ?goods_309168285 ?level_309168283)
	)
	:effect (and 
		(loaded ?goods_309168285 ?truck_309168284 ?level_309168281) 
		(next ?level_309168281 ?level_309168286) 
		(next ?level_309168282 ?level_309168283) 
		(next ?level_309168283 ?level_309168282)
	)
)

(:action act_act_tpp-propositional_302266_302955
	:parameters ( ?goods_365304374 - goods ?level_365304378 - level ?truck_365304375 - truck ?level_365304373 - level ?goods_365304377 - goods ?truck_365304376 - truck)
	:precondition (and 
			(loaded ?goods_365304377 ?truck_365304375 ?level_365304378) 
			(loaded ?goods_365304374 ?truck_365304376 ?level_365304378) 
			(stored ?goods_365304377 ?level_365304373)
	)
	:effect (and 
		(loaded ?goods_365304377 ?truck_365304376 ?level_365304373) 
		(not (loaded ?goods_365304374 ?truck_365304375 ?level_365304373)) 
		(next ?level_365304378 ?level_365304373) 
		(not (stored ?goods_365304377 ?level_365304378))
	)
)

(:action act_act_tpp-propositional_302267_302956
	:parameters ( ?goods_152201586 - goods ?level_152201585 - level ?truck_152201588 - truck ?goods_152201589 - goods ?truck_152201587 - truck)
	:precondition (and 
			(loaded ?goods_152201586 ?truck_152201587 ?level_152201585) 
			(loaded ?goods_152201589 ?truck_152201588 ?level_152201585) 
			(stored ?goods_152201589 ?level_152201585)
	)
	:effect (and 
		(loaded ?goods_152201586 ?truck_152201588 ?level_152201585) 
		(loaded ?goods_152201589 ?truck_152201587 ?level_152201585)
	)
)

(:action act_act_tpp-propositional_302268_302957
	:parameters ( ?goods_221359272 - goods ?truck_221359274 - truck ?truck_221359275 - truck ?level_221359276 - level ?goods_221359273 - goods)
	:precondition (and 
			(loaded ?goods_221359272 ?truck_221359275 ?level_221359276) 
			(loaded ?goods_221359273 ?truck_221359274 ?level_221359276) 
			(stored ?goods_221359272 ?level_221359276)
	)
	:effect (and 
		(loaded ?goods_221359272 ?truck_221359274 ?level_221359276) 
		(loaded ?goods_221359273 ?truck_221359275 ?level_221359276)
	)
)

(:action act_act_tpp-propositional_302269_302958
	:parameters ( ?truck_252985529 - truck ?place_252985528 - place ?truck_252985527 - truck ?level_252985525 - level ?goods_252985530 - goods ?level_252985526 - level)
	:precondition (and 
			(at ?truck_252985529 ?place_252985528) 
			(loaded ?goods_252985530 ?truck_252985527 ?level_252985525) 
			(loaded ?goods_252985530 ?truck_252985529 ?level_252985526) 
			(stored ?goods_252985530 ?level_252985526) 
			(stored ?goods_252985530 ?level_252985525)
	)
	:effect (and 
		(at ?truck_252985527 ?place_252985528) 
		(loaded ?goods_252985530 ?truck_252985529 ?level_252985525) 
		(next ?level_252985526 ?level_252985525)
	)
)

(:action act_act_tpp-propositional_302270_302959
	:parameters ( ?goods_416690483 - goods ?level_416690484 - level ?truck_416690486 - truck ?level_416690485 - level ?level_416690482 - level)
	:precondition (and 
			(loaded ?goods_416690483 ?truck_416690486 ?level_416690482) 
			(loaded ?goods_416690483 ?truck_416690486 ?level_416690484) 
			(next ?level_416690482 ?level_416690485) 
			(stored ?goods_416690483 ?level_416690482)
	)
	:effect (and 
		(not (loaded ?goods_416690483 ?truck_416690486 ?level_416690485)) 
		(next ?level_416690482 ?level_416690484) 
		(next ?level_416690484 ?level_416690485)
	)
)

(:action act_act_tpp-propositional_302271_302960
	:parameters ( ?goods_469843241 - goods ?level_469843245 - level ?level_469843244 - level ?truck_469843246 - truck ?level_469843243 - level ?level_469843242 - level)
	:precondition (and 
			(loaded ?goods_469843241 ?truck_469843246 ?level_469843244) 
			(loaded ?goods_469843241 ?truck_469843246 ?level_469843242) 
			(next ?level_469843243 ?level_469843245) 
			(stored ?goods_469843241 ?level_469843242)
	)
	:effect (and 
		(not (loaded ?goods_469843241 ?truck_469843246 ?level_469843243)) 
		(next ?level_469843245 ?level_469843244) 
		(next ?level_469843245 ?level_469843242)
	)
)

(:action act_act_tpp-propositional_302272_302961
	:parameters ( ?market_135574919 - market ?level_135574917 - level ?level_135574918 - level ?level_135574914 - level ?goods_135574916 - goods ?truck_135574915 - truck)
	:precondition (and 
			(loaded ?goods_135574916 ?truck_135574915 ?level_135574917) 
			(loaded ?goods_135574916 ?truck_135574915 ?level_135574918) 
			(ready-to-load ?goods_135574916 ?market_135574919 ?level_135574914) 
			(stored ?goods_135574916 ?level_135574914)
	)
	:effect (and 
		(loaded ?goods_135574916 ?truck_135574915 ?level_135574914) 
		(ready-to-load ?goods_135574916 ?market_135574919 ?level_135574917) 
		(ready-to-load ?goods_135574916 ?market_135574919 ?level_135574918)
	)
)

(:action act_act_tpp-propositional_302273_302962
	:parameters ( ?place_254064490 - place ?truck_254064489 - truck ?truck_254064487 - truck ?goods_254064488 - goods ?level_254064491 - level ?level_254064492 - level)
	:precondition (and 
			(at ?truck_254064489 ?place_254064490) 
			(loaded ?goods_254064488 ?truck_254064487 ?level_254064492) 
			(next ?level_254064492 ?level_254064491) 
			(stored ?goods_254064488 ?level_254064491)
	)
	:effect (and 
		(at ?truck_254064487 ?place_254064490) 
		(not (loaded ?goods_254064488 ?truck_254064489 ?level_254064492)) 
		(loaded ?goods_254064488 ?truck_254064487 ?level_254064491)
	)
)

(:action act_act_tpp-propositional_302273_302963
	:parameters ( ?place_254064490 - place ?truck_254064489 - truck ?truck_254064487 - truck ?goods_254064488 - goods ?level_254064491 - level ?level_254064492 - level)
	:precondition (and 
			(at ?truck_254064489 ?place_254064490) 
			(loaded ?goods_254064488 ?truck_254064487 ?level_254064492) 
			(next ?level_254064492 ?level_254064491) 
			(stored ?goods_254064488 ?level_254064491)
	)
	:effect (and 
		(at ?truck_254064487 ?place_254064490) 
		(loaded ?goods_254064488 ?truck_254064489 ?level_254064492) 
		(not (loaded ?goods_254064488 ?truck_254064487 ?level_254064491))
	)
)

(:action act_act_tpp-propositional_302274_302964
	:parameters ( ?level_150108512 - level ?market_150108516 - market ?goods_150108511 - goods ?goods_150108513 - goods ?truck_150108514 - truck ?level_150108515 - level)
	:precondition (and 
			(loaded ?goods_150108511 ?truck_150108514 ?level_150108512) 
			(loaded ?goods_150108513 ?truck_150108514 ?level_150108515) 
			(ready-to-load ?goods_150108513 ?market_150108516 ?level_150108515) 
			(stored ?goods_150108513 ?level_150108512)
	)
	:effect (and 
		(loaded ?goods_150108511 ?truck_150108514 ?level_150108515) 
		(ready-to-load ?goods_150108513 ?market_150108516 ?level_150108512) 
		(stored ?goods_150108511 ?level_150108512)
	)
)

(:action act_act_tpp-propositional_302275_302965
	:parameters ( ?level_87139945 - level ?level_87139943 - level ?level_87139944 - level ?market_87139941 - market ?level_87139940 - level ?goods_87139942 - goods)
	:precondition (and 
			(next ?level_87139940 ?level_87139944) 
			(next ?level_87139945 ?level_87139940) 
			(ready-to-load ?goods_87139942 ?market_87139941 ?level_87139943) 
			(stored ?goods_87139942 ?level_87139945)
	)
	:effect (and 
		(next ?level_87139944 ?level_87139940) 
		(ready-to-load ?goods_87139942 ?market_87139941 ?level_87139945) 
		(stored ?goods_87139942 ?level_87139943)
	)
)

(:action act_act_tpp-propositional_302276_302966
	:parameters ( ?level_261034910 - level ?level_261034911 - level ?level_261034909 - level ?market_261034912 - market ?goods_261034913 - goods ?truck_261034908 - truck)
	:precondition (and 
			(loaded ?goods_261034913 ?truck_261034908 ?level_261034909) 
			(next ?level_261034910 ?level_261034911) 
			(ready-to-load ?goods_261034913 ?market_261034912 ?level_261034909)
	)
	:effect (and 
		(loaded ?goods_261034913 ?truck_261034908 ?level_261034911) 
		(loaded ?goods_261034913 ?truck_261034908 ?level_261034910) 
		(next ?level_261034910 ?level_261034909) 
		(next ?level_261034909 ?level_261034910) 
		(not (ready-to-load ?goods_261034913 ?market_261034912 ?level_261034911)) 
		(ready-to-load ?goods_261034913 ?market_261034912 ?level_261034910)
	)
)

(:action act_act_tpp-propositional_302276_302967
	:parameters ( ?level_261034910 - level ?level_261034911 - level ?level_261034909 - level ?goods_261034913 - goods ?market_261034912 - market ?truck_261034908 - truck)
	:precondition (and 
			(loaded ?goods_261034913 ?truck_261034908 ?level_261034909) 
			(next ?level_261034910 ?level_261034911) 
			(ready-to-load ?goods_261034913 ?market_261034912 ?level_261034909)
	)
	:effect (and 
		(loaded ?goods_261034913 ?truck_261034908 ?level_261034911) 
		(next ?level_261034909 ?level_261034910) 
		(not (ready-to-load ?goods_261034913 ?market_261034912 ?level_261034910))
	)
)

(:action act_act_tpp-propositional_302277_302968
	:parameters ( ?truck_352565486 - truck ?level_352565484 - level ?level_352565487 - level ?goods_352565488 - goods ?market_352565485 - market)
	:precondition (and 
			(loaded ?goods_352565488 ?truck_352565486 ?level_352565487) 
			(next ?level_352565484 ?level_352565487) 
			(ready-to-load ?goods_352565488 ?market_352565485 ?level_352565487)
	)
	:effect (and 
		(loaded ?goods_352565488 ?truck_352565486 ?level_352565484) 
		(next ?level_352565487 ?level_352565484) 
		(ready-to-load ?goods_352565488 ?market_352565485 ?level_352565484)
	)
)

(:action act_act_tpp-propositional_302278_302969
	:parameters ( ?truck_409941577 - truck ?goods_409941579 - goods ?level_409941576 - level ?level_409941578 - level ?goods_409941580 - goods)
	:precondition (and 
			(loaded ?goods_409941579 ?truck_409941577 ?level_409941576) 
			(loaded ?goods_409941580 ?truck_409941577 ?level_409941576) 
			(next ?level_409941576 ?level_409941578) 
			(stored ?goods_409941580 ?level_409941576)
	)
	:effect (and 
		(not (loaded ?goods_409941580 ?truck_409941577 ?level_409941578)) 
		(stored ?goods_409941579 ?level_409941576)
	)
)

(:action act_act_tpp-propositional_302279_302970
	:parameters ( ?level_523431070 - level ?level_523431074 - level ?truck_523431075 - truck ?level_523431073 - level ?level_523431071 - level ?goods_523431072 - goods)
	:precondition (and 
			(loaded ?goods_523431072 ?truck_523431075 ?level_523431074) 
			(loaded ?goods_523431072 ?truck_523431075 ?level_523431071) 
			(next ?level_523431074 ?level_523431073) 
			(next ?level_523431070 ?level_523431071)
	)
	:effect (and 
		(loaded ?goods_523431072 ?truck_523431075 ?level_523431070) 
		(stored ?goods_523431072 ?level_523431074) 
		(stored ?goods_523431072 ?level_523431071) 
		(stored ?goods_523431072 ?level_523431073)
	)
)

(:action act_act_tpp-propositional_302280_302971
	:parameters ( ?goods_407881515 - goods ?level_407881519 - level ?level_407881518 - level ?market_407881520 - market ?truck_407881516 - truck ?goods_407881517 - goods)
	:precondition (and 
			(loaded ?goods_407881515 ?truck_407881516 ?level_407881519) 
			(ready-to-load ?goods_407881517 ?market_407881520 ?level_407881518) 
			(stored ?goods_407881517 ?level_407881519)
	)
	:effect (and 
		(not (loaded ?goods_407881515 ?truck_407881516 ?level_407881518)) 
		(not (loaded ?goods_407881517 ?truck_407881516 ?level_407881518)) 
		(ready-to-load ?goods_407881517 ?market_407881520 ?level_407881519) 
		(not (ready-to-load ?goods_407881515 ?market_407881520 ?level_407881519)) 
		(stored ?goods_407881515 ?level_407881518)
	)
)

(:action act_act_tpp-propositional_302281_302972
	:parameters ( ?goods_358104711 - goods ?level_358104715 - level ?truck_358104714 - truck ?level_358104713 - level ?level_358104712 - level)
	:precondition (and 
			(loaded ?goods_358104711 ?truck_358104714 ?level_358104715) 
			(loaded ?goods_358104711 ?truck_358104714 ?level_358104713) 
			(next ?level_358104715 ?level_358104713) 
			(next ?level_358104712 ?level_358104715) 
			(next ?level_358104712 ?level_358104713)
	)
	:effect (and 
		(loaded ?goods_358104711 ?truck_358104714 ?level_358104712) 
		(next ?level_358104713 ?level_358104715)
	)
)

(:action act_act_tpp-propositional_302282_302973
	:parameters ( ?level_396683076 - level ?level_396683077 - level ?level_396683075 - level ?truck_396683079 - truck ?goods_396683078 - goods)
	:precondition (and 
			(loaded ?goods_396683078 ?truck_396683079 ?level_396683077) 
			(loaded ?goods_396683078 ?truck_396683079 ?level_396683076) 
			(next ?level_396683076 ?level_396683075) 
			(next ?level_396683077 ?level_396683075) 
			(next ?level_396683076 ?level_396683077)
	)
	:effect (and 
		(loaded ?goods_396683078 ?truck_396683079 ?level_396683075) 
		(next ?level_396683077 ?level_396683076)
	)
)

(:action act_act_tpp-propositional_302283_302974
	:parameters ( ?level_4508009 - level ?level_4508011 - level ?level_4508010 - level)
	:precondition (and 
			(next ?level_4508010 ?level_4508009) 
			(next ?level_4508011 ?level_4508010)
	)
	:effect (and 
		(next ?level_4508011 ?level_4508009) 
		(next ?level_4508010 ?level_4508011) 
		(next ?level_4508009 ?level_4508010) 
		(next ?level_4508009 ?level_4508011)
	)
)

(:action act_act_tpp-propositional_302284_302975
	:parameters ( ?level_34276048 - level ?level_34276049 - level ?level_34276047 - level)
	:precondition (and 
			(next ?level_34276048 ?level_34276047) 
			(next ?level_34276047 ?level_34276049)
	)
	:effect (and 
		(next ?level_34276048 ?level_34276049) 
		(next ?level_34276047 ?level_34276048) 
		(next ?level_34276049 ?level_34276047) 
		(next ?level_34276049 ?level_34276048)
	)
)

(:action act_act_tpp-propositional_302285_302976
	:parameters ( ?level_351627170 - level ?level_351627172 - level ?market_351627171 - market ?level_351627173 - level ?goods_351627169 - goods)
	:precondition (and 
			(ready-to-load ?goods_351627169 ?market_351627171 ?level_351627173) 
			(ready-to-load ?goods_351627169 ?market_351627171 ?level_351627170) 
			(stored ?goods_351627169 ?level_351627172) 
			(stored ?goods_351627169 ?level_351627173)
	)
	:effect (and 
		(next ?level_351627170 ?level_351627173) 
		(not (ready-to-load ?goods_351627169 ?market_351627171 ?level_351627172))
	)
)

(:action act_act_tpp-propositional_302286_302977
	:parameters ( ?goods_6401878 - goods ?level_6401875 - level ?level_6401877 - level ?truck_6401876 - truck ?level_6401879 - level)
	:precondition (and 
			(loaded ?goods_6401878 ?truck_6401876 ?level_6401879) 
			(next ?level_6401879 ?level_6401877) 
			(next ?level_6401875 ?level_6401877)
	)
	:effect (and 
		(not (loaded ?goods_6401878 ?truck_6401876 ?level_6401875)) 
		(next ?level_6401877 ?level_6401879) 
		(next ?level_6401877 ?level_6401875)
	)
)

(:action act_act_tpp-propositional_302286_302978
	:parameters ( ?goods_6401878 - goods ?level_6401875 - level ?level_6401877 - level ?truck_6401876 - truck ?level_6401879 - level)
	:precondition (and 
			(loaded ?goods_6401878 ?truck_6401876 ?level_6401879) 
			(next ?level_6401879 ?level_6401877) 
			(next ?level_6401875 ?level_6401877)
	)
	:effect (and 
		(loaded ?goods_6401878 ?truck_6401876 ?level_6401875) 
		(next ?level_6401875 ?level_6401879) 
		(next ?level_6401877 ?level_6401879) 
		(next ?level_6401877 ?level_6401875)
	)
)

(:action act_act_tpp-propositional_302287_302979
	:parameters ( ?truck_377867267 - truck ?level_377867262 - level ?level_377867263 - level ?goods_377867264 - goods ?level_377867266 - level ?level_377867265 - level)
	:precondition (and 
			(loaded ?goods_377867264 ?truck_377867267 ?level_377867266) 
			(next ?level_377867262 ?level_377867266) 
			(next ?level_377867263 ?level_377867265)
	)
	:effect (and 
		(not (loaded ?goods_377867264 ?truck_377867267 ?level_377867265)) 
		(next ?level_377867263 ?level_377867266) 
		(next ?level_377867263 ?level_377867262)
	)
)

(:action act_act_tpp-propositional_302288_302980
	:parameters ( ?goods_103300963 - goods ?level_103300959 - level ?truck_103300962 - truck ?truck_103300960 - truck ?level_103300961 - level ?goods_103300964 - goods)
	:precondition (and 
			(loaded ?goods_103300964 ?truck_103300962 ?level_103300959) 
			(loaded ?goods_103300963 ?truck_103300960 ?level_103300959) 
			(loaded ?goods_103300964 ?truck_103300960 ?level_103300959) 
			(next ?level_103300961 ?level_103300959)
	)
	:effect (and 
		(loaded ?goods_103300963 ?truck_103300960 ?level_103300961) 
		(not (loaded ?goods_103300964 ?truck_103300962 ?level_103300961)) 
		(loaded ?goods_103300964 ?truck_103300960 ?level_103300961) 
		(next ?level_103300959 ?level_103300961)
	)
)

(:action act_act_tpp-propositional_302289_302981
	:parameters ( ?goods_495502219 - goods ?truck_495502216 - truck ?level_495502218 - level ?level_495502217 - level ?goods_495502220 - goods)
	:precondition (and 
			(loaded ?goods_495502220 ?truck_495502216 ?level_495502218) 
			(loaded ?goods_495502220 ?truck_495502216 ?level_495502217) 
			(stored ?goods_495502219 ?level_495502217)
	)
	:effect (and 
		(not (loaded ?goods_495502219 ?truck_495502216 ?level_495502217)) 
		(not (stored ?goods_495502220 ?level_495502218))
	)
)

(:action act_act_tpp-propositional_302290_302982
	:parameters ( ?level_112385644 - level ?level_112385642 - level ?goods_112385640 - goods ?goods_112385643 - goods ?market_112385641 - market)
	:precondition (and 
			(next ?level_112385642 ?level_112385644) 
			(ready-to-load ?goods_112385643 ?market_112385641 ?level_112385642) 
			(ready-to-load ?goods_112385640 ?market_112385641 ?level_112385644) 
			(stored ?goods_112385640 ?level_112385644)
	)
	:effect (and 
		(ready-to-load ?goods_112385643 ?market_112385641 ?level_112385644) 
		(not (stored ?goods_112385640 ?level_112385642))
	)
)

(:action act_act_tpp-propositional_302291_302983
	:parameters ( ?level_87396244 - level ?truck_87396243 - truck ?level_87396248 - level ?level_87396245 - level ?goods_87396246 - goods ?market_87396247 - market)
	:precondition (and 
			(loaded ?goods_87396246 ?truck_87396243 ?level_87396245) 
			(next ?level_87396245 ?level_87396244) 
			(ready-to-load ?goods_87396246 ?market_87396247 ?level_87396248) 
			(stored ?goods_87396246 ?level_87396244) 
			(stored ?goods_87396246 ?level_87396248)
	)
	:effect (and 
		(loaded ?goods_87396246 ?truck_87396243 ?level_87396244) 
		(next ?level_87396248 ?level_87396245) 
		(ready-to-load ?goods_87396246 ?market_87396247 ?level_87396245)
	)
)

(:action act_act_tpp-propositional_302292_302984
	:parameters ( ?goods_268050030 - goods ?market_268050034 - market ?level_268050032 - level ?level_268050033 - level ?truck_268050031 - truck)
	:precondition (and 
			(loaded ?goods_268050030 ?truck_268050031 ?level_268050033) 
			(next ?level_268050033 ?level_268050032) 
			(ready-to-load ?goods_268050030 ?market_268050034 ?level_268050032) 
			(stored ?goods_268050030 ?level_268050032) 
			(stored ?goods_268050030 ?level_268050033)
	)
	:effect (and 
		(loaded ?goods_268050030 ?truck_268050031 ?level_268050032) 
		(next ?level_268050032 ?level_268050033) 
		(ready-to-load ?goods_268050030 ?market_268050034 ?level_268050033)
	)
)

(:action act_act_tpp-propositional_302293_302985
	:parameters ( ?place_360578667 - place ?goods_360578669 - goods ?level_360578670 - level ?level_360578668 - level ?truck_360578665 - truck ?truck_360578666 - truck)
	:precondition (and 
			(at ?truck_360578666 ?place_360578667) 
			(loaded ?goods_360578669 ?truck_360578666 ?level_360578668) 
			(loaded ?goods_360578669 ?truck_360578665 ?level_360578670)
	)
	:effect (and 
		(at ?truck_360578665 ?place_360578667) 
		(loaded ?goods_360578669 ?truck_360578666 ?level_360578670) 
		(loaded ?goods_360578669 ?truck_360578665 ?level_360578668) 
		(next ?level_360578670 ?level_360578668) 
		(next ?level_360578668 ?level_360578670) 
		(stored ?goods_360578669 ?level_360578668)
	)
)

(:action act_act_tpp-propositional_302294_302986
	:parameters ( ?level_347961584 - level ?level_347961585 - level ?level_347961587 - level ?goods_347961586 - goods)
	:precondition (and 
			(next ?level_347961584 ?level_347961587) 
			(next ?level_347961587 ?level_347961585) 
			(stored ?goods_347961586 ?level_347961584)
	)
	:effect (and 
		(next ?level_347961587 ?level_347961584) 
		(stored ?goods_347961586 ?level_347961587) 
		(stored ?goods_347961586 ?level_347961585)
	)
)

(:action act_act_tpp-propositional_302294_302987
	:parameters ( ?level_347961584 - level ?level_347961585 - level ?level_347961587 - level ?goods_347961586 - goods)
	:precondition (and 
			(next ?level_347961584 ?level_347961587) 
			(next ?level_347961587 ?level_347961585) 
			(stored ?goods_347961586 ?level_347961584)
	)
	:effect (and 
		(next ?level_347961587 ?level_347961584) 
		(next ?level_347961584 ?level_347961585) 
		(not (stored ?goods_347961586 ?level_347961585))
	)
)

(:action act_act_tpp-propositional_302295_302988
	:parameters ( ?goods_2443296 - goods ?goods_2443300 - goods ?level_2443297 - level ?truck_2443301 - truck ?level_2443298 - level ?level_2443299 - level)
	:precondition (and 
			(loaded ?goods_2443296 ?truck_2443301 ?level_2443297) 
			(loaded ?goods_2443300 ?truck_2443301 ?level_2443299) 
			(next ?level_2443298 ?level_2443297)
	)
	:effect (and 
		(loaded ?goods_2443300 ?truck_2443301 ?level_2443297) 
		(loaded ?goods_2443296 ?truck_2443301 ?level_2443299) 
		(loaded ?goods_2443300 ?truck_2443301 ?level_2443298) 
		(not (loaded ?goods_2443296 ?truck_2443301 ?level_2443298)) 
		(next ?level_2443297 ?level_2443298) 
		(next ?level_2443299 ?level_2443297) 
		(next ?level_2443299 ?level_2443298) 
		(not (stored ?goods_2443300 ?level_2443299)) 
		(not (stored ?goods_2443300 ?level_2443297)) 
		(stored ?goods_2443296 ?level_2443298)
	)
)

(:action act_act_tpp-propositional_302296_302989
	:parameters ( ?level_423804390 - level ?truck_423804387 - truck ?level_423804391 - level ?goods_423804386 - goods ?level_423804389 - level ?level_423804388 - level)
	:precondition (and 
			(loaded ?goods_423804386 ?truck_423804387 ?level_423804391) 
			(next ?level_423804389 ?level_423804388) 
			(next ?level_423804391 ?level_423804390)
	)
	:effect (and 
		(loaded ?goods_423804386 ?truck_423804387 ?level_423804388) 
		(next ?level_423804389 ?level_423804390) 
		(not (stored ?goods_423804386 ?level_423804391))
	)
)

(:action act_act_tpp-propositional_302297_302990
	:parameters ( ?truck_188328698 - truck ?place_188328699 - place ?goods_188328700 - goods ?level_188328697 - level ?place_188328701 - place)
	:precondition (and 
			(at ?truck_188328698 ?place_188328699) 
			(connected ?place_188328701 ?place_188328699) 
			(stored ?goods_188328700 ?level_188328697)
	)
	:effect (and 
		(connected ?place_188328699 ?place_188328701) 
		(not (loaded ?goods_188328700 ?truck_188328698 ?level_188328697))
	)
)

(:action act_act_tpp-propositional_302298_302991
	:parameters ( ?level_366552819 - level ?truck_366552822 - truck ?goods_366552824 - goods ?place_366552823 - place ?place_366552821 - place ?truck_366552820 - truck)
	:precondition (and 
			(connected ?place_366552821 ?place_366552823) 
			(loaded ?goods_366552824 ?truck_366552822 ?level_366552819) 
			(loaded ?goods_366552824 ?truck_366552820 ?level_366552819)
	)
	:effect (and 
		(at ?truck_366552822 ?place_366552821) 
		(at ?truck_366552820 ?place_366552823) 
		(stored ?goods_366552824 ?level_366552819)
	)
)

(:action act_act_tpp-propositional_302299_302992
	:parameters ( ?goods_570701536 - goods ?truck_570701532 - truck ?goods_570701531 - goods ?level_570701535 - level ?level_570701534 - level ?level_570701533 - level)
	:precondition (and 
			(loaded ?goods_570701536 ?truck_570701532 ?level_570701535) 
			(next ?level_570701534 ?level_570701533) 
			(next ?level_570701533 ?level_570701535) 
			(stored ?goods_570701536 ?level_570701535) 
			(stored ?goods_570701531 ?level_570701535)
	)
	:effect (and 
		(not (loaded ?goods_570701536 ?truck_570701532 ?level_570701534)) 
		(not (loaded ?goods_570701531 ?truck_570701532 ?level_570701535)) 
		(next ?level_570701535 ?level_570701533)
	)
)

(:action act_act_tpp-propositional_302300_302993
	:parameters ( ?goods_140695449 - goods ?level_140695450 - level ?truck_140695446 - truck ?level_140695448 - level ?level_140695447 - level ?goods_140695451 - goods)
	:precondition (and 
			(loaded ?goods_140695449 ?truck_140695446 ?level_140695448) 
			(loaded ?goods_140695451 ?truck_140695446 ?level_140695450) 
			(next ?level_140695447 ?level_140695448) 
			(stored ?goods_140695449 ?level_140695448)
	)
	:effect (and 
		(loaded ?goods_140695449 ?truck_140695446 ?level_140695450) 
		(loaded ?goods_140695451 ?truck_140695446 ?level_140695447) 
		(next ?level_140695450 ?level_140695448) 
		(stored ?goods_140695451 ?level_140695450)
	)
)

(:action act_act_tpp-propositional_302301_302994
	:parameters ( ?level_231224399 - level ?level_231224400 - level ?goods_231224402 - goods ?level_231224403 - level ?truck_231224404 - truck ?market_231224401 - market)
	:precondition (and 
			(loaded ?goods_231224402 ?truck_231224404 ?level_231224400) 
			(next ?level_231224403 ?level_231224399) 
			(ready-to-load ?goods_231224402 ?market_231224401 ?level_231224399) 
			(stored ?goods_231224402 ?level_231224403)
	)
	:effect (and 
		(not (loaded ?goods_231224402 ?truck_231224404 ?level_231224399)) 
		(next ?level_231224400 ?level_231224403) 
		(not (ready-to-load ?goods_231224402 ?market_231224401 ?level_231224403)) 
		(stored ?goods_231224402 ?level_231224400)
	)
)

(:action act_act_tpp-propositional_302302_302995
	:parameters ( ?place_355707254 - place ?level_355707253 - level ?truck_355707255 - truck ?goods_355707258 - goods ?level_355707256 - level ?truck_355707257 - truck)
	:precondition (and 
			(at ?truck_355707257 ?place_355707254) 
			(loaded ?goods_355707258 ?truck_355707255 ?level_355707256) 
			(loaded ?goods_355707258 ?truck_355707257 ?level_355707253) 
			(loaded ?goods_355707258 ?truck_355707255 ?level_355707253)
	)
	:effect (and 
		(at ?truck_355707255 ?place_355707254) 
		(loaded ?goods_355707258 ?truck_355707257 ?level_355707256) 
		(next ?level_355707256 ?level_355707253)
	)
)

(:action act_act_tpp-propositional_302303_302996
	:parameters ( ?goods_527692299 - goods ?level_527692295 - level ?level_527692298 - level ?level_527692297 - level ?market_527692296 - market)
	:precondition (and 
			(ready-to-load ?goods_527692299 ?market_527692296 ?level_527692298) 
			(stored ?goods_527692299 ?level_527692297) 
			(stored ?goods_527692299 ?level_527692295)
	)
	:effect (and 
		(next ?level_527692295 ?level_527692297) 
		(next ?level_527692298 ?level_527692295) 
		(ready-to-load ?goods_527692299 ?market_527692296 ?level_527692297)
	)
)

(:action act_act_tpp-propositional_302304_302997
	:parameters ( ?level_584781690 - level ?level_584781691 - level ?market_584781689 - market ?truck_584781692 - truck ?goods_584781693 - goods)
	:precondition (and 
			(loaded ?goods_584781693 ?truck_584781692 ?level_584781690) 
			(next ?level_584781691 ?level_584781690) 
			(next ?level_584781690 ?level_584781691) 
			(ready-to-load ?goods_584781693 ?market_584781689 ?level_584781691)
	)
	:effect (and 
		(loaded ?goods_584781693 ?truck_584781692 ?level_584781691) 
		(ready-to-load ?goods_584781693 ?market_584781689 ?level_584781690)
	)
)

(:action act_act_tpp-propositional_302304_302998
	:parameters ( ?level_584781690 - level ?level_584781691 - level ?market_584781689 - market ?goods_584781693 - goods ?truck_584781692 - truck)
	:precondition (and 
			(loaded ?goods_584781693 ?truck_584781692 ?level_584781690) 
			(next ?level_584781691 ?level_584781690) 
			(next ?level_584781690 ?level_584781691) 
			(ready-to-load ?goods_584781693 ?market_584781689 ?level_584781691)
	)
	:effect (and 
		(not (loaded ?goods_584781693 ?truck_584781692 ?level_584781691)) 
		(not (ready-to-load ?goods_584781693 ?market_584781689 ?level_584781690)) 
		(stored ?goods_584781693 ?level_584781691)
	)
)

(:action act_act_tpp-propositional_302305_302999
	:parameters ( ?goods_410004359 - goods ?level_410004357 - level ?goods_410004358 - goods ?level_410004361 - level ?truck_410004360 - truck)
	:precondition (and 
			(loaded ?goods_410004358 ?truck_410004360 ?level_410004357) 
			(stored ?goods_410004359 ?level_410004361) 
			(stored ?goods_410004358 ?level_410004357)
	)
	:effect (and 
		(not (loaded ?goods_410004359 ?truck_410004360 ?level_410004361)) 
		(loaded ?goods_410004359 ?truck_410004360 ?level_410004357) 
		(not (loaded ?goods_410004358 ?truck_410004360 ?level_410004361)) 
		(next ?level_410004361 ?level_410004357)
	)
)

(:action act_act_tpp-propositional_302306_303000
	:parameters ( ?place_591157435 - place ?level_591157433 - level ?level_591157434 - level ?truck_591157432 - truck ?goods_591157431 - goods ?place_591157430 - place)
	:precondition (and 
			(at ?truck_591157432 ?place_591157435) 
			(at ?truck_591157432 ?place_591157430) 
			(loaded ?goods_591157431 ?truck_591157432 ?level_591157434) 
			(next ?level_591157434 ?level_591157433)
	)
	:effect (and 
		(connected ?place_591157435 ?place_591157430) 
		(loaded ?goods_591157431 ?truck_591157432 ?level_591157433) 
		(next ?level_591157433 ?level_591157434) 
		(stored ?goods_591157431 ?level_591157433)
	)
)

(:action act_act_tpp-propositional_302307_303001
	:parameters ( ?truck_26908413 - truck ?level_26908414 - level ?goods_26908415 - goods ?goods_26908416 - goods ?level_26908412 - level)
	:precondition (and 
			(loaded ?goods_26908415 ?truck_26908413 ?level_26908414) 
			(stored ?goods_26908416 ?level_26908414) 
			(stored ?goods_26908415 ?level_26908412)
	)
	:effect (and 
		(not (loaded ?goods_26908416 ?truck_26908413 ?level_26908412)) 
		(stored ?goods_26908415 ?level_26908414)
	)
)

(:action act_act_tpp-propositional_302308_303002
	:parameters ( ?market_496985007 - market ?truck_496985006 - truck ?level_496985005 - level ?goods_496985008 - goods ?level_496985004 - level)
	:precondition (and 
			(loaded ?goods_496985008 ?truck_496985006 ?level_496985004) 
			(next ?level_496985005 ?level_496985004) 
			(ready-to-load ?goods_496985008 ?market_496985007 ?level_496985005) 
			(stored ?goods_496985008 ?level_496985005) 
			(stored ?goods_496985008 ?level_496985004)
	)
	:effect (and 
		(loaded ?goods_496985008 ?truck_496985006 ?level_496985005) 
		(not (ready-to-load ?goods_496985008 ?market_496985007 ?level_496985004))
	)
)

(:action act_act_tpp-propositional_302309_303003
	:parameters ( ?truck_568762133 - truck ?goods_568762135 - goods ?goods_568762132 - goods ?level_568762134 - level ?level_568762136 - level)
	:precondition (and 
			(loaded ?goods_568762132 ?truck_568762133 ?level_568762136) 
			(stored ?goods_568762135 ?level_568762136) 
			(stored ?goods_568762132 ?level_568762136) 
			(stored ?goods_568762135 ?level_568762134)
	)
	:effect (and 
		(not (loaded ?goods_568762135 ?truck_568762133 ?level_568762136)) 
		(stored ?goods_568762132 ?level_568762134)
	)
)

(:action act_act_tpp-propositional_302310_303004
	:parameters ( ?level_43927289 - level ?truck_43927287 - truck ?level_43927290 - level ?level_43927291 - level ?level_43927292 - level ?goods_43927288 - goods)
	:precondition (and 
			(loaded ?goods_43927288 ?truck_43927287 ?level_43927292) 
			(next ?level_43927289 ?level_43927291) 
			(next ?level_43927289 ?level_43927290)
	)
	:effect (and 
		(loaded ?goods_43927288 ?truck_43927287 ?level_43927289) 
		(next ?level_43927289 ?level_43927292) 
		(next ?level_43927291 ?level_43927290)
	)
)

(:action act_act_tpp-propositional_302311_303005
	:parameters ( ?level_100775696 - level ?level_100775695 - level ?truck_100775697 - truck ?goods_100775698 - goods ?level_100775699 - level)
	:precondition (and 
			(loaded ?goods_100775698 ?truck_100775697 ?level_100775695) 
			(next ?level_100775696 ?level_100775699) 
			(next ?level_100775695 ?level_100775696)
	)
	:effect (and 
		(loaded ?goods_100775698 ?truck_100775697 ?level_100775696) 
		(loaded ?goods_100775698 ?truck_100775697 ?level_100775699) 
		(next ?level_100775699 ?level_100775695) 
		(next ?level_100775696 ?level_100775695)
	)
)

(:action act_act_tpp-propositional_302312_303006
	:parameters ( ?level_202670113 - level ?level_202670112 - level ?goods_202670116 - goods ?goods_202670114 - goods ?truck_202670117 - truck ?level_202670115 - level)
	:precondition (and 
			(loaded ?goods_202670116 ?truck_202670117 ?level_202670115) 
			(loaded ?goods_202670114 ?truck_202670117 ?level_202670112) 
			(next ?level_202670112 ?level_202670113)
	)
	:effect (and 
		(loaded ?goods_202670116 ?truck_202670117 ?level_202670113) 
		(not (loaded ?goods_202670116 ?truck_202670117 ?level_202670112)) 
		(loaded ?goods_202670114 ?truck_202670117 ?level_202670113) 
		(loaded ?goods_202670114 ?truck_202670117 ?level_202670115) 
		(next ?level_202670112 ?level_202670115) 
		(next ?level_202670113 ?level_202670112) 
		(not (stored ?goods_202670116 ?level_202670112))
	)
)

(:action act_act_tpp-propositional_302313_303007
	:parameters ( ?goods_589727150 - goods ?goods_589727151 - goods ?truck_589727149 - truck ?level_589727148 - level ?truck_589727147 - truck ?level_589727152 - level)
	:precondition (and 
			(loaded ?goods_589727151 ?truck_589727147 ?level_589727148) 
			(loaded ?goods_589727150 ?truck_589727149 ?level_589727152) 
			(next ?level_589727148 ?level_589727152)
	)
	:effect (and 
		(loaded ?goods_589727150 ?truck_589727147 ?level_589727152) 
		(loaded ?goods_589727151 ?truck_589727149 ?level_589727152) 
		(next ?level_589727152 ?level_589727148)
	)
)

(:action act_act_tpp-propositional_302314_303008
	:parameters ( ?level_229672829 - level ?goods_229672827 - goods ?level_229672826 - level ?market_229672830 - market ?goods_229672828 - goods)
	:precondition (and 
			(ready-to-load ?goods_229672828 ?market_229672830 ?level_229672829) 
			(ready-to-load ?goods_229672828 ?market_229672830 ?level_229672826) 
			(stored ?goods_229672827 ?level_229672829)
	)
	:effect (and 
		(ready-to-load ?goods_229672827 ?market_229672830 ?level_229672826) 
		(stored ?goods_229672828 ?level_229672829)
	)
)

(:action act_act_tpp-propositional_302315_303009
	:parameters ( ?truck_409451169 - truck ?level_409451168 - level ?goods_409451171 - goods ?level_409451166 - level ?goods_409451167 - goods ?market_409451170 - market)
	:precondition (and 
			(loaded ?goods_409451167 ?truck_409451169 ?level_409451166) 
			(loaded ?goods_409451171 ?truck_409451169 ?level_409451166) 
			(ready-to-load ?goods_409451171 ?market_409451170 ?level_409451166) 
			(ready-to-load ?goods_409451167 ?market_409451170 ?level_409451166) 
			(stored ?goods_409451171 ?level_409451168)
	)
	:effect (and 
		(not (loaded ?goods_409451167 ?truck_409451169 ?level_409451168)) 
		(next ?level_409451168 ?level_409451166) 
		(ready-to-load ?goods_409451171 ?market_409451170 ?level_409451168)
	)
)

(:action act_act_tpp-propositional_302316_303010
	:parameters ( ?level_72013084 - level ?goods_72013087 - goods ?goods_72013089 - goods ?level_72013085 - level ?market_72013088 - market ?truck_72013086 - truck)
	:precondition (and 
			(loaded ?goods_72013087 ?truck_72013086 ?level_72013085) 
			(ready-to-load ?goods_72013089 ?market_72013088 ?level_72013085) 
			(stored ?goods_72013089 ?level_72013084)
	)
	:effect (and 
		(loaded ?goods_72013089 ?truck_72013086 ?level_72013084) 
		(ready-to-load ?goods_72013087 ?market_72013088 ?level_72013084) 
		(stored ?goods_72013089 ?level_72013085)
	)
)

(:action act_act_tpp-propositional_302317_303011
	:parameters ( ?market_140193867 - market ?level_140193870 - level ?goods_140193869 - goods ?truck_140193871 - truck ?level_140193868 - level ?goods_140193872 - goods)
	:precondition (and 
			(loaded ?goods_140193869 ?truck_140193871 ?level_140193868) 
			(ready-to-load ?goods_140193872 ?market_140193867 ?level_140193870) 
			(stored ?goods_140193872 ?level_140193870)
	)
	:effect (and 
		(loaded ?goods_140193872 ?truck_140193871 ?level_140193868) 
		(ready-to-load ?goods_140193869 ?market_140193867 ?level_140193870) 
		(stored ?goods_140193872 ?level_140193868)
	)
)

(:action act_act_tpp-propositional_302318_303012
	:parameters ( ?place_451092740 - place ?level_451092738 - level ?place_451092737 - place ?truck_451092736 - truck ?truck_451092735 - truck ?goods_451092739 - goods)
	:precondition (and 
			(at ?truck_451092736 ?place_451092740) 
			(connected ?place_451092737 ?place_451092740) 
			(loaded ?goods_451092739 ?truck_451092735 ?level_451092738)
	)
	:effect (and 
		(at ?truck_451092735 ?place_451092737) 
		(connected ?place_451092740 ?place_451092737) 
		(not (loaded ?goods_451092739 ?truck_451092736 ?level_451092738)) 
		(not (stored ?goods_451092739 ?level_451092738))
	)
)

(:action act_act_tpp-propositional_302319_303013
	:parameters ( ?level_62388589 - level ?goods_62388590 - goods ?market_62388588 - market ?level_62388587 - level ?truck_62388591 - truck ?level_62388592 - level)
	:precondition (and 
			(loaded ?goods_62388590 ?truck_62388591 ?level_62388587) 
			(loaded ?goods_62388590 ?truck_62388591 ?level_62388592) 
			(next ?level_62388589 ?level_62388592) 
			(ready-to-load ?goods_62388590 ?market_62388588 ?level_62388589)
	)
	:effect (and 
		(loaded ?goods_62388590 ?truck_62388591 ?level_62388589) 
		(next ?level_62388592 ?level_62388587) 
		(not (ready-to-load ?goods_62388590 ?market_62388588 ?level_62388592))
	)
)

(:action act_act_tpp-propositional_302320_303014
	:parameters ( ?market_382207547 - market ?goods_382207544 - goods ?goods_382207543 - goods ?truck_382207542 - truck ?level_382207545 - level ?level_382207546 - level)
	:precondition (and 
			(loaded ?goods_382207544 ?truck_382207542 ?level_382207546) 
			(loaded ?goods_382207543 ?truck_382207542 ?level_382207545) 
			(ready-to-load ?goods_382207544 ?market_382207547 ?level_382207546)
	)
	:effect (and 
		(loaded ?goods_382207544 ?truck_382207542 ?level_382207545) 
		(ready-to-load ?goods_382207543 ?market_382207547 ?level_382207545) 
		(stored ?goods_382207543 ?level_382207546)
	)
)

(:action act_act_tpp-propositional_302321_303015
	:parameters ( ?level_314613339 - level ?goods_314613336 - goods ?level_314613337 - level ?truck_314613335 - truck ?market_314613338 - market ?level_314613340 - level)
	:precondition (and 
			(loaded ?goods_314613336 ?truck_314613335 ?level_314613339) 
			(loaded ?goods_314613336 ?truck_314613335 ?level_314613340) 
			(ready-to-load ?goods_314613336 ?market_314613338 ?level_314613337) 
			(stored ?goods_314613336 ?level_314613339)
	)
	:effect (and 
		(loaded ?goods_314613336 ?truck_314613335 ?level_314613337) 
		(next ?level_314613339 ?level_314613337) 
		(ready-to-load ?goods_314613336 ?market_314613338 ?level_314613340) 
		(stored ?goods_314613336 ?level_314613340)
	)
)

(:action act_act_tpp-propositional_302322_303016
	:parameters ( ?truck_49729439 - truck ?level_49729442 - level ?level_49729441 - level ?goods_49729438 - goods ?goods_49729440 - goods)
	:precondition (and 
			(loaded ?goods_49729440 ?truck_49729439 ?level_49729442) 
			(next ?level_49729442 ?level_49729441) 
			(stored ?goods_49729440 ?level_49729442) 
			(stored ?goods_49729438 ?level_49729442)
	)
	:effect (and 
		(loaded ?goods_49729438 ?truck_49729439 ?level_49729442) 
		(not (loaded ?goods_49729438 ?truck_49729439 ?level_49729441)) 
		(next ?level_49729441 ?level_49729442) 
		(stored ?goods_49729440 ?level_49729441)
	)
)

(:action act_act_tpp-propositional_302323_303017
	:parameters ( ?level_140344903 - level ?level_140344905 - level ?truck_140344902 - truck ?level_140344901 - level ?goods_140344904 - goods ?goods_140344900 - goods)
	:precondition (and 
			(loaded ?goods_140344904 ?truck_140344902 ?level_140344903) 
			(loaded ?goods_140344900 ?truck_140344902 ?level_140344903) 
			(next ?level_140344905 ?level_140344903) 
			(stored ?goods_140344900 ?level_140344901)
	)
	:effect (and 
		(loaded ?goods_140344900 ?truck_140344902 ?level_140344905) 
		(next ?level_140344903 ?level_140344901) 
		(stored ?goods_140344904 ?level_140344901)
	)
)

(:action act_act_tpp-propositional_302324_303018
	:parameters ( ?truck_212879822 - truck ?goods_212879821 - goods ?level_212879823 - level ?level_212879824 - level ?level_212879820 - level)
	:precondition (and 
			(loaded ?goods_212879821 ?truck_212879822 ?level_212879824) 
			(next ?level_212879820 ?level_212879823) 
			(next ?level_212879823 ?level_212879820) 
			(stored ?goods_212879821 ?level_212879824) 
			(stored ?goods_212879821 ?level_212879823)
	)
	:effect (and 
		(loaded ?goods_212879821 ?truck_212879822 ?level_212879823) 
		(next ?level_212879820 ?level_212879824)
	)
)

(:action act_act_tpp-propositional_302325_303019
	:parameters ( ?goods_9379129 - goods ?goods_9379127 - goods ?level_9379130 - level ?level_9379131 - level ?level_9379132 - level ?truck_9379128 - truck)
	:precondition (and 
			(loaded ?goods_9379127 ?truck_9379128 ?level_9379132) 
			(loaded ?goods_9379129 ?truck_9379128 ?level_9379131) 
			(next ?level_9379130 ?level_9379131)
	)
	:effect (and 
		(not (loaded ?goods_9379127 ?truck_9379128 ?level_9379131)) 
		(not (loaded ?goods_9379129 ?truck_9379128 ?level_9379130)) 
		(next ?level_9379131 ?level_9379130) 
		(next ?level_9379131 ?level_9379132) 
		(not (stored ?goods_9379127 ?level_9379132))
	)
)

(:action act_act_tpp-propositional_302325_303020
	:parameters ( ?goods_9379129 - goods ?goods_9379127 - goods ?level_9379130 - level ?level_9379131 - level ?level_9379132 - level ?truck_9379128 - truck)
	:precondition (and 
			(loaded ?goods_9379127 ?truck_9379128 ?level_9379132) 
			(loaded ?goods_9379129 ?truck_9379128 ?level_9379131) 
			(next ?level_9379130 ?level_9379131)
	)
	:effect (and 
		(loaded ?goods_9379129 ?truck_9379128 ?level_9379130) 
		(next ?level_9379131 ?level_9379132) 
		(stored ?goods_9379127 ?level_9379130)
	)
)

(:action act_act_tpp-propositional_302326_303021
	:parameters ( ?level_130689851 - level ?level_130689852 - level ?truck_130689848 - truck ?level_130689847 - level ?goods_130689850 - goods ?level_130689849 - level)
	:precondition (and 
			(loaded ?goods_130689850 ?truck_130689848 ?level_130689852) 
			(next ?level_130689849 ?level_130689852) 
			(next ?level_130689847 ?level_130689849) 
			(next ?level_130689847 ?level_130689851) 
			(stored ?goods_130689850 ?level_130689849)
	)
	:effect (and 
		(loaded ?goods_130689850 ?truck_130689848 ?level_130689849) 
		(next ?level_130689852 ?level_130689851) 
		(not (stored ?goods_130689850 ?level_130689847))
	)
)

(:action act_act_tpp-propositional_302327_303022
	:parameters ( ?goods_390914841 - goods ?level_390914842 - level ?level_390914840 - level ?place_390914843 - place ?place_390914844 - place ?truck_390914845 - truck)
	:precondition (and 
			(connected ?place_390914843 ?place_390914844) 
			(loaded ?goods_390914841 ?truck_390914845 ?level_390914842) 
			(next ?level_390914840 ?level_390914842)
	)
	:effect (and 
		(at ?truck_390914845 ?place_390914844) 
		(not (at ?truck_390914845 ?place_390914843)) 
		(loaded ?goods_390914841 ?truck_390914845 ?level_390914840) 
		(next ?level_390914842 ?level_390914840)
	)
)

(:action act_act_tpp-propositional_302327_303023
	:parameters ( ?goods_390914841 - goods ?level_390914842 - level ?place_390914843 - place ?level_390914840 - level ?place_390914844 - place ?truck_390914845 - truck)
	:precondition (and 
			(connected ?place_390914843 ?place_390914844) 
			(loaded ?goods_390914841 ?truck_390914845 ?level_390914842) 
			(next ?level_390914840 ?level_390914842)
	)
	:effect (and 
		(at ?truck_390914845 ?place_390914843) 
		(connected ?place_390914844 ?place_390914843) 
		(loaded ?goods_390914841 ?truck_390914845 ?level_390914840) 
		(next ?level_390914842 ?level_390914840) 
		(stored ?goods_390914841 ?level_390914842)
	)
)

(:action act_act_tpp-propositional_302328_303024
	:parameters ( ?goods_383564886 - goods ?level_383564883 - level ?level_383564884 - level ?truck_383564885 - truck ?level_383564887 - level)
	:precondition (and 
			(loaded ?goods_383564886 ?truck_383564885 ?level_383564884) 
			(loaded ?goods_383564886 ?truck_383564885 ?level_383564887) 
			(next ?level_383564887 ?level_383564883) 
			(next ?level_383564883 ?level_383564884)
	)
	:effect (and 
		(loaded ?goods_383564886 ?truck_383564885 ?level_383564883) 
		(next ?level_383564883 ?level_383564887) 
		(not (stored ?goods_383564886 ?level_383564884))
	)
)

(:action act_act_tpp-propositional_302329_303025
	:parameters ( ?goods_442554095 - goods ?level_442554096 - level ?truck_442554099 - truck ?level_442554098 - level ?goods_442554100 - goods ?level_442554097 - level)
	:precondition (and 
			(loaded ?goods_442554100 ?truck_442554099 ?level_442554096) 
			(loaded ?goods_442554095 ?truck_442554099 ?level_442554097) 
			(next ?level_442554098 ?level_442554096) 
			(next ?level_442554097 ?level_442554096)
	)
	:effect (and 
		(loaded ?goods_442554100 ?truck_442554099 ?level_442554098) 
		(next ?level_442554098 ?level_442554097) 
		(not (stored ?goods_442554095 ?level_442554096))
	)
)

(:action act_act_tpp-propositional_302330_303026
	:parameters ( ?level_119805086 - level ?goods_119805088 - goods ?level_119805090 - level ?truck_119805089 - truck ?goods_119805087 - goods)
	:precondition (and 
			(loaded ?goods_119805088 ?truck_119805089 ?level_119805086) 
			(loaded ?goods_119805087 ?truck_119805089 ?level_119805090) 
			(stored ?goods_119805087 ?level_119805086) 
			(stored ?goods_119805088 ?level_119805086)
	)
	:effect (and 
		(loaded ?goods_119805087 ?truck_119805089 ?level_119805086) 
		(loaded ?goods_119805088 ?truck_119805089 ?level_119805090)
	)
)

(:action act_act_tpp-propositional_302331_303027
	:parameters ( ?level_195868284 - level ?level_195868283 - level ?level_195868282 - level ?truck_195868285 - truck ?goods_195868287 - goods ?level_195868286 - level)
	:precondition (and 
			(loaded ?goods_195868287 ?truck_195868285 ?level_195868283) 
			(next ?level_195868284 ?level_195868282) 
			(next ?level_195868286 ?level_195868284)
	)
	:effect (and 
		(not (loaded ?goods_195868287 ?truck_195868285 ?level_195868286)) 
		(loaded ?goods_195868287 ?truck_195868285 ?level_195868284) 
		(next ?level_195868282 ?level_195868284) 
		(next ?level_195868283 ?level_195868286)
	)
)

(:action act_act_tpp-propositional_302332_303028
	:parameters ( ?goods_33328267 - goods ?goods_33328266 - goods ?level_33328264 - level ?truck_33328265 - truck ?level_33328268 - level)
	:precondition (and 
			(loaded ?goods_33328266 ?truck_33328265 ?level_33328264) 
			(loaded ?goods_33328267 ?truck_33328265 ?level_33328264) 
			(next ?level_33328268 ?level_33328264) 
			(stored ?goods_33328266 ?level_33328264) 
			(stored ?goods_33328267 ?level_33328268) 
			(stored ?goods_33328266 ?level_33328268)
	)
	:effect (and 
		(loaded ?goods_33328266 ?truck_33328265 ?level_33328268) 
		(not (stored ?goods_33328267 ?level_33328264))
	)
)

(:action act_act_tpp-propositional_302333_303029
	:parameters ( ?level_47481406 - level ?truck_47481405 - truck ?goods_47481403 - goods ?level_47481404 - level ?level_47481408 - level ?truck_47481407 - truck)
	:precondition (and 
			(loaded ?goods_47481403 ?truck_47481405 ?level_47481408) 
			(loaded ?goods_47481403 ?truck_47481405 ?level_47481406) 
			(loaded ?goods_47481403 ?truck_47481407 ?level_47481404) 
			(next ?level_47481404 ?level_47481406) 
			(stored ?goods_47481403 ?level_47481404)
	)
	:effect (and 
		(not (loaded ?goods_47481403 ?truck_47481405 ?level_47481404)) 
		(not (loaded ?goods_47481403 ?truck_47481407 ?level_47481406)) 
		(next ?level_47481406 ?level_47481408)
	)
)

(:action act_act_tpp-propositional_302334_303030
	:parameters ( ?market_224233834 - market ?goods_224233829 - goods ?level_224233830 - level ?level_224233831 - level ?truck_224233833 - truck ?goods_224233832 - goods)
	:precondition (and 
			(loaded ?goods_224233832 ?truck_224233833 ?level_224233830) 
			(ready-to-load ?goods_224233829 ?market_224233834 ?level_224233830) 
			(stored ?goods_224233832 ?level_224233831)
	)
	:effect (and 
		(not (loaded ?goods_224233829 ?truck_224233833 ?level_224233830)) 
		(not (ready-to-load ?goods_224233829 ?market_224233834 ?level_224233831)) 
		(ready-to-load ?goods_224233832 ?market_224233834 ?level_224233831) 
		(stored ?goods_224233829 ?level_224233830)
	)
)

(:action act_act_tpp-propositional_302335_303031
	:parameters ( ?truck_55125715 - truck ?level_55125718 - level ?goods_55125716 - goods ?level_55125717 - level ?level_55125714 - level)
	:precondition (and 
			(loaded ?goods_55125716 ?truck_55125715 ?level_55125714) 
			(loaded ?goods_55125716 ?truck_55125715 ?level_55125718) 
			(next ?level_55125717 ?level_55125718) 
			(stored ?goods_55125716 ?level_55125717) 
			(stored ?goods_55125716 ?level_55125714)
	)
	:effect (and 
		(not (loaded ?goods_55125716 ?truck_55125715 ?level_55125717)) 
		(next ?level_55125714 ?level_55125718) 
		(not (stored ?goods_55125716 ?level_55125718))
	)
)

(:action act_act_tpp-propositional_302336_303032
	:parameters ( ?goods_433983505 - goods ?truck_433983503 - truck ?level_433983501 - level ?level_433983502 - level ?level_433983504 - level)
	:precondition (and 
			(loaded ?goods_433983505 ?truck_433983503 ?level_433983504) 
			(next ?level_433983504 ?level_433983502) 
			(next ?level_433983501 ?level_433983504) 
			(stored ?goods_433983505 ?level_433983501)
	)
	:effect (and 
		(loaded ?goods_433983505 ?truck_433983503 ?level_433983502) 
		(next ?level_433983504 ?level_433983501) 
		(stored ?goods_433983505 ?level_433983502) 
		(stored ?goods_433983505 ?level_433983504)
	)
)

(:action act_act_tpp-propositional_302337_303033
	:parameters ( ?truck_249465900 - truck ?level_249465905 - level ?goods_249465901 - goods ?market_249465903 - market ?level_249465904 - level ?level_249465902 - level)
	:precondition (and 
			(loaded ?goods_249465901 ?truck_249465900 ?level_249465905) 
			(next ?level_249465904 ?level_249465905) 
			(ready-to-load ?goods_249465901 ?market_249465903 ?level_249465902)
	)
	:effect (and 
		(loaded ?goods_249465901 ?truck_249465900 ?level_249465904) 
		(loaded ?goods_249465901 ?truck_249465900 ?level_249465902) 
		(next ?level_249465902 ?level_249465904) 
		(ready-to-load ?goods_249465901 ?market_249465903 ?level_249465904) 
		(ready-to-load ?goods_249465901 ?market_249465903 ?level_249465905) 
		(not (stored ?goods_249465901 ?level_249465902)) 
		(not (stored ?goods_249465901 ?level_249465905))
	)
)

(:action act_act_tpp-propositional_302338_303034
	:parameters ( ?level_400864334 - level ?truck_400864330 - truck ?level_400864329 - level ?goods_400864333 - goods ?market_400864331 - market ?level_400864332 - level)
	:precondition (and 
			(loaded ?goods_400864333 ?truck_400864330 ?level_400864329) 
			(loaded ?goods_400864333 ?truck_400864330 ?level_400864334) 
			(ready-to-load ?goods_400864333 ?market_400864331 ?level_400864332) 
			(ready-to-load ?goods_400864333 ?market_400864331 ?level_400864334) 
			(stored ?goods_400864333 ?level_400864332)
	)
	:effect (and 
		(not (loaded ?goods_400864333 ?truck_400864330 ?level_400864332)) 
		(next ?level_400864334 ?level_400864332) 
		(not (ready-to-load ?goods_400864333 ?market_400864331 ?level_400864329))
	)
)

(:action act_act_tpp-propositional_302339_303035
	:parameters ( ?level_82953893 - level ?goods_82953891 - goods ?market_82953892 - market ?goods_82953895 - goods ?truck_82953894 - truck ?level_82953896 - level)
	:precondition (and 
			(loaded ?goods_82953891 ?truck_82953894 ?level_82953893) 
			(ready-to-load ?goods_82953891 ?market_82953892 ?level_82953896) 
			(ready-to-load ?goods_82953895 ?market_82953892 ?level_82953893) 
			(stored ?goods_82953895 ?level_82953896)
	)
	:effect (and 
		(loaded ?goods_82953895 ?truck_82953894 ?level_82953893) 
		(ready-to-load ?goods_82953895 ?market_82953892 ?level_82953896) 
		(stored ?goods_82953891 ?level_82953893)
	)
)

(:action act_act_tpp-propositional_302340_303036
	:parameters ( ?level_449044212 - level ?truck_449044208 - truck ?level_449044210 - level ?level_449044209 - level ?level_449044207 - level ?goods_449044211 - goods)
	:precondition (and 
			(loaded ?goods_449044211 ?truck_449044208 ?level_449044209) 
			(next ?level_449044212 ?level_449044207) 
			(next ?level_449044210 ?level_449044209)
	)
	:effect (and 
		(not (loaded ?goods_449044211 ?truck_449044208 ?level_449044212)) 
		(not (loaded ?goods_449044211 ?truck_449044208 ?level_449044207)) 
		(next ?level_449044209 ?level_449044210) 
		(stored ?goods_449044211 ?level_449044207)
	)
)

(:action act_act_tpp-propositional_302341_303037
	:parameters ( ?market_528891675 - market ?level_528891678 - level ?level_528891677 - level ?goods_528891676 - goods ?goods_528891679 - goods)
	:precondition (and 
			(next ?level_528891678 ?level_528891677) 
			(ready-to-load ?goods_528891676 ?market_528891675 ?level_528891677) 
			(ready-to-load ?goods_528891679 ?market_528891675 ?level_528891678)
	)
	:effect (and 
		(next ?level_528891677 ?level_528891678) 
		(not (ready-to-load ?goods_528891676 ?market_528891675 ?level_528891678)) 
		(stored ?goods_528891679 ?level_528891678)
	)
)

(:action act_act_tpp-propositional_302342_303038
	:parameters ( ?level_341884506 - level ?level_341884508 - level ?goods_341884509 - goods ?truck_341884504 - truck ?goods_341884505 - goods ?market_341884507 - market)
	:precondition (and 
			(loaded ?goods_341884505 ?truck_341884504 ?level_341884506) 
			(ready-to-load ?goods_341884509 ?market_341884507 ?level_341884508) 
			(stored ?goods_341884505 ?level_341884506)
	)
	:effect (and 
		(loaded ?goods_341884509 ?truck_341884504 ?level_341884506) 
		(loaded ?goods_341884509 ?truck_341884504 ?level_341884508) 
		(ready-to-load ?goods_341884509 ?market_341884507 ?level_341884506) 
		(ready-to-load ?goods_341884505 ?market_341884507 ?level_341884506)
	)
)

(:action act_act_tpp-propositional_302343_303039
	:parameters ( ?level_20450504 - level ?goods_20450502 - goods ?level_20450503 - level ?truck_20450505 - truck)
	:precondition (and 
			(loaded ?goods_20450502 ?truck_20450505 ?level_20450504) 
			(next ?level_20450503 ?level_20450504) 
			(next ?level_20450504 ?level_20450503)
	)
	:effect (and 
		(loaded ?goods_20450502 ?truck_20450505 ?level_20450503) 
		(stored ?goods_20450502 ?level_20450504)
	)
)

(:action act_act_tpp-propositional_302343_303040
	:parameters ( ?level_20450504 - level ?goods_20450502 - goods ?level_20450503 - level ?truck_20450505 - truck)
	:precondition (and 
			(loaded ?goods_20450502 ?truck_20450505 ?level_20450504) 
			(next ?level_20450503 ?level_20450504) 
			(next ?level_20450504 ?level_20450503)
	)
	:effect (and 
		(loaded ?goods_20450502 ?truck_20450505 ?level_20450503) 
		(not (stored ?goods_20450502 ?level_20450504))
	)
)

(:action act_act_tpp-propositional_302343_303041
	:parameters ( ?level_20450504 - level ?goods_20450502 - goods ?level_20450503 - level ?truck_20450505 - truck)
	:precondition (and 
			(loaded ?goods_20450502 ?truck_20450505 ?level_20450504) 
			(next ?level_20450503 ?level_20450504) 
			(next ?level_20450504 ?level_20450503)
	)
	:effect (and 
		(not (loaded ?goods_20450502 ?truck_20450505 ?level_20450503)) 
		(stored ?goods_20450502 ?level_20450504)
	)
)

(:action act_act_tpp-propositional_302344_303042
	:parameters ( ?goods_167895806 - goods ?truck_167895807 - truck ?level_167895809 - level ?level_167895808 - level)
	:precondition (and 
			(loaded ?goods_167895806 ?truck_167895807 ?level_167895809) 
			(next ?level_167895809 ?level_167895808) 
			(next ?level_167895808 ?level_167895809)
	)
	:effect (and 
		(loaded ?goods_167895806 ?truck_167895807 ?level_167895808) 
		(stored ?goods_167895806 ?level_167895809)
	)
)

(:action act_act_tpp-propositional_302344_303043
	:parameters ( ?goods_167895806 - goods ?truck_167895807 - truck ?level_167895809 - level ?level_167895808 - level)
	:precondition (and 
			(loaded ?goods_167895806 ?truck_167895807 ?level_167895809) 
			(next ?level_167895809 ?level_167895808) 
			(next ?level_167895808 ?level_167895809)
	)
	:effect (and 
		(loaded ?goods_167895806 ?truck_167895807 ?level_167895808) 
		(not (stored ?goods_167895806 ?level_167895809))
	)
)

(:action act_act_tpp-propositional_302344_303044
	:parameters ( ?goods_167895806 - goods ?truck_167895807 - truck ?level_167895809 - level ?level_167895808 - level)
	:precondition (and 
			(loaded ?goods_167895806 ?truck_167895807 ?level_167895809) 
			(next ?level_167895809 ?level_167895808) 
			(next ?level_167895808 ?level_167895809)
	)
	:effect (and 
		(not (loaded ?goods_167895806 ?truck_167895807 ?level_167895808)) 
		(stored ?goods_167895806 ?level_167895809)
	)
)

(:action act_act_tpp-propositional_302345_303045
	:parameters ( ?level_475058180 - level ?goods_475058183 - goods ?truck_475058181 - truck ?goods_475058184 - goods ?level_475058182 - level ?level_475058185 - level)
	:precondition (and 
			(loaded ?goods_475058184 ?truck_475058181 ?level_475058185) 
			(loaded ?goods_475058183 ?truck_475058181 ?level_475058180) 
			(next ?level_475058180 ?level_475058182) 
			(stored ?goods_475058184 ?level_475058185)
	)
	:effect (and 
		(loaded ?goods_475058183 ?truck_475058181 ?level_475058185) 
		(next ?level_475058182 ?level_475058185) 
		(not (stored ?goods_475058183 ?level_475058180)) 
		(not (stored ?goods_475058184 ?level_475058182))
	)
)

(:action act_act_tpp-propositional_302346_303046
	:parameters ( ?level_564814977 - level ?level_564814975 - level ?goods_564814974 - goods ?goods_564814976 - goods ?truck_564814979 - truck ?level_564814978 - level)
	:precondition (and 
			(loaded ?goods_564814976 ?truck_564814979 ?level_564814977) 
			(next ?level_564814975 ?level_564814977) 
			(stored ?goods_564814974 ?level_564814978)
	)
	:effect (and 
		(loaded ?goods_564814974 ?truck_564814979 ?level_564814975) 
		(not (loaded ?goods_564814976 ?truck_564814979 ?level_564814978)) 
		(next ?level_564814975 ?level_564814978) 
		(not (stored ?goods_564814976 ?level_564814977))
	)
)

(:action act_act_tpp-propositional_302347_303047
	:parameters ( ?truck_120909107 - truck ?level_120909110 - level ?level_120909112 - level ?goods_120909108 - goods ?place_120909109 - place ?truck_120909111 - truck)
	:precondition (and 
			(at ?truck_120909111 ?place_120909109) 
			(loaded ?goods_120909108 ?truck_120909111 ?level_120909112) 
			(loaded ?goods_120909108 ?truck_120909107 ?level_120909110) 
			(next ?level_120909110 ?level_120909112)
	)
	:effect (and 
		(at ?truck_120909107 ?place_120909109) 
		(not (loaded ?goods_120909108 ?truck_120909107 ?level_120909112)) 
		(loaded ?goods_120909108 ?truck_120909111 ?level_120909110)
	)
)

(:action act_act_tpp-propositional_302347_303048
	:parameters ( ?level_120909110 - level ?truck_120909107 - truck ?level_120909112 - level ?goods_120909108 - goods ?place_120909109 - place ?truck_120909111 - truck)
	:precondition (and 
			(at ?truck_120909111 ?place_120909109) 
			(loaded ?goods_120909108 ?truck_120909111 ?level_120909112) 
			(loaded ?goods_120909108 ?truck_120909107 ?level_120909110) 
			(next ?level_120909110 ?level_120909112)
	)
	:effect (and 
		(not (at ?truck_120909107 ?place_120909109)) 
		(not (loaded ?goods_120909108 ?truck_120909111 ?level_120909110)) 
		(next ?level_120909112 ?level_120909110)
	)
)

(:action act_act_tpp-propositional_302348_303049
	:parameters ( ?level_160631328 - level ?place_160631323 - place ?truck_160631324 - truck ?level_160631325 - level ?truck_160631326 - truck ?goods_160631327 - goods)
	:precondition (and 
			(at ?truck_160631324 ?place_160631323) 
			(loaded ?goods_160631327 ?truck_160631324 ?level_160631328) 
			(loaded ?goods_160631327 ?truck_160631326 ?level_160631328) 
			(next ?level_160631325 ?level_160631328)
	)
	:effect (and 
		(not (at ?truck_160631326 ?place_160631323)) 
		(not (loaded ?goods_160631327 ?truck_160631324 ?level_160631325)) 
		(next ?level_160631328 ?level_160631325)
	)
)

(:action act_act_tpp-propositional_302349_303050
	:parameters ( ?truck_317432077 - truck ?level_317432076 - level ?level_317432075 - level ?level_317432078 - level ?goods_317432079 - goods)
	:precondition (and 
			(loaded ?goods_317432079 ?truck_317432077 ?level_317432078) 
			(loaded ?goods_317432079 ?truck_317432077 ?level_317432076) 
			(next ?level_317432076 ?level_317432075) 
			(stored ?goods_317432079 ?level_317432078)
	)
	:effect (and 
		(not (loaded ?goods_317432079 ?truck_317432077 ?level_317432075)) 
		(next ?level_317432078 ?level_317432075) 
		(next ?level_317432075 ?level_317432078) 
		(stored ?goods_317432079 ?level_317432076)
	)
)

(:action act_act_tpp-propositional_302350_303051
	:parameters ( ?level_121582006 - level ?truck_121582007 - truck ?level_121582005 - level ?goods_121582009 - goods ?level_121582008 - level)
	:precondition (and 
			(loaded ?goods_121582009 ?truck_121582007 ?level_121582006) 
			(next ?level_121582005 ?level_121582006) 
			(stored ?goods_121582009 ?level_121582005) 
			(stored ?goods_121582009 ?level_121582008)
	)
	:effect (and 
		(loaded ?goods_121582009 ?truck_121582007 ?level_121582008) 
		(loaded ?goods_121582009 ?truck_121582007 ?level_121582005) 
		(next ?level_121582008 ?level_121582006) 
		(next ?level_121582006 ?level_121582008) 
		(next ?level_121582008 ?level_121582005)
	)
)

(:action act_act_tpp-propositional_302351_303052
	:parameters ( ?truck_419820771 - truck ?level_419820772 - level ?level_419820768 - level ?goods_419820770 - goods ?level_419820769 - level)
	:precondition (and 
			(loaded ?goods_419820770 ?truck_419820771 ?level_419820769) 
			(next ?level_419820768 ?level_419820772) 
			(stored ?goods_419820770 ?level_419820772) 
			(stored ?goods_419820770 ?level_419820769)
	)
	:effect (and 
		(loaded ?goods_419820770 ?truck_419820771 ?level_419820772) 
		(next ?level_419820772 ?level_419820769) 
		(next ?level_419820768 ?level_419820769)
	)
)

(:action act_act_tpp-propositional_302352_303053
	:parameters ( ?level_496343331 - level ?truck_496343330 - truck ?level_496343327 - level ?level_496343328 - level ?goods_496343329 - goods ?truck_496343326 - truck)
	:precondition (and 
			(loaded ?goods_496343329 ?truck_496343330 ?level_496343331) 
			(loaded ?goods_496343329 ?truck_496343326 ?level_496343327) 
			(next ?level_496343328 ?level_496343327)
	)
	:effect (and 
		(loaded ?goods_496343329 ?truck_496343330 ?level_496343328) 
		(loaded ?goods_496343329 ?truck_496343326 ?level_496343328) 
		(next ?level_496343327 ?level_496343328) 
		(next ?level_496343327 ?level_496343331) 
		(not (stored ?goods_496343329 ?level_496343328))
	)
)

(:action act_act_tpp-propositional_302353_303054
	:parameters ( ?level_209971122 - level ?goods_209971121 - goods ?goods_209971120 - goods ?market_209971118 - market ?level_209971117 - level ?truck_209971119 - truck)
	:precondition (and 
			(loaded ?goods_209971121 ?truck_209971119 ?level_209971122) 
			(ready-to-load ?goods_209971121 ?market_209971118 ?level_209971117) 
			(stored ?goods_209971120 ?level_209971117)
	)
	:effect (and 
		(loaded ?goods_209971120 ?truck_209971119 ?level_209971117) 
		(loaded ?goods_209971121 ?truck_209971119 ?level_209971117) 
		(next ?level_209971117 ?level_209971122) 
		(next ?level_209971122 ?level_209971117) 
		(ready-to-load ?goods_209971121 ?market_209971118 ?level_209971122) 
		(ready-to-load ?goods_209971120 ?market_209971118 ?level_209971122) 
		(stored ?goods_209971120 ?level_209971122) 
		(stored ?goods_209971121 ?level_209971117)
	)
)

(:action act_act_tpp-propositional_302354_303055
	:parameters ( ?goods_472946787 - goods ?goods_472946788 - goods ?truck_472946784 - truck ?level_472946786 - level ?level_472946785 - level ?level_472946783 - level)
	:precondition (and 
			(loaded ?goods_472946788 ?truck_472946784 ?level_472946786) 
			(loaded ?goods_472946787 ?truck_472946784 ?level_472946786) 
			(next ?level_472946785 ?level_472946783)
	)
	:effect (and 
		(loaded ?goods_472946787 ?truck_472946784 ?level_472946783) 
		(stored ?goods_472946787 ?level_472946786) 
		(not (stored ?goods_472946788 ?level_472946785)) 
		(stored ?goods_472946787 ?level_472946783)
	)
)

(:action act_act_tpp-propositional_302355_303056
	:parameters ( ?goods_249000957 - goods ?goods_249000956 - goods ?level_249000954 - level ?level_249000955 - level ?truck_249000953 - truck)
	:precondition (and 
			(loaded ?goods_249000956 ?truck_249000953 ?level_249000955) 
			(loaded ?goods_249000957 ?truck_249000953 ?level_249000955) 
			(next ?level_249000955 ?level_249000954) 
			(stored ?goods_249000956 ?level_249000954)
	)
	:effect (and 
		(loaded ?goods_249000957 ?truck_249000953 ?level_249000954) 
		(stored ?goods_249000956 ?level_249000955)
	)
)

(:action act_act_tpp-propositional_302356_303057
	:parameters ( ?level_454068370 - level ?level_454068374 - level ?truck_454068373 - truck ?truck_454068371 - truck ?goods_454068372 - goods)
	:precondition (and 
			(loaded ?goods_454068372 ?truck_454068371 ?level_454068374) 
			(loaded ?goods_454068372 ?truck_454068373 ?level_454068370) 
			(stored ?goods_454068372 ?level_454068374)
	)
	:effect (and 
		(loaded ?goods_454068372 ?truck_454068371 ?level_454068370) 
		(not (loaded ?goods_454068372 ?truck_454068373 ?level_454068374))
	)
)

(:action act_act_tpp-propositional_302357_303058
	:parameters ( ?level_355193950 - level ?level_355193951 - level ?goods_355193952 - goods ?level_355193949 - level)
	:precondition (and 
			(next ?level_355193950 ?level_355193951) 
			(next ?level_355193950 ?level_355193949) 
			(stored ?goods_355193952 ?level_355193950)
	)
	:effect (and 
		(next ?level_355193949 ?level_355193950) 
		(next ?level_355193949 ?level_355193951) 
		(stored ?goods_355193952 ?level_355193949)
	)
)

(:action act_act_tpp-propositional_302358_303059
	:parameters ( ?level_504927285 - level ?level_504927282 - level ?goods_504927284 - goods ?truck_504927280 - truck ?place_504927283 - place ?truck_504927281 - truck)
	:precondition (and 
			(at ?truck_504927280 ?place_504927283) 
			(loaded ?goods_504927284 ?truck_504927280 ?level_504927282) 
			(loaded ?goods_504927284 ?truck_504927281 ?level_504927282) 
			(loaded ?goods_504927284 ?truck_504927281 ?level_504927285)
	)
	:effect (and 
		(at ?truck_504927281 ?place_504927283) 
		(loaded ?goods_504927284 ?truck_504927280 ?level_504927285) 
		(stored ?goods_504927284 ?level_504927282)
	)
)

(:action act_act_tpp-propositional_302359_303060
	:parameters ( ?level_309377456 - level ?level_309377457 - level ?truck_309377454 - truck ?goods_309377455 - goods)
	:precondition (and 
			(loaded ?goods_309377455 ?truck_309377454 ?level_309377457) 
			(next ?level_309377457 ?level_309377456) 
			(next ?level_309377456 ?level_309377457) 
			(stored ?goods_309377455 ?level_309377456)
	)
	:effect (and 
		(not (loaded ?goods_309377455 ?truck_309377454 ?level_309377456)) 
		(not (stored ?goods_309377455 ?level_309377457))
	)
)

(:action act_act_tpp-propositional_302359_303061
	:parameters ( ?level_309377456 - level ?level_309377457 - level ?truck_309377454 - truck ?goods_309377455 - goods)
	:precondition (and 
			(loaded ?goods_309377455 ?truck_309377454 ?level_309377457) 
			(next ?level_309377457 ?level_309377456) 
			(next ?level_309377456 ?level_309377457) 
			(stored ?goods_309377455 ?level_309377456)
	)
	:effect (and 
		(loaded ?goods_309377455 ?truck_309377454 ?level_309377456) 
		(not (stored ?goods_309377455 ?level_309377457))
	)
)

(:action act_act_tpp-propositional_302359_303062
	:parameters ( ?level_309377456 - level ?level_309377457 - level ?goods_309377455 - goods ?truck_309377454 - truck)
	:precondition (and 
			(loaded ?goods_309377455 ?truck_309377454 ?level_309377457) 
			(next ?level_309377457 ?level_309377456) 
			(next ?level_309377456 ?level_309377457) 
			(stored ?goods_309377455 ?level_309377456)
	)
	:effect (and 
		(not (loaded ?goods_309377455 ?truck_309377454 ?level_309377456)) 
		(stored ?goods_309377455 ?level_309377457)
	)
)

(:action act_act_tpp-propositional_302360_303063
	:parameters ( ?level_241212232 - level ?goods_241212231 - goods ?level_241212230 - level ?truck_241212229 - truck ?goods_241212228 - goods)
	:precondition (and 
			(loaded ?goods_241212231 ?truck_241212229 ?level_241212232) 
			(loaded ?goods_241212228 ?truck_241212229 ?level_241212230) 
			(loaded ?goods_241212228 ?truck_241212229 ?level_241212232)
	)
	:effect (and 
		(loaded ?goods_241212231 ?truck_241212229 ?level_241212230) 
		(next ?level_241212230 ?level_241212232) 
		(not (stored ?goods_241212228 ?level_241212232)) 
		(stored ?goods_241212228 ?level_241212230)
	)
)

(:action act_act_tpp-propositional_302361_303064
	:parameters ( ?level_540807249 - level ?goods_540807253 - goods ?goods_540807254 - goods ?truck_540807251 - truck ?level_540807252 - level ?level_540807250 - level)
	:precondition (and 
			(loaded ?goods_540807253 ?truck_540807251 ?level_540807249) 
			(next ?level_540807249 ?level_540807252) 
			(next ?level_540807250 ?level_540807252) 
			(stored ?goods_540807254 ?level_540807250)
	)
	:effect (and 
		(loaded ?goods_540807253 ?truck_540807251 ?level_540807250) 
		(not (stored ?goods_540807254 ?level_540807252)) 
		(stored ?goods_540807254 ?level_540807249)
	)
)

(:action act_act_tpp-propositional_302362_303065
	:parameters ( ?level_122232140 - level ?goods_122232136 - goods ?truck_122232135 - truck ?level_122232137 - level ?level_122232138 - level ?level_122232139 - level)
	:precondition (and 
			(loaded ?goods_122232136 ?truck_122232135 ?level_122232139) 
			(next ?level_122232138 ?level_122232140) 
			(stored ?goods_122232136 ?level_122232137) 
			(stored ?goods_122232136 ?level_122232140)
	)
	:effect (and 
		(loaded ?goods_122232136 ?truck_122232135 ?level_122232138) 
		(loaded ?goods_122232136 ?truck_122232135 ?level_122232137) 
		(next ?level_122232139 ?level_122232140) 
		(stored ?goods_122232136 ?level_122232138)
	)
)

(:action act_act_tpp-propositional_302363_303066
	:parameters ( ?level_3844941 - level ?goods_3844945 - goods ?truck_3844944 - truck ?level_3844942 - level ?level_3844943 - level)
	:precondition (and 
			(loaded ?goods_3844945 ?truck_3844944 ?level_3844942) 
			(next ?level_3844941 ?level_3844943) 
			(next ?level_3844942 ?level_3844941) 
			(stored ?goods_3844945 ?level_3844942)
	)
	:effect (and 
		(loaded ?goods_3844945 ?truck_3844944 ?level_3844943) 
		(loaded ?goods_3844945 ?truck_3844944 ?level_3844941) 
		(next ?level_3844943 ?level_3844942) 
		(next ?level_3844942 ?level_3844943) 
		(stored ?goods_3844945 ?level_3844941)
	)
)

(:action act_act_tpp-propositional_302364_303067
	:parameters ( ?level_297602190 - level ?truck_297602188 - truck ?goods_297602187 - goods ?level_297602189 - level ?level_297602186 - level)
	:precondition (and 
			(loaded ?goods_297602187 ?truck_297602188 ?level_297602189) 
			(next ?level_297602189 ?level_297602186) 
			(next ?level_297602189 ?level_297602190) 
			(stored ?goods_297602187 ?level_297602186)
	)
	:effect (and 
		(not (loaded ?goods_297602187 ?truck_297602188 ?level_297602190)) 
		(next ?level_297602186 ?level_297602190) 
		(next ?level_297602190 ?level_297602189)
	)
)

(:action act_act_tpp-propositional_302365_303068
	:parameters ( ?level_517109185 - level ?level_517109183 - level ?goods_517109182 - goods ?truck_517109184 - truck ?level_517109181 - level)
	:precondition (and 
			(loaded ?goods_517109182 ?truck_517109184 ?level_517109183) 
			(next ?level_517109183 ?level_517109181) 
			(next ?level_517109183 ?level_517109185) 
			(stored ?goods_517109182 ?level_517109185)
	)
	:effect (and 
		(not (loaded ?goods_517109182 ?truck_517109184 ?level_517109185)) 
		(next ?level_517109185 ?level_517109181) 
		(next ?level_517109181 ?level_517109183)
	)
)

(:action act_act_tpp-propositional_302366_303069
	:parameters ( ?market_31657516 - market ?goods_31657518 - goods ?truck_31657517 - truck ?goods_31657519 - goods ?level_31657515 - level ?level_31657514 - level)
	:precondition (and 
			(loaded ?goods_31657519 ?truck_31657517 ?level_31657515) 
			(loaded ?goods_31657518 ?truck_31657517 ?level_31657515) 
			(next ?level_31657515 ?level_31657514) 
			(ready-to-load ?goods_31657519 ?market_31657516 ?level_31657514) 
			(stored ?goods_31657518 ?level_31657514)
	)
	:effect (and 
		(loaded ?goods_31657518 ?truck_31657517 ?level_31657514) 
		(ready-to-load ?goods_31657518 ?market_31657516 ?level_31657515) 
		(stored ?goods_31657519 ?level_31657514)
	)
)

(:action act_act_tpp-propositional_302367_303070
	:parameters ( ?level_196192911 - level ?level_196192910 - level ?level_196192915 - level ?truck_196192914 - truck ?truck_196192912 - truck ?goods_196192913 - goods)
	:precondition (and 
			(loaded ?goods_196192913 ?truck_196192914 ?level_196192910) 
			(loaded ?goods_196192913 ?truck_196192914 ?level_196192911) 
			(loaded ?goods_196192913 ?truck_196192912 ?level_196192915) 
			(next ?level_196192911 ?level_196192910) 
			(stored ?goods_196192913 ?level_196192911)
	)
	:effect (and 
		(loaded ?goods_196192913 ?truck_196192914 ?level_196192915) 
		(loaded ?goods_196192913 ?truck_196192912 ?level_196192910) 
		(next ?level_196192911 ?level_196192915)
	)
)

(:action act_act_tpp-propositional_302368_303071
	:parameters ( ?goods_196258953 - goods ?level_196258954 - level ?truck_196258955 - truck ?truck_196258952 - truck ?place_196258951 - place ?level_196258956 - level)
	:precondition (and 
			(at ?truck_196258952 ?place_196258951) 
			(loaded ?goods_196258953 ?truck_196258952 ?level_196258956) 
			(loaded ?goods_196258953 ?truck_196258955 ?level_196258954) 
			(next ?level_196258954 ?level_196258956) 
			(next ?level_196258956 ?level_196258954)
	)
	:effect (and 
		(not (at ?truck_196258955 ?place_196258951)) 
		(loaded ?goods_196258953 ?truck_196258952 ?level_196258954) 
		(stored ?goods_196258953 ?level_196258956)
	)
)

(:action act_act_tpp-propositional_302369_303072
	:parameters ( ?truck_507364094 - truck ?goods_507364095 - goods ?level_507364093 - level ?level_507364092 - level ?goods_507364096 - goods ?level_507364097 - level)
	:precondition (and 
			(loaded ?goods_507364095 ?truck_507364094 ?level_507364097) 
			(loaded ?goods_507364096 ?truck_507364094 ?level_507364093) 
			(next ?level_507364093 ?level_507364092) 
			(stored ?goods_507364095 ?level_507364092) 
			(stored ?goods_507364095 ?level_507364093)
	)
	:effect (and 
		(loaded ?goods_507364095 ?truck_507364094 ?level_507364092) 
		(next ?level_507364093 ?level_507364097) 
		(stored ?goods_507364096 ?level_507364092)
	)
)

(:action act_act_tpp-propositional_302370_303073
	:parameters ( ?place_255421679 - place ?level_255421678 - level ?goods_255421680 - goods ?truck_255421676 - truck ?truck_255421677 - truck ?level_255421681 - level)
	:precondition (and 
			(at ?truck_255421677 ?place_255421679) 
			(loaded ?goods_255421680 ?truck_255421676 ?level_255421681) 
			(stored ?goods_255421680 ?level_255421678) 
			(stored ?goods_255421680 ?level_255421681)
	)
	:effect (and 
		(at ?truck_255421676 ?place_255421679) 
		(loaded ?goods_255421680 ?truck_255421677 ?level_255421681) 
		(next ?level_255421681 ?level_255421678)
	)
)

(:action act_act_tpp-propositional_302371_303074
	:parameters ( ?goods_285273979 - goods ?level_285273980 - level ?level_285273978 - level ?level_285273977 - level ?truck_285273981 - truck)
	:precondition (and 
			(loaded ?goods_285273979 ?truck_285273981 ?level_285273980) 
			(loaded ?goods_285273979 ?truck_285273981 ?level_285273978) 
			(next ?level_285273977 ?level_285273980) 
			(stored ?goods_285273979 ?level_285273980)
	)
	:effect (and 
		(loaded ?goods_285273979 ?truck_285273981 ?level_285273977) 
		(next ?level_285273980 ?level_285273977) 
		(next ?level_285273978 ?level_285273977) 
		(stored ?goods_285273979 ?level_285273977)
	)
)

(:action act_act_tpp-propositional_302372_303075
	:parameters ( ?level_463511924 - level ?level_463511925 - level ?goods_463511923 - goods ?truck_463511926 - truck ?market_463511927 - market)
	:precondition (and 
			(loaded ?goods_463511923 ?truck_463511926 ?level_463511924) 
			(ready-to-load ?goods_463511923 ?market_463511927 ?level_463511925) 
			(stored ?goods_463511923 ?level_463511924) 
			(stored ?goods_463511923 ?level_463511925)
	)
	:effect (and 
		(loaded ?goods_463511923 ?truck_463511926 ?level_463511925) 
		(next ?level_463511925 ?level_463511924) 
		(ready-to-load ?goods_463511923 ?market_463511927 ?level_463511924)
	)
)

(:action act_act_tpp-propositional_302373_303076
	:parameters ( ?market_92252195 - market ?goods_92252193 - goods ?truck_92252194 - truck ?level_92252196 - level ?level_92252197 - level)
	:precondition (and 
			(loaded ?goods_92252193 ?truck_92252194 ?level_92252196) 
			(next ?level_92252196 ?level_92252197) 
			(ready-to-load ?goods_92252193 ?market_92252195 ?level_92252197) 
			(stored ?goods_92252193 ?level_92252197)
	)
	:effect (and 
		(loaded ?goods_92252193 ?truck_92252194 ?level_92252197) 
		(ready-to-load ?goods_92252193 ?market_92252195 ?level_92252196)
	)
)

(:action act_act_tpp-propositional_302373_303077
	:parameters ( ?market_92252195 - market ?goods_92252193 - goods ?truck_92252194 - truck ?level_92252196 - level ?level_92252197 - level)
	:precondition (and 
			(loaded ?goods_92252193 ?truck_92252194 ?level_92252196) 
			(next ?level_92252196 ?level_92252197) 
			(ready-to-load ?goods_92252193 ?market_92252195 ?level_92252197) 
			(stored ?goods_92252193 ?level_92252197)
	)
	:effect (and 
		(not (loaded ?goods_92252193 ?truck_92252194 ?level_92252197)) 
		(ready-to-load ?goods_92252193 ?market_92252195 ?level_92252196)
	)
)

(:action act_act_tpp-propositional_302374_303078
	:parameters ( ?market_274116056 - market ?truck_274116059 - truck ?goods_274116055 - goods ?level_274116054 - level ?goods_274116057 - goods ?level_274116058 - level)
	:precondition (and 
			(loaded ?goods_274116055 ?truck_274116059 ?level_274116058) 
			(ready-to-load ?goods_274116055 ?market_274116056 ?level_274116058) 
			(stored ?goods_274116057 ?level_274116054)
	)
	:effect (and 
		(loaded ?goods_274116057 ?truck_274116059 ?level_274116058) 
		(next ?level_274116054 ?level_274116058) 
		(ready-to-load ?goods_274116055 ?market_274116056 ?level_274116054)
	)
)

(:action act_act_tpp-propositional_302375_303079
	:parameters ( ?truck_137427830 - truck ?goods_137427829 - goods ?level_137427831 - level ?level_137427832 - level ?level_137427833 - level)
	:precondition (and 
			(loaded ?goods_137427829 ?truck_137427830 ?level_137427832) 
			(next ?level_137427833 ?level_137427831) 
			(stored ?goods_137427829 ?level_137427833) 
			(stored ?goods_137427829 ?level_137427832)
	)
	:effect (and 
		(not (loaded ?goods_137427829 ?truck_137427830 ?level_137427833)) 
		(next ?level_137427832 ?level_137427831)
	)
)

(:action act_act_tpp-propositional_302376_303080
	:parameters ( ?level_160939790 - level ?level_160939788 - level ?level_160939789 - level ?goods_160939792 - goods ?truck_160939791 - truck)
	:precondition (and 
			(loaded ?goods_160939792 ?truck_160939791 ?level_160939789) 
			(next ?level_160939790 ?level_160939788) 
			(stored ?goods_160939792 ?level_160939788) 
			(stored ?goods_160939792 ?level_160939790)
	)
	:effect (and 
		(not (loaded ?goods_160939792 ?truck_160939791 ?level_160939790)) 
		(next ?level_160939788 ?level_160939789)
	)
)

(:action act_act_tpp-propositional_302377_303081
	:parameters ( ?level_189283492 - level ?level_189283493 - level ?level_189283494 - level ?truck_189283491 - truck ?goods_189283490 - goods)
	:precondition (and 
			(loaded ?goods_189283490 ?truck_189283491 ?level_189283492) 
			(next ?level_189283492 ?level_189283493) 
			(stored ?goods_189283490 ?level_189283494) 
			(stored ?goods_189283490 ?level_189283492)
	)
	:effect (and 
		(not (loaded ?goods_189283490 ?truck_189283491 ?level_189283493)) 
		(loaded ?goods_189283490 ?truck_189283491 ?level_189283494) 
		(next ?level_189283492 ?level_189283494) 
		(next ?level_189283493 ?level_189283492)
	)
)

(:action act_act_tpp-propositional_302378_303082
	:parameters ( ?level_232502987 - level ?truck_232502988 - truck ?level_232502989 - level ?goods_232502986 - goods)
	:precondition (and 
			(loaded ?goods_232502986 ?truck_232502988 ?level_232502987) 
			(next ?level_232502989 ?level_232502987) 
			(stored ?goods_232502986 ?level_232502987) 
			(stored ?goods_232502986 ?level_232502989)
	)
	:effect (and 
		(not (loaded ?goods_232502986 ?truck_232502988 ?level_232502989)) 
		(next ?level_232502987 ?level_232502989)
	)
)

(:action act_act_tpp-propositional_302378_303083
	:parameters ( ?truck_232502988 - truck ?level_232502987 - level ?level_232502989 - level ?goods_232502986 - goods)
	:precondition (and 
			(loaded ?goods_232502986 ?truck_232502988 ?level_232502987) 
			(next ?level_232502989 ?level_232502987) 
			(stored ?goods_232502986 ?level_232502987) 
			(stored ?goods_232502986 ?level_232502989)
	)
	:effect (and 
		(loaded ?goods_232502986 ?truck_232502988 ?level_232502989) 
		(next ?level_232502987 ?level_232502989)
	)
)

(:action act_act_tpp-propositional_302379_303084
	:parameters ( ?level_152487823 - level ?level_152487824 - level ?market_152487825 - market ?goods_152487822 - goods ?truck_152487821 - truck ?level_152487820 - level)
	:precondition (and 
			(loaded ?goods_152487822 ?truck_152487821 ?level_152487824) 
			(ready-to-load ?goods_152487822 ?market_152487825 ?level_152487823) 
			(ready-to-load ?goods_152487822 ?market_152487825 ?level_152487824) 
			(stored ?goods_152487822 ?level_152487820)
	)
	:effect (and 
		(loaded ?goods_152487822 ?truck_152487821 ?level_152487823) 
		(next ?level_152487820 ?level_152487823) 
		(next ?level_152487824 ?level_152487823) 
		(ready-to-load ?goods_152487822 ?market_152487825 ?level_152487820)
	)
)

(:action act_act_tpp-propositional_302380_303085
	:parameters ( ?goods_214547438 - goods ?goods_214547439 - goods ?level_214547441 - level ?truck_214547440 - truck ?level_214547437 - level ?level_214547436 - level)
	:precondition (and 
			(loaded ?goods_214547438 ?truck_214547440 ?level_214547436) 
			(next ?level_214547436 ?level_214547437) 
			(stored ?goods_214547438 ?level_214547441) 
			(stored ?goods_214547439 ?level_214547436)
	)
	:effect (and 
		(not (loaded ?goods_214547439 ?truck_214547440 ?level_214547441)) 
		(not (loaded ?goods_214547438 ?truck_214547440 ?level_214547437)) 
		(loaded ?goods_214547439 ?truck_214547440 ?level_214547436) 
		(next ?level_214547441 ?level_214547437)
	)
)

(:action act_act_tpp-propositional_302381_303086
	:parameters ( ?level_231817140 - level ?level_231817142 - level ?truck_231817141 - truck ?goods_231817144 - goods ?level_231817143 - level)
	:precondition (and 
			(loaded ?goods_231817144 ?truck_231817141 ?level_231817143) 
			(loaded ?goods_231817144 ?truck_231817141 ?level_231817142) 
			(next ?level_231817143 ?level_231817140) 
			(stored ?goods_231817144 ?level_231817140)
	)
	:effect (and 
		(loaded ?goods_231817144 ?truck_231817141 ?level_231817140) 
		(next ?level_231817142 ?level_231817140) 
		(next ?level_231817140 ?level_231817143)
	)
)

(:action act_act_tpp-propositional_302382_303087
	:parameters ( ?level_345240113 - level ?goods_345240115 - goods ?level_345240114 - level ?truck_345240118 - truck ?level_345240117 - level ?level_345240116 - level)
	:precondition (and 
			(loaded ?goods_345240115 ?truck_345240118 ?level_345240117) 
			(loaded ?goods_345240115 ?truck_345240118 ?level_345240114) 
			(next ?level_345240116 ?level_345240117) 
			(stored ?goods_345240115 ?level_345240113)
	)
	:effect (and 
		(loaded ?goods_345240115 ?truck_345240118 ?level_345240116) 
		(next ?level_345240113 ?level_345240114) 
		(next ?level_345240117 ?level_345240113)
	)
)

(:action act_act_tpp-propositional_302383_303088
	:parameters ( ?goods_400659219 - goods ?truck_400659218 - truck ?level_400659216 - level ?goods_400659215 - goods ?level_400659214 - level ?level_400659217 - level)
	:precondition (and 
			(loaded ?goods_400659219 ?truck_400659218 ?level_400659217) 
			(next ?level_400659216 ?level_400659214) 
			(next ?level_400659216 ?level_400659217) 
			(stored ?goods_400659215 ?level_400659217)
	)
	:effect (and 
		(loaded ?goods_400659219 ?truck_400659218 ?level_400659216) 
		(loaded ?goods_400659215 ?truck_400659218 ?level_400659214) 
		(loaded ?goods_400659215 ?truck_400659218 ?level_400659217)
	)
)

(:action act_act_tpp-propositional_302384_303089
	:parameters ( ?truck_23736356 - truck ?place_23736355 - place ?level_23736354 - level ?goods_23736352 - goods ?level_23736351 - level ?truck_23736353 - truck)
	:precondition (and 
			(at ?truck_23736353 ?place_23736355) 
			(loaded ?goods_23736352 ?truck_23736353 ?level_23736351) 
			(loaded ?goods_23736352 ?truck_23736356 ?level_23736354) 
			(next ?level_23736351 ?level_23736354)
	)
	:effect (and 
		(at ?truck_23736356 ?place_23736355) 
		(loaded ?goods_23736352 ?truck_23736353 ?level_23736354) 
		(next ?level_23736354 ?level_23736351)
	)
)

(:action act_act_tpp-propositional_302385_303090
	:parameters ( ?goods_416665467 - goods ?truck_416665468 - truck ?level_416665469 - level ?level_416665466 - level ?market_416665470 - market)
	:precondition (and 
			(loaded ?goods_416665467 ?truck_416665468 ?level_416665469) 
			(next ?level_416665466 ?level_416665469) 
			(ready-to-load ?goods_416665467 ?market_416665470 ?level_416665466) 
			(stored ?goods_416665467 ?level_416665469)
	)
	:effect (and 
		(loaded ?goods_416665467 ?truck_416665468 ?level_416665466) 
		(ready-to-load ?goods_416665467 ?market_416665470 ?level_416665469)
	)
)

(:action act_act_tpp-propositional_302385_303091
	:parameters ( ?goods_416665467 - goods ?truck_416665468 - truck ?level_416665469 - level ?level_416665466 - level ?market_416665470 - market)
	:precondition (and 
			(loaded ?goods_416665467 ?truck_416665468 ?level_416665469) 
			(next ?level_416665466 ?level_416665469) 
			(ready-to-load ?goods_416665467 ?market_416665470 ?level_416665466) 
			(stored ?goods_416665467 ?level_416665469)
	)
	:effect (and 
		(not (loaded ?goods_416665467 ?truck_416665468 ?level_416665466)) 
		(not (ready-to-load ?goods_416665467 ?market_416665470 ?level_416665469))
	)
)

(:action act_act_tpp-propositional_302386_303092
	:parameters ( ?goods_41948391 - goods ?truck_41948388 - truck ?goods_41948389 - goods ?level_41948390 - level ?level_41948392 - level)
	:precondition (and 
			(loaded ?goods_41948391 ?truck_41948388 ?level_41948392) 
			(loaded ?goods_41948391 ?truck_41948388 ?level_41948390) 
			(stored ?goods_41948389 ?level_41948392)
	)
	:effect (and 
		(loaded ?goods_41948389 ?truck_41948388 ?level_41948390) 
		(stored ?goods_41948391 ?level_41948392)
	)
)

(:action act_act_tpp-propositional_302386_303093
	:parameters ( ?goods_41948391 - goods ?truck_41948388 - truck ?goods_41948389 - goods ?level_41948390 - level ?level_41948392 - level)
	:precondition (and 
			(loaded ?goods_41948391 ?truck_41948388 ?level_41948392) 
			(loaded ?goods_41948391 ?truck_41948388 ?level_41948390) 
			(stored ?goods_41948389 ?level_41948392)
	)
	:effect (and 
		(loaded ?goods_41948389 ?truck_41948388 ?level_41948392) 
		(stored ?goods_41948389 ?level_41948390) 
		(not (stored ?goods_41948391 ?level_41948392))
	)
)

(:action act_act_tpp-propositional_302387_303094
	:parameters ( ?truck_148543921 - truck ?truck_148543920 - truck ?level_148543923 - level ?level_148543922 - level ?goods_148543919 - goods ?goods_148543918 - goods)
	:precondition (and 
			(loaded ?goods_148543919 ?truck_148543921 ?level_148543922) 
			(loaded ?goods_148543919 ?truck_148543920 ?level_148543923) 
			(loaded ?goods_148543918 ?truck_148543921 ?level_148543922)
	)
	:effect (and 
		(loaded ?goods_148543919 ?truck_148543921 ?level_148543923) 
		(loaded ?goods_148543918 ?truck_148543920 ?level_148543922)
	)
)

(:action act_act_tpp-propositional_302388_303095
	:parameters ( ?level_384152309 - level ?level_384152313 - level ?goods_384152311 - goods ?level_384152312 - level ?truck_384152310 - truck)
	:precondition (and 
			(loaded ?goods_384152311 ?truck_384152310 ?level_384152313) 
			(next ?level_384152312 ?level_384152309) 
			(next ?level_384152313 ?level_384152309) 
			(stored ?goods_384152311 ?level_384152309) 
			(stored ?goods_384152311 ?level_384152313)
	)
	:effect (and 
		(not (loaded ?goods_384152311 ?truck_384152310 ?level_384152309)) 
		(next ?level_384152309 ?level_384152313) 
		(not (stored ?goods_384152311 ?level_384152312))
	)
)

(:action act_act_tpp-propositional_302389_303096
	:parameters ( ?goods_262020710 - goods ?goods_262020709 - goods ?truck_262020708 - truck ?level_262020711 - level ?truck_262020712 - truck)
	:precondition (and 
			(loaded ?goods_262020709 ?truck_262020708 ?level_262020711) 
			(loaded ?goods_262020710 ?truck_262020712 ?level_262020711)
	)
	:effect (and 
		(loaded ?goods_262020709 ?truck_262020712 ?level_262020711) 
		(loaded ?goods_262020710 ?truck_262020708 ?level_262020711)
	)
)

(:action act_act_tpp-propositional_302390_303097
	:parameters ( ?level_448155454 - level ?level_448155456 - level ?goods_448155455 - goods ?level_448155453 - level)
	:precondition (and 
			(next ?level_448155453 ?level_448155456) 
			(next ?level_448155454 ?level_448155456) 
			(next ?level_448155454 ?level_448155453) 
			(next ?level_448155453 ?level_448155454) 
			(stored ?goods_448155455 ?level_448155453) 
			(stored ?goods_448155455 ?level_448155456)
	)
	:effect (and 
		(next ?level_448155456 ?level_448155453) 
		(stored ?goods_448155455 ?level_448155454)
	)
)

(:action act_act_tpp-propositional_302391_303098
	:parameters ( ?place_498079097 - place ?truck_498079098 - truck ?goods_498079093 - goods ?level_498079094 - level ?truck_498079096 - truck ?goods_498079095 - goods)
	:precondition (and 
			(at ?truck_498079098 ?place_498079097) 
			(loaded ?goods_498079093 ?truck_498079096 ?level_498079094) 
			(stored ?goods_498079095 ?level_498079094)
	)
	:effect (and 
		(at ?truck_498079096 ?place_498079097) 
		(not (loaded ?goods_498079095 ?truck_498079098 ?level_498079094)) 
		(stored ?goods_498079093 ?level_498079094)
	)
)

(:action act_act_tpp-propositional_302392_303099
	:parameters ( ?market_353378713 - market ?truck_353378716 - truck ?level_353378715 - level ?level_353378712 - level ?level_353378711 - level ?goods_353378714 - goods)
	:precondition (and 
			(loaded ?goods_353378714 ?truck_353378716 ?level_353378712) 
			(next ?level_353378715 ?level_353378712) 
			(next ?level_353378712 ?level_353378711) 
			(ready-to-load ?goods_353378714 ?market_353378713 ?level_353378712)
	)
	:effect (and 
		(loaded ?goods_353378714 ?truck_353378716 ?level_353378711) 
		(next ?level_353378711 ?level_353378712) 
		(not (ready-to-load ?goods_353378714 ?market_353378713 ?level_353378715)) 
		(not (ready-to-load ?goods_353378714 ?market_353378713 ?level_353378711))
	)
)

(:action act_act_tpp-propositional_302393_303100
	:parameters ( ?goods_294707242 - goods ?level_294707241 - level ?level_294707243 - level ?truck_294707244 - truck ?level_294707240 - level)
	:precondition (and 
			(loaded ?goods_294707242 ?truck_294707244 ?level_294707243) 
			(next ?level_294707240 ?level_294707241) 
			(stored ?goods_294707242 ?level_294707243) 
			(stored ?goods_294707242 ?level_294707241)
	)
	:effect (and 
		(loaded ?goods_294707242 ?truck_294707244 ?level_294707241) 
		(next ?level_294707240 ?level_294707243) 
		(next ?level_294707243 ?level_294707240) 
		(next ?level_294707243 ?level_294707241) 
		(not (stored ?goods_294707242 ?level_294707240))
	)
)

(:action act_act_tpp-propositional_302394_303101
	:parameters ( ?level_469723324 - level ?market_469723322 - market ?truck_469723325 - truck ?level_469723320 - level ?level_469723321 - level ?goods_469723323 - goods)
	:precondition (and 
			(loaded ?goods_469723323 ?truck_469723325 ?level_469723324) 
			(ready-to-load ?goods_469723323 ?market_469723322 ?level_469723320) 
			(stored ?goods_469723323 ?level_469723321) 
			(stored ?goods_469723323 ?level_469723320)
	)
	:effect (and 
		(not (loaded ?goods_469723323 ?truck_469723325 ?level_469723320)) 
		(next ?level_469723321 ?level_469723320) 
		(ready-to-load ?goods_469723323 ?market_469723322 ?level_469723324) 
		(not (stored ?goods_469723323 ?level_469723324))
	)
)

(:action act_act_tpp-propositional_302395_303102
	:parameters ( ?goods_114439398 - goods ?level_114439394 - level ?truck_114439396 - truck ?level_114439395 - level ?goods_114439393 - goods ?level_114439397 - level)
	:precondition (and 
			(loaded ?goods_114439398 ?truck_114439396 ?level_114439397) 
			(loaded ?goods_114439398 ?truck_114439396 ?level_114439395) 
			(loaded ?goods_114439393 ?truck_114439396 ?level_114439395) 
			(stored ?goods_114439393 ?level_114439394)
	)
	:effect (and 
		(not (loaded ?goods_114439393 ?truck_114439396 ?level_114439397)) 
		(loaded ?goods_114439398 ?truck_114439396 ?level_114439394) 
		(next ?level_114439395 ?level_114439394)
	)
)

(:action act_act_tpp-propositional_302396_303103
	:parameters ( ?level_549148441 - level ?level_549148442 - level ?level_549148440 - level ?goods_549148444 - goods ?goods_549148443 - goods ?truck_549148445 - truck)
	:precondition (and 
			(loaded ?goods_549148444 ?truck_549148445 ?level_549148441) 
			(next ?level_549148440 ?level_549148441) 
			(next ?level_549148440 ?level_549148442) 
			(stored ?goods_549148443 ?level_549148441)
	)
	:effect (and 
		(loaded ?goods_549148443 ?truck_549148445 ?level_549148442) 
		(not (loaded ?goods_549148443 ?truck_549148445 ?level_549148440)) 
		(next ?level_549148442 ?level_549148441) 
		(not (stored ?goods_549148444 ?level_549148440))
	)
)

(:action act_act_tpp-propositional_302397_303104
	:parameters ( ?goods_485332112 - goods ?goods_485332114 - goods ?level_485332113 - level ?level_485332111 - level ?truck_485332109 - truck ?level_485332110 - level)
	:precondition (and 
			(loaded ?goods_485332114 ?truck_485332109 ?level_485332110) 
			(loaded ?goods_485332114 ?truck_485332109 ?level_485332113) 
			(next ?level_485332111 ?level_485332110) 
			(stored ?goods_485332112 ?level_485332111)
	)
	:effect (and 
		(not (loaded ?goods_485332112 ?truck_485332109 ?level_485332113)) 
		(loaded ?goods_485332114 ?truck_485332109 ?level_485332111) 
		(loaded ?goods_485332112 ?truck_485332109 ?level_485332110)
	)
)

(:action act_act_tpp-propositional_302398_303105
	:parameters ( ?goods_458335431 - goods ?level_458335430 - level ?goods_458335429 - goods ?level_458335427 - level ?truck_458335428 - truck)
	:precondition (and 
			(loaded ?goods_458335429 ?truck_458335428 ?level_458335430) 
			(loaded ?goods_458335431 ?truck_458335428 ?level_458335430) 
			(stored ?goods_458335429 ?level_458335430) 
			(stored ?goods_458335429 ?level_458335427)
	)
	:effect (and 
		(loaded ?goods_458335429 ?truck_458335428 ?level_458335427) 
		(next ?level_458335430 ?level_458335427) 
		(not (stored ?goods_458335431 ?level_458335430))
	)
)

(:action act_act_tpp-propositional_302399_303106
	:parameters ( ?goods_184262850 - goods ?goods_184262852 - goods ?level_184262851 - level ?level_184262854 - level ?market_184262853 - market)
	:precondition (and 
			(ready-to-load ?goods_184262850 ?market_184262853 ?level_184262854) 
			(ready-to-load ?goods_184262852 ?market_184262853 ?level_184262851) 
			(stored ?goods_184262852 ?level_184262851)
	)
	:effect (and 
		(ready-to-load ?goods_184262852 ?market_184262853 ?level_184262854) 
		(not (ready-to-load ?goods_184262850 ?market_184262853 ?level_184262851))
	)
)

(:action act_act_tpp-propositional_302400_303107
	:parameters ( ?level_23674315 - level ?goods_23674313 - goods ?level_23674314 - level ?truck_23674312 - truck)
	:precondition (and 
			(loaded ?goods_23674313 ?truck_23674312 ?level_23674315) 
			(next ?level_23674314 ?level_23674315) 
			(stored ?goods_23674313 ?level_23674314) 
			(stored ?goods_23674313 ?level_23674315)
	)
	:effect (and 
		(loaded ?goods_23674313 ?truck_23674312 ?level_23674314) 
		(next ?level_23674315 ?level_23674314)
	)
)

(:action act_act_tpp-propositional_302401_303108
	:parameters ( ?truck_82750623 - truck ?level_82750626 - level ?goods_82750625 - goods ?level_82750627 - level ?level_82750624 - level)
	:precondition (and 
			(loaded ?goods_82750625 ?truck_82750623 ?level_82750627) 
			(next ?level_82750624 ?level_82750627) 
			(stored ?goods_82750625 ?level_82750626) 
			(stored ?goods_82750625 ?level_82750624)
	)
	:effect (and 
		(loaded ?goods_82750625 ?truck_82750623 ?level_82750624) 
		(next ?level_82750627 ?level_82750626)
	)
)

(:action act_act_tpp-propositional_302402_303109
	:parameters ( ?goods_147712117 - goods ?level_147712120 - level ?truck_147712119 - truck ?level_147712118 - level)
	:precondition (and 
			(loaded ?goods_147712117 ?truck_147712119 ?level_147712120) 
			(next ?level_147712120 ?level_147712118) 
			(stored ?goods_147712117 ?level_147712118) 
			(stored ?goods_147712117 ?level_147712120)
	)
	:effect (and 
		(loaded ?goods_147712117 ?truck_147712119 ?level_147712118) 
		(next ?level_147712118 ?level_147712120)
	)
)

(:action act_act_tpp-propositional_302403_303110
	:parameters ( ?truck_343917248 - truck ?level_343917250 - level ?level_343917251 - level ?level_343917249 - level ?goods_343917252 - goods)
	:precondition (and 
			(loaded ?goods_343917252 ?truck_343917248 ?level_343917251) 
			(next ?level_343917250 ?level_343917249) 
			(stored ?goods_343917252 ?level_343917250) 
			(stored ?goods_343917252 ?level_343917249)
	)
	:effect (and 
		(loaded ?goods_343917252 ?truck_343917248 ?level_343917249) 
		(next ?level_343917250 ?level_343917251)
	)
)

(:action act_act_tpp-propositional_302404_303111
	:parameters ( ?truck_76559993 - truck ?goods_76559992 - goods ?level_76559994 - level ?level_76559991 - level ?level_76559990 - level)
	:precondition (and 
			(loaded ?goods_76559992 ?truck_76559993 ?level_76559991) 
			(loaded ?goods_76559992 ?truck_76559993 ?level_76559994) 
			(next ?level_76559991 ?level_76559994) 
			(next ?level_76559990 ?level_76559991) 
			(next ?level_76559991 ?level_76559990) 
			(stored ?goods_76559992 ?level_76559991)
	)
	:effect (and 
		(loaded ?goods_76559992 ?truck_76559993 ?level_76559990) 
		(next ?level_76559994 ?level_76559991)
	)
)

(:action act_act_tpp-propositional_302405_303112
	:parameters ( ?truck_496770651 - truck ?goods_496770654 - goods ?level_496770650 - level ?level_496770652 - level ?level_496770653 - level ?goods_496770649 - goods)
	:precondition (and 
			(loaded ?goods_496770654 ?truck_496770651 ?level_496770650) 
			(next ?level_496770652 ?level_496770653) 
			(next ?level_496770653 ?level_496770652) 
			(stored ?goods_496770649 ?level_496770653) 
			(stored ?goods_496770649 ?level_496770650)
	)
	:effect (and 
		(loaded ?goods_496770649 ?truck_496770651 ?level_496770653) 
		(not (loaded ?goods_496770654 ?truck_496770651 ?level_496770652)) 
		(next ?level_496770650 ?level_496770653)
	)
)

(:action act_act_tpp-propositional_302406_303113
	:parameters ( ?level_162167529 - level ?truck_162167527 - truck ?goods_162167526 - goods ?truck_162167525 - truck ?goods_162167528 - goods ?level_162167530 - level)
	:precondition (and 
			(loaded ?goods_162167528 ?truck_162167525 ?level_162167529) 
			(loaded ?goods_162167526 ?truck_162167527 ?level_162167530) 
			(loaded ?goods_162167526 ?truck_162167525 ?level_162167530)
	)
	:effect (and 
		(loaded ?goods_162167528 ?truck_162167525 ?level_162167530) 
		(not (loaded ?goods_162167528 ?truck_162167527 ?level_162167529)) 
		(stored ?goods_162167526 ?level_162167529)
	)
)

(:action act_act_tpp-propositional_302407_303114
	:parameters ( ?goods_41083761 - goods ?place_41083757 - place ?level_41083758 - level ?truck_41083759 - truck ?place_41083760 - place)
	:precondition (and 
			(at ?truck_41083759 ?place_41083760) 
			(at ?truck_41083759 ?place_41083757) 
			(connected ?place_41083757 ?place_41083760) 
			(stored ?goods_41083761 ?level_41083758)
	)
	:effect (and 
		(connected ?place_41083760 ?place_41083757) 
		(loaded ?goods_41083761 ?truck_41083759 ?level_41083758)
	)
)

(:action act_act_tpp-propositional_302408_303115
	:parameters ( ?level_33707821 - level ?truck_33707820 - truck ?level_33707822 - level ?level_33707824 - level ?goods_33707819 - goods ?goods_33707823 - goods)
	:precondition (and 
			(loaded ?goods_33707823 ?truck_33707820 ?level_33707824) 
			(loaded ?goods_33707819 ?truck_33707820 ?level_33707822) 
			(loaded ?goods_33707819 ?truck_33707820 ?level_33707821) 
			(loaded ?goods_33707823 ?truck_33707820 ?level_33707822) 
			(stored ?goods_33707819 ?level_33707821)
	)
	:effect (and 
		(not (loaded ?goods_33707823 ?truck_33707820 ?level_33707821)) 
		(stored ?goods_33707819 ?level_33707824) 
		(stored ?goods_33707823 ?level_33707822)
	)
)

(:action act_act_tpp-propositional_302409_303116
	:parameters ( ?level_407436373 - level ?level_407436375 - level ?goods_407436372 - goods ?goods_407436370 - goods ?truck_407436374 - truck ?level_407436371 - level)
	:precondition (and 
			(loaded ?goods_407436372 ?truck_407436374 ?level_407436371) 
			(loaded ?goods_407436370 ?truck_407436374 ?level_407436373) 
			(next ?level_407436371 ?level_407436375)
	)
	:effect (and 
		(loaded ?goods_407436372 ?truck_407436374 ?level_407436373) 
		(next ?level_407436375 ?level_407436371) 
		(stored ?goods_407436370 ?level_407436373)
	)
)

(:action act_act_tpp-propositional_302410_303117
	:parameters ( ?level_261796551 - level ?place_261796554 - place ?goods_261796556 - goods ?truck_261796555 - truck ?truck_261796553 - truck ?goods_261796552 - goods)
	:precondition (and 
			(at ?truck_261796555 ?place_261796554) 
			(loaded ?goods_261796552 ?truck_261796553 ?level_261796551) 
			(loaded ?goods_261796556 ?truck_261796555 ?level_261796551) 
			(loaded ?goods_261796556 ?truck_261796553 ?level_261796551)
	)
	:effect (and 
		(at ?truck_261796553 ?place_261796554) 
		(not (loaded ?goods_261796552 ?truck_261796555 ?level_261796551)) 
		(stored ?goods_261796556 ?level_261796551)
	)
)

(:action act_act_tpp-propositional_302411_303118
	:parameters ( ?level_395176234 - level ?market_395176235 - market ?goods_395176236 - goods ?goods_395176237 - goods ?level_395176233 - level)
	:precondition (and 
			(ready-to-load ?goods_395176237 ?market_395176235 ?level_395176234) 
			(stored ?goods_395176236 ?level_395176233) 
			(stored ?goods_395176237 ?level_395176234)
	)
	:effect (and 
		(next ?level_395176234 ?level_395176233) 
		(ready-to-load ?goods_395176236 ?market_395176235 ?level_395176233) 
		(ready-to-load ?goods_395176237 ?market_395176235 ?level_395176233)
	)
)

(:action act_act_tpp-propositional_302412_303119
	:parameters ( ?goods_164235718 - goods ?level_164235719 - level ?truck_164235720 - truck ?goods_164235721 - goods ?level_164235717 - level)
	:precondition (and 
			(loaded ?goods_164235721 ?truck_164235720 ?level_164235719) 
			(loaded ?goods_164235718 ?truck_164235720 ?level_164235717) 
			(next ?level_164235719 ?level_164235717) 
			(stored ?goods_164235718 ?level_164235717)
	)
	:effect (and 
		(loaded ?goods_164235718 ?truck_164235720 ?level_164235719) 
		(not (loaded ?goods_164235721 ?truck_164235720 ?level_164235717))
	)
)

(:action act_act_tpp-propositional_302413_303120
	:parameters ( ?place_541323869 - place ?truck_541323868 - truck ?level_541323867 - level ?goods_541323871 - goods ?truck_541323870 - truck ?place_541323866 - place)
	:precondition (and 
			(at ?truck_541323868 ?place_541323869) 
			(at ?truck_541323870 ?place_541323866) 
			(loaded ?goods_541323871 ?truck_541323868 ?level_541323867)
	)
	:effect (and 
		(at ?truck_541323868 ?place_541323866) 
		(not (at ?truck_541323870 ?place_541323869)) 
		(connected ?place_541323869 ?place_541323866) 
		(not (loaded ?goods_541323871 ?truck_541323870 ?level_541323867))
	)
)

(:action act_act_tpp-propositional_302414_303121
	:parameters ( ?goods_119553994 - goods ?goods_119553998 - goods ?level_119553995 - level ?level_119553997 - level ?market_119553996 - market ?level_119553999 - level)
	:precondition (and 
			(next ?level_119553999 ?level_119553997) 
			(ready-to-load ?goods_119553994 ?market_119553996 ?level_119553999) 
			(stored ?goods_119553994 ?level_119553995) 
			(stored ?goods_119553998 ?level_119553997)
	)
	:effect (and 
		(not (ready-to-load ?goods_119553998 ?market_119553996 ?level_119553997)) 
		(ready-to-load ?goods_119553998 ?market_119553996 ?level_119553995) 
		(not (stored ?goods_119553994 ?level_119553999))
	)
)

(:action act_act_tpp-propositional_302415_303122
	:parameters ( ?truck_367079894 - truck ?goods_367079890 - goods ?level_367079892 - level ?level_367079891 - level ?level_367079893 - level)
	:precondition (and 
			(loaded ?goods_367079890 ?truck_367079894 ?level_367079891) 
			(loaded ?goods_367079890 ?truck_367079894 ?level_367079892) 
			(next ?level_367079891 ?level_367079893) 
			(next ?level_367079892 ?level_367079893) 
			(stored ?goods_367079890 ?level_367079893)
	)
	:effect (and 
		(not (loaded ?goods_367079890 ?truck_367079894 ?level_367079893)) 
		(next ?level_367079891 ?level_367079892)
	)
)

(:action act_act_tpp-propositional_302416_303123
	:parameters ( ?truck_261407953 - truck ?goods_261407954 - goods ?level_261407957 - level ?level_261407955 - level ?goods_261407956 - goods ?market_261407958 - market)
	:precondition (and 
			(loaded ?goods_261407956 ?truck_261407953 ?level_261407957) 
			(loaded ?goods_261407954 ?truck_261407953 ?level_261407955) 
			(ready-to-load ?goods_261407954 ?market_261407958 ?level_261407957)
	)
	:effect (and 
		(loaded ?goods_261407956 ?truck_261407953 ?level_261407955) 
		(ready-to-load ?goods_261407954 ?market_261407958 ?level_261407955) 
		(not (stored ?goods_261407956 ?level_261407955)) 
		(stored ?goods_261407954 ?level_261407957)
	)
)

(:action act_act_tpp-propositional_302417_303124
	:parameters ( ?market_118556794 - market ?truck_118556795 - truck ?level_118556791 - level ?goods_118556793 - goods ?goods_118556790 - goods ?level_118556792 - level)
	:precondition (and 
			(loaded ?goods_118556793 ?truck_118556795 ?level_118556791) 
			(ready-to-load ?goods_118556790 ?market_118556794 ?level_118556791) 
			(ready-to-load ?goods_118556790 ?market_118556794 ?level_118556792)
	)
	:effect (and 
		(not (loaded ?goods_118556790 ?truck_118556795 ?level_118556792)) 
		(not (ready-to-load ?goods_118556793 ?market_118556794 ?level_118556791))
	)
)

(:action act_act_tpp-propositional_302418_303125
	:parameters ( ?level_280710311 - level ?place_280710315 - place ?place_280710312 - place ?goods_280710313 - goods ?truck_280710314 - truck)
	:precondition (and 
			(at ?truck_280710314 ?place_280710312) 
			(at ?truck_280710314 ?place_280710315) 
			(stored ?goods_280710313 ?level_280710311)
	)
	:effect (and 
		(connected ?place_280710315 ?place_280710312) 
		(not (loaded ?goods_280710313 ?truck_280710314 ?level_280710311))
	)
)

(:action act_act_tpp-propositional_302419_303126
	:parameters ( ?level_75826986 - level ?goods_75826984 - goods ?level_75826983 - level ?truck_75826985 - truck ?truck_75826981 - truck ?place_75826982 - place)
	:precondition (and 
			(at ?truck_75826985 ?place_75826982) 
			(loaded ?goods_75826984 ?truck_75826985 ?level_75826986) 
			(loaded ?goods_75826984 ?truck_75826981 ?level_75826983) 
			(stored ?goods_75826984 ?level_75826983)
	)
	:effect (and 
		(not (at ?truck_75826981 ?place_75826982)) 
		(not (loaded ?goods_75826984 ?truck_75826985 ?level_75826983)) 
		(next ?level_75826983 ?level_75826986)
	)
)

