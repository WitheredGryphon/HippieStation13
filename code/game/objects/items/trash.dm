//Added by Jack Rost
/obj/item/trash
	icon = 'icons/obj/janitor.dmi'
	desc = "This is rubbish."
	w_class = 1.0

/obj/item/trash/raisins
	name = "\improper 4no raisins"
	icon_state= "4no_raisins"

/obj/item/trash/candy
	name = "candy"
	icon_state= "candy"

/obj/item/trash/cheesie
	name = "cheesie honkers"
	icon_state = "cheesie_honkers"

/obj/item/trash/chips
	name = "chips"
	icon_state = "chips"

/obj/item/trash/popcorn
	name = "popcorn"
	icon_state = "popcorn"

/obj/item/trash/sosjerky
	name = "\improper Scaredy's Private Reserve Beef Jerky"
	icon_state = "sosjerky"

/obj/item/trash/syndi_cakes
	name = "syndi-cakes"
	icon_state = "syndi_cakes"

/obj/item/trash/waffles
	name = "waffles"
	icon_state = "waffles"

/obj/item/trash/plate
	name = "plate"
	icon_state = "plate"

/obj/item/trash/snack_bowl
	name = "snack bowl"
	icon_state	= "snack_bowl"

/obj/item/trash/pistachios
	name = "pistachios pack"
	icon_state = "pistachios_pack"

/obj/item/trash/semki
	name = "semki pack"
	icon_state = "semki_pack"

/obj/item/trash/tray
	name = "tray"
	icon_state = "tray"

/obj/item/trash/candle
	name = "candle"
	icon = 'icons/obj/candle.dmi'
	icon_state = "candle4"

/obj/item/trash/can
	name = "crushed can"
	icon_state = "cola"

/obj/item/trash/attack(mob/M, mob/living/user)
	return

/obj/item/pornmag //Janitor's favorite passtime. Ironic how this is located in trash.dm, hah. THIS IS ACTUALLY A TRAITOR OBJECTIVE NOW HOLY SHIT
	icon = 'icons/obj/library.dmi'
	icon_state = "pornmag"
	name = "porn mag"
	desc = "Look at those pixels, man!"
	w_class = 1.0
	var/cooldown = 0

/obj/item/pornmag/attack_self(mob/user as mob)
	if(cooldown < world.time - 20)
		playsound(src.loc, "pageturn", 50, 1)
		user.visible_message("<span class='notice'>[user] skims through the pages of the [src] and giggles like a schoolgirl.</span>",\
							"<span class='notice'>You skim through the pages of the pornmag. Lewd.</span>")
		cooldown = world.time