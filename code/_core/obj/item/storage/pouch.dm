/obj/item/storage/pouch //For boxes and such, not backpacks.
	name = "small pouch"
	desc = "Simple pounches"
	icon = 'icons/obj/items/storage/pouches_new.dmi'

	size = SIZE_3

	is_container = TRUE

	container_max_size = SIZE_2
	dynamic_inventory_count = 1

	inventory_bypass = list(
		/obj/hud/inventory/pocket/pocket01,
		/obj/hud/inventory/pocket/pocket02
	)

/obj/item/storage/pouch/clicked_on_by_object(var/atom/caller,var/atom/object,location,control,params)

	if(is_inventory(object) && object.loc == caller && istype(object,/obj/hud/inventory/pocket/) && click_self(caller,location,control,params))
		return TRUE

	return ..()

/obj/item/storage/pouch/single
	name = "single pouch"
	icon_state = "single"
	dynamic_inventory_count = 2

/obj/item/storage/pouch/single/black
	color = COLOR_BLACK

/obj/item/storage/pouch/double
	name = "double pouch"
	icon_state = "double"
	dynamic_inventory_count = 4

/obj/item/storage/pouch/double/black
	color = COLOR_BLACK

/obj/item/storage/pouch/triple
	name = "triple pouch"
	icon_state = "triple"
	dynamic_inventory_count = 6

/obj/item/storage/pouch/triple/syringe/
	name = "syringe gun pouch"
	icon_state = "triple"
	dynamic_inventory_count = 6
	color = "#FFFFFF"

/obj/item/storage/pouch/triple/syringe/filled/fill_inventory()
	new /obj/item/magazine/syringe_gun(src)
	new /obj/item/magazine/syringe_gun(src)
	new /obj/item/magazine/syringe_gun(src)
	new /obj/item/magazine/syringe_gun(src)
	new /obj/item/magazine/syringe_gun(src)
	new /obj/item/magazine/syringe_gun(src)
	return ..()

/obj/item/storage/pouch/double/lifesaver
	name = "lifesaver pouch"
	icon_state = "lifesaver"

/obj/item/storage/pouch/double/lifesaver/filled/fill_inventory()
	new /obj/item/container/syringe(src)
	new /obj/item/container/beaker/bottle/epinephrine(src)
	new /obj/item/container/beaker/bottle/epinephrine(src)
	new /obj/item/container/beaker/bottle/epinephrine(src)
	return ..()

