#include <amxmodx>
#include <cstrike>
#include <customshop>
#include <engine>
#include <fun>

additem ITEM_DEAGLE_ONE

public plugin_init()
	register_plugin("CSHOP: Deagle 1 Bullet", "1.0", "OciXCrom")

public plugin_precache()
	ITEM_DEAGLE_ONE = cshop_register_item("deagleonebullet", "Deagle (1 bullet)", 3000)
	
public cshop_item_selected(id, iItem)
{
	if(iItem == ITEM_DEAGLE_ONE)
	{
		cs_set_weapon_ammo(give_item(id, "weapon_deagle"), 1)
		cs_set_user_bpammo(id, CSW_DEAGLE, 0)
	}
}