/obj/item/magazine/clip/
	name = "weapon clip"
	desc = "Leaving theese around the field won't get you in trouble with the Sergeant Major."
	desc_extended = "Contains ammunition for a ranged weapon. Make sure you're trying to use the right caliber."

/obj/item/magazine/clip/click_on_object(var/mob/caller as mob,var/atom/object,location,control,params)

	if(istype(object,/obj/item/weapon/ranged/bullet/))
		INTERACT_CHECK
		INTERACT_CHECK_OBJECT
		INTERACT_DELAY(1)
		var/obj/item/weapon/ranged/bullet/G = object
		if(!G.open)
			caller.to_chat(span("warning","You need to open \the [G.name] before inserting \the [src.name] into it!"))
			return FALSE
		var/insert_count = 0
		for(var/k in stored_bullets)
			if(!k) continue
			var/obj/item/bullet_cartridge/B = k
			if(!G.can_load_stored(caller,B))
				caller.to_chat(span("warning","You can't load \the [B.name] into \the [object.name] with \the [src.name]!"))
				break
			var/target_point = get_first_missing_value(G.stored_bullets)
			if(target_point == 0)
				break
			B.force_move(G)
			G.stored_bullets[target_point] = B
			insert_count += 1
			stored_bullets -= B
		if(insert_count)
			caller.to_chat(span("notice","You load [insert_count] bullet\s into \the [object.name]."))
			G.update_sprite()
			update_sprite()
			return TRUE
		else
			caller.to_chat(span("warning","You can't load anything into \the [object.name] with \the [src.name]!"))
		return TRUE

	. = ..()

