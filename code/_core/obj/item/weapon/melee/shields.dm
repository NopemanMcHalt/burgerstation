/obj/item/weapon/melee/shield
	name = "buckler"
	desc = "Carry two of these and be the ultimate asshole."
	desc_extended = "Good for blocking melee attacks. This buckler doubles your chance of blocking or parrying melee attacks. Can block ranged and melee attacks."
	icon = 'icons/obj/items/weapons/melee/shield.dmi'
	damage_type = /damagetype/melee/club/shield

	item_slot = SLOT_TORSO_B
	worn_layer = LAYER_MOB_CLOTHING_BACK
	slot_icons = TRUE


	attack_delay = 10
	attack_delay_max = 15

	value = 35

	block_difficulty = list( //Also affects parry. High values means more difficult to block. Generally 0 = level 0, 1 = level 100.
		ATTACK_TYPE_MELEE = 0,
		ATTACK_TYPE_RANGED = 0.5,
		ATTACK_TYPE_MAGIC = 0.5,
		ATTACK_TYPE_UNARMED = 0
	)


/obj/item/weapon/melee/can_be_worn(var/mob/living/advanced/owner,var/obj/hud/inventory/I)
	return TRUE

/obj/item/weapon/melee/shield/glass
	name = "glass shield"
	icon = 'icons/obj/items/weapons/melee/glass_shield.dmi'