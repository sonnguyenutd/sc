;; Generator input: seed=60078, locations=5, edges=5, seas=1, probabilities=[2, 3, 3, 4], goals=1, optimization=[5, 10], C=1.200000, V=1.200000
(define (problem popt-small-01-easy)
(:domain settlers)
(:objects
    p0 p1 p2 p3 p4 - place
    v0 v1 v2 - vehicle
)
(:init
    (CONNECTED-BY-LAND p0 p1)
    (CONNECTED-BY-LAND p0 p2)
    (CONNECTED-BY-LAND p1 p0)
    (CONNECTED-BY-LAND p1 p3)
    (CONNECTED-BY-LAND p2 p0)
    (CONNECTED-BY-LAND p2 p3)
    (CONNECTED-BY-LAND p3 p1)
    (CONNECTED-BY-LAND p3 p2)
    (CONNECTED-BY-LAND p3 p4)
    (CONNECTED-BY-LAND p4 p3)
    (CONNECTED-BY-SEA p1 p2)
    (CONNECTED-BY-SEA p1 p4)
    (CONNECTED-BY-SEA p2 p1)
    (CONNECTED-BY-SEA p2 p4)
    (CONNECTED-BY-SEA p4 p1)
    (CONNECTED-BY-SEA p4 p2)
    (BY-COAST p1)
    (BY-COAST p2)
    (BY-COAST p4)
    (housing p0 hl0)
    (housing p1 hl0)
    (housing p2 hl0)
    (housing p3 hl0)
    (housing p4 hl0)
    (available-stone p0 sl5)
    (available-atleast-stone p0 sl1)
    (available-atleast-stone p0 sl2)
    (available-atleast-stone p0 sl4)
    (available-timber p0 tl8)
    (available-atleast-timber p0 tl1)
    (available-atleast-timber p0 tl2)
    (available-atleast-timber p0 tl4)
    (available-ore p0 ol4)
    (available-atleast-ore p0 ol1)
    (available-atleast-ore p0 ol2)
    (available-atleast-ore p0 ol4)
    (available-wood p0 wl0)
    (available-coal p0 cl0)
    (available-iron p0 il0)
    (available-stone p1 sl0)
    (available-timber p1 tl0)
    (available-ore p1 ol0)
    (available-wood p1 wl0)
    (available-coal p1 cl0)
    (available-iron p1 il0)
    (available-stone p2 sl0)
    (available-timber p2 tl0)
    (available-ore p2 ol0)
    (available-wood p2 wl0)
    (available-coal p2 cl0)
    (available-iron p2 il0)
    (available-stone p3 sl0)
    (available-timber p3 tl0)
    (available-ore p3 ol0)
    (available-wood p3 wl0)
    (available-coal p3 cl0)
    (available-iron p3 il0)
    (available-stone p4 sl0)
    (available-timber p4 tl0)
    (available-ore p4 ol0)
    (available-wood p4 wl0)
    (available-coal p4 cl0)
    (available-iron p4 il0)
    (potential v0)
    (available-stone v0 sl0)
    (available-timber v0 tl0)
    (available-ore v0 ol0)
    (available-wood v0 wl0)
    (available-coal v0 cl0)
    (available-iron v0 il0)
    (potential v1)
    (available-stone v1 sl0)
    (available-timber v1 tl0)
    (available-ore v1 ol0)
    (available-wood v1 wl0)
    (available-coal v1 cl0)
    (available-iron v1 il0)
    (potential v2)
    (available-stone v2 sl0)
    (available-timber v2 tl0)
    (available-ore v2 ol0)
    (available-wood v2 wl0)
    (available-coal v2 cl0)
    (available-iron v2 il0)
    (DIFF-SPACE spl1 spl1 spl0)
    (DIFF-SPACE spl2 spl1 spl1)
    (DIFF-SPACE spl3 spl1 spl2)
    (DIFF-SPACE spl4 spl1 spl3)
    (DIFF-SPACE spl5 spl1 spl4)
    (DIFF-SPACE spl6 spl1 spl5)
    (DIFF-SPACE spl7 spl1 spl6)
    (DIFF-SPACE spl8 spl1 spl7)
    (DIFF-SPACE spl9 spl1 spl8)
    (DIFF-SPACE spl10 spl1 spl9)
    (DIFF-SPACE spl2 spl2 spl0)
    (DIFF-SPACE spl3 spl2 spl1)
    (DIFF-SPACE spl4 spl2 spl2)
    (DIFF-SPACE spl5 spl2 spl3)
    (DIFF-SPACE spl6 spl2 spl4)
    (DIFF-SPACE spl7 spl2 spl5)
    (DIFF-SPACE spl8 spl2 spl6)
    (DIFF-SPACE spl9 spl2 spl7)
    (DIFF-SPACE spl10 spl2 spl8)
    (DIFF-HOUSING hl1 hl1 hl0)
    (DIFF-HOUSING hl2 hl1 hl1)
    (DIFF-HOUSING hl3 hl1 hl2)
    (DIFF-HOUSING hl4 hl1 hl3)
    (DIFF-HOUSING hl5 hl1 hl4)
    (DIFF-STONE sl1 sl1 sl0)
    (DIFF-STONE sl2 sl1 sl1)
    (DIFF-STONE sl3 sl1 sl2)
    (DIFF-STONE sl4 sl1 sl3)
    (DIFF-STONE sl5 sl1 sl4)
    (DIFF-STONE sl2 sl2 sl0)
    (DIFF-STONE sl3 sl2 sl1)
    (DIFF-STONE sl4 sl2 sl2)
    (DIFF-STONE sl5 sl2 sl3)
    (DIFF-STONE sl4 sl4 sl0)
    (DIFF-STONE sl5 sl4 sl1)
    (DIFF-TIMBER tl1 tl1 tl0)
    (DIFF-TIMBER tl2 tl1 tl1)
    (DIFF-TIMBER tl3 tl1 tl2)
    (DIFF-TIMBER tl4 tl1 tl3)
    (DIFF-TIMBER tl5 tl1 tl4)
    (DIFF-TIMBER tl6 tl1 tl5)
    (DIFF-TIMBER tl7 tl1 tl6)
    (DIFF-TIMBER tl8 tl1 tl7)
    (DIFF-TIMBER tl2 tl2 tl0)
    (DIFF-TIMBER tl3 tl2 tl1)
    (DIFF-TIMBER tl4 tl2 tl2)
    (DIFF-TIMBER tl5 tl2 tl3)
    (DIFF-TIMBER tl6 tl2 tl4)
    (DIFF-TIMBER tl7 tl2 tl5)
    (DIFF-TIMBER tl8 tl2 tl6)
    (DIFF-TIMBER tl4 tl4 tl0)
    (DIFF-TIMBER tl5 tl4 tl1)
    (DIFF-TIMBER tl6 tl4 tl2)
    (DIFF-TIMBER tl7 tl4 tl3)
    (DIFF-TIMBER tl8 tl4 tl4)
    (DIFF-ORE ol1 ol1 ol0)
    (DIFF-ORE ol2 ol1 ol1)
    (DIFF-ORE ol3 ol1 ol2)
    (DIFF-ORE ol4 ol1 ol3)
    (DIFF-ORE ol2 ol2 ol0)
    (DIFF-ORE ol3 ol2 ol1)
    (DIFF-ORE ol4 ol2 ol2)
    (DIFF-ORE ol4 ol4 ol0)
    (DIFF-WOOD wl1 wl1 wl0)
    (DIFF-WOOD wl2 wl1 wl1)
    (DIFF-WOOD wl3 wl1 wl2)
    (DIFF-WOOD wl4 wl1 wl3)
    (DIFF-WOOD wl5 wl1 wl4)
    (DIFF-WOOD wl6 wl1 wl5)
    (DIFF-WOOD wl7 wl1 wl6)
    (DIFF-WOOD wl8 wl1 wl7)
    (DIFF-WOOD wl2 wl2 wl0)
    (DIFF-WOOD wl3 wl2 wl1)
    (DIFF-WOOD wl4 wl2 wl2)
    (DIFF-WOOD wl5 wl2 wl3)
    (DIFF-WOOD wl6 wl2 wl4)
    (DIFF-WOOD wl7 wl2 wl5)
    (DIFF-WOOD wl8 wl2 wl6)
    (DIFF-WOOD wl4 wl4 wl0)
    (DIFF-WOOD wl5 wl4 wl1)
    (DIFF-WOOD wl6 wl4 wl2)
    (DIFF-WOOD wl7 wl4 wl3)
    (DIFF-WOOD wl8 wl4 wl4)
    (DIFF-COAL cl1 cl1 cl0)
    (DIFF-COAL cl2 cl1 cl1)
    (DIFF-COAL cl3 cl1 cl2)
    (DIFF-COAL cl4 cl1 cl3)
    (DIFF-COAL cl5 cl1 cl4)
    (DIFF-COAL cl6 cl1 cl5)
    (DIFF-COAL cl7 cl1 cl6)
    (DIFF-COAL cl8 cl1 cl7)
    (DIFF-COAL cl2 cl2 cl0)
    (DIFF-COAL cl3 cl2 cl1)
    (DIFF-COAL cl4 cl2 cl2)
    (DIFF-COAL cl5 cl2 cl3)
    (DIFF-COAL cl6 cl2 cl4)
    (DIFF-COAL cl7 cl2 cl5)
    (DIFF-COAL cl8 cl2 cl6)
    (DIFF-COAL cl4 cl4 cl0)
    (DIFF-COAL cl5 cl4 cl1)
    (DIFF-COAL cl6 cl4 cl2)
    (DIFF-COAL cl7 cl4 cl3)
    (DIFF-COAL cl8 cl4 cl4)
    (DIFF-IRON il1 il1 il0)
    (DIFF-IRON il2 il1 il1)
    (DIFF-IRON il3 il1 il2)
    (DIFF-IRON il4 il1 il3)
    (DIFF-IRON il2 il2 il0)
    (DIFF-IRON il3 il2 il1)
    (DIFF-IRON il4 il2 il2)
    (DIFF-IRON il4 il4 il0)
    (ADD-ATLEAST-STONE sl0 sl1 sl1)
    (DEL-ATLEAST-STONE sl1 sl1 sl1)
    (ADD-ATLEAST-STONE sl0 sl2 sl1)
    (DEL-ATLEAST-STONE sl1 sl2 sl1)
    (DEL-ATLEAST-STONE sl2 sl2 sl1)
    (ADD-ATLEAST-STONE sl0 sl4 sl1)
    (DEL-ATLEAST-STONE sl1 sl4 sl1)
    (DEL-ATLEAST-STONE sl2 sl4 sl1)
    (DEL-ATLEAST-STONE sl3 sl4 sl1)
    (DEL-ATLEAST-STONE sl4 sl4 sl1)
    (ADD-ATLEAST-STONE sl1 sl1 sl2)
    (DEL-ATLEAST-STONE sl2 sl1 sl2)
    (ADD-ATLEAST-STONE sl0 sl2 sl2)
    (ADD-ATLEAST-STONE sl1 sl2 sl2)
    (DEL-ATLEAST-STONE sl2 sl2 sl2)
    (DEL-ATLEAST-STONE sl3 sl2 sl2)
    (ADD-ATLEAST-STONE sl0 sl4 sl2)
    (ADD-ATLEAST-STONE sl1 sl4 sl2)
    (DEL-ATLEAST-STONE sl2 sl4 sl2)
    (DEL-ATLEAST-STONE sl3 sl4 sl2)
    (DEL-ATLEAST-STONE sl4 sl4 sl2)
    (DEL-ATLEAST-STONE sl5 sl4 sl2)
    (ADD-ATLEAST-STONE sl3 sl1 sl4)
    (DEL-ATLEAST-STONE sl4 sl1 sl4)
    (ADD-ATLEAST-STONE sl2 sl2 sl4)
    (ADD-ATLEAST-STONE sl3 sl2 sl4)
    (DEL-ATLEAST-STONE sl4 sl2 sl4)
    (DEL-ATLEAST-STONE sl5 sl2 sl4)
    (ADD-ATLEAST-STONE sl0 sl4 sl4)
    (ADD-ATLEAST-STONE sl1 sl4 sl4)
    (ADD-ATLEAST-STONE sl2 sl4 sl4)
    (ADD-ATLEAST-STONE sl3 sl4 sl4)
    (DEL-ATLEAST-STONE sl4 sl4 sl4)
    (DEL-ATLEAST-STONE sl5 sl4 sl4)
    (DEL-ATLEAST-STONE sl6 sl4 sl4)
    (DEL-ATLEAST-STONE sl7 sl4 sl4)
    (ADD-ATLEAST-TIMBER tl0 tl1 tl1)
    (DEL-ATLEAST-TIMBER tl1 tl1 tl1)
    (ADD-ATLEAST-TIMBER tl0 tl2 tl1)
    (DEL-ATLEAST-TIMBER tl1 tl2 tl1)
    (DEL-ATLEAST-TIMBER tl2 tl2 tl1)
    (ADD-ATLEAST-TIMBER tl0 tl4 tl1)
    (DEL-ATLEAST-TIMBER tl1 tl4 tl1)
    (DEL-ATLEAST-TIMBER tl2 tl4 tl1)
    (DEL-ATLEAST-TIMBER tl3 tl4 tl1)
    (DEL-ATLEAST-TIMBER tl4 tl4 tl1)
    (ADD-ATLEAST-TIMBER tl1 tl1 tl2)
    (DEL-ATLEAST-TIMBER tl2 tl1 tl2)
    (ADD-ATLEAST-TIMBER tl0 tl2 tl2)
    (ADD-ATLEAST-TIMBER tl1 tl2 tl2)
    (DEL-ATLEAST-TIMBER tl2 tl2 tl2)
    (DEL-ATLEAST-TIMBER tl3 tl2 tl2)
    (ADD-ATLEAST-TIMBER tl0 tl4 tl2)
    (ADD-ATLEAST-TIMBER tl1 tl4 tl2)
    (DEL-ATLEAST-TIMBER tl2 tl4 tl2)
    (DEL-ATLEAST-TIMBER tl3 tl4 tl2)
    (DEL-ATLEAST-TIMBER tl4 tl4 tl2)
    (DEL-ATLEAST-TIMBER tl5 tl4 tl2)
    (ADD-ATLEAST-TIMBER tl3 tl1 tl4)
    (DEL-ATLEAST-TIMBER tl4 tl1 tl4)
    (ADD-ATLEAST-TIMBER tl2 tl2 tl4)
    (ADD-ATLEAST-TIMBER tl3 tl2 tl4)
    (DEL-ATLEAST-TIMBER tl4 tl2 tl4)
    (DEL-ATLEAST-TIMBER tl5 tl2 tl4)
    (ADD-ATLEAST-TIMBER tl0 tl4 tl4)
    (ADD-ATLEAST-TIMBER tl1 tl4 tl4)
    (ADD-ATLEAST-TIMBER tl2 tl4 tl4)
    (ADD-ATLEAST-TIMBER tl3 tl4 tl4)
    (DEL-ATLEAST-TIMBER tl4 tl4 tl4)
    (DEL-ATLEAST-TIMBER tl5 tl4 tl4)
    (DEL-ATLEAST-TIMBER tl6 tl4 tl4)
    (DEL-ATLEAST-TIMBER tl7 tl4 tl4)
    (ADD-ATLEAST-ORE ol0 ol1 ol1)
    (DEL-ATLEAST-ORE ol1 ol1 ol1)
    (ADD-ATLEAST-ORE ol0 ol2 ol1)
    (DEL-ATLEAST-ORE ol1 ol2 ol1)
    (DEL-ATLEAST-ORE ol2 ol2 ol1)
    (ADD-ATLEAST-ORE ol0 ol4 ol1)
    (DEL-ATLEAST-ORE ol1 ol4 ol1)
    (DEL-ATLEAST-ORE ol2 ol4 ol1)
    (DEL-ATLEAST-ORE ol3 ol4 ol1)
    (DEL-ATLEAST-ORE ol4 ol4 ol1)
    (ADD-ATLEAST-ORE ol1 ol1 ol2)
    (DEL-ATLEAST-ORE ol2 ol1 ol2)
    (ADD-ATLEAST-ORE ol0 ol2 ol2)
    (ADD-ATLEAST-ORE ol1 ol2 ol2)
    (DEL-ATLEAST-ORE ol2 ol2 ol2)
    (DEL-ATLEAST-ORE ol3 ol2 ol2)
    (ADD-ATLEAST-ORE ol0 ol4 ol2)
    (ADD-ATLEAST-ORE ol1 ol4 ol2)
    (DEL-ATLEAST-ORE ol2 ol4 ol2)
    (DEL-ATLEAST-ORE ol3 ol4 ol2)
    (DEL-ATLEAST-ORE ol4 ol4 ol2)
    (DEL-ATLEAST-ORE ol5 ol4 ol2)
    (ADD-ATLEAST-ORE ol3 ol1 ol4)
    (DEL-ATLEAST-ORE ol4 ol1 ol4)
    (ADD-ATLEAST-ORE ol2 ol2 ol4)
    (ADD-ATLEAST-ORE ol3 ol2 ol4)
    (DEL-ATLEAST-ORE ol4 ol2 ol4)
    (DEL-ATLEAST-ORE ol5 ol2 ol4)
    (ADD-ATLEAST-ORE ol0 ol4 ol4)
    (ADD-ATLEAST-ORE ol1 ol4 ol4)
    (ADD-ATLEAST-ORE ol2 ol4 ol4)
    (ADD-ATLEAST-ORE ol3 ol4 ol4)
    (DEL-ATLEAST-ORE ol4 ol4 ol4)
    (DEL-ATLEAST-ORE ol5 ol4 ol4)
    (DEL-ATLEAST-ORE ol6 ol4 ol4)
    (DEL-ATLEAST-ORE ol7 ol4 ol4)
    (ADD-ATLEAST-WOOD wl0 wl1 wl1)
    (DEL-ATLEAST-WOOD wl1 wl1 wl1)
    (ADD-ATLEAST-WOOD wl0 wl2 wl1)
    (DEL-ATLEAST-WOOD wl1 wl2 wl1)
    (DEL-ATLEAST-WOOD wl2 wl2 wl1)
    (ADD-ATLEAST-WOOD wl0 wl4 wl1)
    (DEL-ATLEAST-WOOD wl1 wl4 wl1)
    (DEL-ATLEAST-WOOD wl2 wl4 wl1)
    (DEL-ATLEAST-WOOD wl3 wl4 wl1)
    (DEL-ATLEAST-WOOD wl4 wl4 wl1)
    (ADD-ATLEAST-WOOD wl1 wl1 wl2)
    (DEL-ATLEAST-WOOD wl2 wl1 wl2)
    (ADD-ATLEAST-WOOD wl0 wl2 wl2)
    (ADD-ATLEAST-WOOD wl1 wl2 wl2)
    (DEL-ATLEAST-WOOD wl2 wl2 wl2)
    (DEL-ATLEAST-WOOD wl3 wl2 wl2)
    (ADD-ATLEAST-WOOD wl0 wl4 wl2)
    (ADD-ATLEAST-WOOD wl1 wl4 wl2)
    (DEL-ATLEAST-WOOD wl2 wl4 wl2)
    (DEL-ATLEAST-WOOD wl3 wl4 wl2)
    (DEL-ATLEAST-WOOD wl4 wl4 wl2)
    (DEL-ATLEAST-WOOD wl5 wl4 wl2)
    (ADD-ATLEAST-WOOD wl3 wl1 wl4)
    (DEL-ATLEAST-WOOD wl4 wl1 wl4)
    (ADD-ATLEAST-WOOD wl2 wl2 wl4)
    (ADD-ATLEAST-WOOD wl3 wl2 wl4)
    (DEL-ATLEAST-WOOD wl4 wl2 wl4)
    (DEL-ATLEAST-WOOD wl5 wl2 wl4)
    (ADD-ATLEAST-WOOD wl0 wl4 wl4)
    (ADD-ATLEAST-WOOD wl1 wl4 wl4)
    (ADD-ATLEAST-WOOD wl2 wl4 wl4)
    (ADD-ATLEAST-WOOD wl3 wl4 wl4)
    (DEL-ATLEAST-WOOD wl4 wl4 wl4)
    (DEL-ATLEAST-WOOD wl5 wl4 wl4)
    (DEL-ATLEAST-WOOD wl6 wl4 wl4)
    (DEL-ATLEAST-WOOD wl7 wl4 wl4)
    (ADD-ATLEAST-COAL cl0 cl1 cl1)
    (DEL-ATLEAST-COAL cl1 cl1 cl1)
    (ADD-ATLEAST-COAL cl0 cl2 cl1)
    (DEL-ATLEAST-COAL cl1 cl2 cl1)
    (DEL-ATLEAST-COAL cl2 cl2 cl1)
    (ADD-ATLEAST-COAL cl0 cl4 cl1)
    (DEL-ATLEAST-COAL cl1 cl4 cl1)
    (DEL-ATLEAST-COAL cl2 cl4 cl1)
    (DEL-ATLEAST-COAL cl3 cl4 cl1)
    (DEL-ATLEAST-COAL cl4 cl4 cl1)
    (ADD-ATLEAST-COAL cl1 cl1 cl2)
    (DEL-ATLEAST-COAL cl2 cl1 cl2)
    (ADD-ATLEAST-COAL cl0 cl2 cl2)
    (ADD-ATLEAST-COAL cl1 cl2 cl2)
    (DEL-ATLEAST-COAL cl2 cl2 cl2)
    (DEL-ATLEAST-COAL cl3 cl2 cl2)
    (ADD-ATLEAST-COAL cl0 cl4 cl2)
    (ADD-ATLEAST-COAL cl1 cl4 cl2)
    (DEL-ATLEAST-COAL cl2 cl4 cl2)
    (DEL-ATLEAST-COAL cl3 cl4 cl2)
    (DEL-ATLEAST-COAL cl4 cl4 cl2)
    (DEL-ATLEAST-COAL cl5 cl4 cl2)
    (ADD-ATLEAST-COAL cl3 cl1 cl4)
    (DEL-ATLEAST-COAL cl4 cl1 cl4)
    (ADD-ATLEAST-COAL cl2 cl2 cl4)
    (ADD-ATLEAST-COAL cl3 cl2 cl4)
    (DEL-ATLEAST-COAL cl4 cl2 cl4)
    (DEL-ATLEAST-COAL cl5 cl2 cl4)
    (ADD-ATLEAST-COAL cl0 cl4 cl4)
    (ADD-ATLEAST-COAL cl1 cl4 cl4)
    (ADD-ATLEAST-COAL cl2 cl4 cl4)
    (ADD-ATLEAST-COAL cl3 cl4 cl4)
    (DEL-ATLEAST-COAL cl4 cl4 cl4)
    (DEL-ATLEAST-COAL cl5 cl4 cl4)
    (DEL-ATLEAST-COAL cl6 cl4 cl4)
    (DEL-ATLEAST-COAL cl7 cl4 cl4)
    (ADD-ATLEAST-IRON il0 il1 il1)
    (DEL-ATLEAST-IRON il1 il1 il1)
    (ADD-ATLEAST-IRON il0 il2 il1)
    (DEL-ATLEAST-IRON il1 il2 il1)
    (DEL-ATLEAST-IRON il2 il2 il1)
    (ADD-ATLEAST-IRON il0 il4 il1)
    (DEL-ATLEAST-IRON il1 il4 il1)
    (DEL-ATLEAST-IRON il2 il4 il1)
    (DEL-ATLEAST-IRON il3 il4 il1)
    (DEL-ATLEAST-IRON il4 il4 il1)
    (ADD-ATLEAST-IRON il1 il1 il2)
    (DEL-ATLEAST-IRON il2 il1 il2)
    (ADD-ATLEAST-IRON il0 il2 il2)
    (ADD-ATLEAST-IRON il1 il2 il2)
    (DEL-ATLEAST-IRON il2 il2 il2)
    (DEL-ATLEAST-IRON il3 il2 il2)
    (ADD-ATLEAST-IRON il0 il4 il2)
    (ADD-ATLEAST-IRON il1 il4 il2)
    (DEL-ATLEAST-IRON il2 il4 il2)
    (DEL-ATLEAST-IRON il3 il4 il2)
    (DEL-ATLEAST-IRON il4 il4 il2)
    (DEL-ATLEAST-IRON il5 il4 il2)
    (ADD-ATLEAST-IRON il3 il1 il4)
    (DEL-ATLEAST-IRON il4 il1 il4)
    (ADD-ATLEAST-IRON il2 il2 il4)
    (ADD-ATLEAST-IRON il3 il2 il4)
    (DEL-ATLEAST-IRON il4 il2 il4)
    (DEL-ATLEAST-IRON il5 il2 il4)
    (ADD-ATLEAST-IRON il0 il4 il4)
    (ADD-ATLEAST-IRON il1 il4 il4)
    (ADD-ATLEAST-IRON il2 il4 il4)
    (ADD-ATLEAST-IRON il3 il4 il4)
    (DEL-ATLEAST-IRON il4 il4 il4)
    (DEL-ATLEAST-IRON il5 il4 il4)
    (DEL-ATLEAST-IRON il6 il4 il4)
    (DEL-ATLEAST-IRON il7 il4 il4)
)
(:goal
(and
    (housing p1 hl1)
)
)
(:metric minimize (total-cost))
)