/obj/item/implant/uplink
	name = "uplink"
	desc = "Summon things."
	var/activation_emote = "chuckle"

/obj/item/implant/uplink/New()
	activation_emote = pick("blink", "blink_r", "eyebrow", "chuckle", "twitch", "frown", "nod", "blush", "giggle", "grin", "groan", "shrug", "smile", "pale", "sniff", "whimper", "wink")
	hidden_uplink = new(src)
	hidden_uplink.telecrystals = round((DEFAULT_TELECRYSTAL_AMOUNT / 2) * 0.8)
	hidden_uplink.bluecrystals = round((DEFAULT_BLUECRYSTAL_AMOUNT / 2) * 0.8)
	..()
	return

/obj/item/implant/uplink/implanted(mob/source)
	activation_emote = input("Choose activation emote:") in list("blink", "blink_r", "eyebrow", "chuckle", "twitch", "frown", "nod", "blush", "giggle", "grin", "groan", "shrug", "smile", "pale", "sniff", "whimper", "wink")
	source.mind.store_memory("Uplink implant can be activated by using the [src.activation_emote] emote, <B>say *[src.activation_emote]</B> to attempt to activate.", 0, 0)
	to_chat(source, "The implanted uplink implant can be activated by using the [src.activation_emote] emote, <B>say *[src.activation_emote]</B> to attempt to activate.")
	hidden_uplink.uplink_owner = source.mind
	return 1


/obj/item/implant/uplink/trigger(emote, mob/source as mob)
	if(hidden_uplink && usr == source) // Let's not have another people activate our uplink
		hidden_uplink.check_trigger(source, emote, activation_emote)
	return
