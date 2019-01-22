/obj/item/weapon/melee/energy
	var/enabled = FALSE
	override_icon_state = TRUE
	override_icon_state_held = TRUE

/obj/item/weapon/melee/energy/can_parry()
	return enabled

/obj/item/weapon/melee/energy/can_block()
	return enabled

/obj/item/weapon/melee/energy/update_icon()
	if(enabled)
		icon_state = "[initial(icon_state)]_on"
		icon_state_held_left = "[initial(icon_state_held_left)]_on"
		icon_state_held_right = "[initial(icon_state_held_left)]_on"
	else
		icon_state = initial(icon_state)
		icon_state_held_left = initial(icon_state_held_left)
		icon_state_held_right = initial(icon_state_held_left)

	..()

/obj/item/weapon/melee/energy/sword/
	name = "energy sword"
	desc = "A blade made out of ENERGY. Please do not sue."
	icon = 'icons/obj/items/weapons/melee/laser/sword.dmi'
	damage_type = /damagetype/sword/energy

/obj/item/weapon/melee/energy/sword/blue
	color = "#0000FF"

/obj/item/weapon/melee/energy/sword/green
	color = "#00FF00"

/obj/item/weapon/melee/energy/sword/red
	color = "#FF0000"

/obj/item/weapon/melee/energy/sword/yellow
	color = "#FFFF00"


/obj/item/weapon/melee/energy/shield/
	name = "energy shield"
	desc = "A shield made out of ENERGY. Please do not sue."
	icon = 'icons/obj/items/weapons/melee/laser/shield.dmi'
	damage_type = /damagetype/sword/energy