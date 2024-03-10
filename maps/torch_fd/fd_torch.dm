#if !defined(using_map_DATUM)

	#include "../../packs/deepmaint/_pack.dm"
	#include "../../packs/event_2022jul30/_pack.dm"
	#include "../../packs/infinity/_pack.dm"

	#include "../../packs/factions/commonwealth/_pack.dm"
	#include "../../packs/factions/fa/_pack.dm"
	#include "../../packs/factions/iccgn/_pack.dm"
	#include "../../packs/factions/scga/_pack.dm"
	#include "../../packs/factions/scgec/_pack.dm"

	// --- MAP MAINTENANCE --- //
	#include "../torch/torch_announcements.dm"
	#include "../torch/torch_antagonism.dm"
	#include "../torch/torch_areas.dm"
	#include "../torch/torch_elevator.dm"
	#include "../torch/torch_events.dm"
	#include "../torch/torch_holodecks.dm"
	#include "../torch/torch_lobby.dm"
	#include "../torch/torch_machinery.dm"
	#include "../torch/torch_map_templates.dm"
	#include "../torch/torch_npcs.dm"
	#include "../torch/torch_overmap.dm"
	#include "../torch/torch_presets.dm"
	#include "../torch/torch_procs.dm"
	#include "torch_ranks.dm"
	#include "../torch/torch_security_state.dm"
	#include "../torch/torch_setup.dm"
	#include "../torch/torch_shuttles.dm"
	#include "../torch/torch_submaps.dm"
	#include "../torch/torch_turfs.dm"
	#include "../torch/torch_unit_testing.dm"
	#include "../torch/torch_simplemobs.dm"

	#include "torch_areas.dm"
	#include "torch_cameras.dm"
	#include "torch_decals.dm"
	#include "torch_overmap.dm"

	// --- INCLUDES FROM ANOTHER MAPS --- //
	#include "../sierra/sierra_npcs.dm"

	// --- DATUMS SECTION --- //
	#include "../torch/datums/uniforms.dm"
	#include "../torch/datums/uniforms_expedition.dm"
	#include "../torch/datums/uniforms_fleet.dm"
	#include "../torch/datums/game_modes/torch_traitor.dm"
	#include "../torch/datums/game_modes/torch_revolution.dm"
	#include "../torch/datums/game_modes/torch_siege.dm"
	#include "../torch/datums/game_modes/torch_meteor.dm"
	#include "../torch/datums/game_modes/torch_uprising.dm"
	#include "../torch/datums/reports/command.dm"
	#include "../torch/datums/reports/corporate.dm"
	#include "../torch/datums/reports/exploration.dm"
	#include "../torch/datums/reports/medical.dm"
	#include "../torch/datums/reports/robotics.dm"
	#include "../torch/datums/reports/science.dm"
	#include "../torch/datums/reports/security.dm"
	#include "../torch/datums/reports/solgov.dm"
	#include "../torch/datums/reports/deck.dm"
	#include "../torch/datums/shackle_law_sets.dm"
	#include "../torch/datums/supplypacks/security.dm"
	#include "../torch/datums/supplypacks/science.dm"
	#include "../torch/datums/department_exploration.dm"

	#include "../torch/datums/uplink.dm"

	#include "../torch/datums/antags/deathsquad.dm"
	#include "../torch/datums/antags/ert.dm"
	#include "../torch/datums/antags/foundation.dm"
	#include "../torch/datums/antags/mercenary.dm"
	#include "../torch/datums/antags/raider.dm"
	#include "../torch/datums/antags/renegade.dm"

	#include "../torch/language/human/euro.dm"
	#include "../torch/language/human/misc/spacer.dm"

	// --- ITEMS --- //
	#include "../torch/items/cards_ids.dm"
	#include "../torch/items/coins.dm"
	#include "../torch/items/encryption_keys.dm"
	#include "../torch/items/selection.dm"
	#include "../torch/items/headsets.dm"
	#include "../torch/items/items.dm"
	#include "../torch/items/machinery.dm"
	#include "../torch/items/manuals.dm"
	#include "../torch/items/stamps.dm"
	#include "../torch/items/uniform_vendor.dm"
	#include "../torch/items/rigs.dm"
	#include "../torch/items/solbanner.dm"
	#include "../torch/items/explo_shotgun.dm"
	#include "../torch/items/mecha.dm"
	#include "../torch/items/memos.dm"

	#include "../torch/spawners.dm"

	#include "../torch/items/clothing/ec_skillbadges.dm"
	#include "../torch/items/clothing/solgov-accessory.dm"
	#include "../torch/items/clothing/solgov-armor.dm"
	#include "../torch/items/clothing/solgov-feet.dm"
	#include "../torch/items/clothing/solgov-hands.dm"
	#include "../torch/items/clothing/solgov-head.dm"
	#include "../torch/items/clothing/solgov-suit.dm"
	#include "../torch/items/clothing/solgov-under.dm"

	#include "../torch/items/wallets.dm"
	#include "../torch/items/weapons.dm"

	// --- JOB SECTION --- //
	#include "../torch/job/torch_access.dm"
	#include "../torch/job/torch_jobs.dm"
	#include "../torch/job/command_jobs.dm"
	#include "../torch/job/corporate_jobs.dm"
	#include "../torch/job/engineering_jobs.dm"
	#include "../torch/job/exploration_jobs.dm"
	#include "../torch/job/medical_jobs.dm"
	#include "../torch/job/misc_jobs.dm"
	#include "../torch/job/research_jobs.dm"
	#include "../torch/job/security_jobs.dm"
	#include "../torch/job/service_jobs.dm"
	#include "../torch/job/supply_jobs.dm"

	#include "../torch/outfits/scgec.dm"
	#include "../torch/robot/module_flying_surveyor.dm"

	#include "../torch/job/outfits/torch_outfits.dm"
	#include "../torch/job/outfits/command_outfits.dm"
	#include "../torch/job/outfits/corporate_outfits.dm"
	#include "../torch/job/outfits/engineering_outfits.dm"
	#include "../torch/job/outfits/exploration_outfits.dm"
	#include "../torch/job/outfits/medical_outfits.dm"
	#include "../torch/job/outfits/misc_outfits.dm"
	#include "../torch/job/outfits/research_outfits.dm"
	#include "../torch/job/outfits/security_outfits.dm"
	#include "../torch/job/outfits/service_outfits.dm"
	#include "../torch/job/outfits/supply_outfits.dm"

	// --- MACHINERY --- //
	#include "../torch/machinery/apc_shuttle.dm"
	#include "../torch/machinery/keycard authentication.dm"
	#include "../torch/machinery/suit_storage.dm"

	// --- STRUCTURES --- //
	#include "../torch/structures/closets.dm"
	#include "../torch/structures/closets/closet_appearances.dm"
	#include "../torch/structures/closets/command.dm"
	#include "../torch/structures/closets/engineering.dm"
	#include "../torch/structures/closets/medical.dm"
	#include "../torch/structures/closets/misc.dm"
	#include "../torch/structures/closets/research.dm"
	#include "../torch/structures/closets/security.dm"
	#include "../torch/structures/closets/services.dm"
	#include "../torch/structures/closets/supply.dm"
	#include "../torch/structures/closets/exploration.dm"
	#include "../torch/structures/memorabilia.dm"
	#include "../torch/structures/posters.dm"
	#include "../torch/structures/signs.dm"

	// --- LOADOUT --- //
	#include "../torch/loadout/_defines.dm"
	#include "../torch/loadout/loadout_accessories.dm"
	#include "../torch/loadout/loadout_ec_skillbadges.dm"
	#include "../torch/loadout/loadout_eyes.dm"
	#include "../torch/loadout/loadout_gloves.dm"
	#include "../torch/loadout/loadout_head.dm"
	#include "../torch/loadout/loadout_misc.dm"
	#include "../torch/loadout/loadout_shoes.dm"
	#include "../torch/loadout/loadout_suit.dm"
	#include "../torch/loadout/loadout_uniform.dm"
	#include "../torch/loadout/loadout_xeno.dm"
	#include "../torch/loadout/~defines.dm"

	// --- MAP FILES --- //

		// ~TORCH~ //
	#include "torch1_deck5.dmm"
	#include "torch2_deck4.dmm"
	#include "torch3_deck3.dmm"
	#include "torch4_deck2.dmm"
	#include "torch5_deck1.dmm"
	#include "torch6_bridge.dmm"
	#include "z7_admin.dmm"
	#include "z8_transit.dmm"

	#include "../bluespace_interlude/bluespace_interlude.dm"
	#include "../bluespace_interlude/bluespace_interlude.dmm"

		// ~AWAY SITES~ //
	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"
	#include "../away/miningstation/miningstation.dm"
	#include "../away/mininghome/mininghome.dm"
	#include "../away/scavver/scavver_gantry.dm"
	#include "../away/abandoned_hotel/abandoned_hotel.dm"

		// ~EVENT SHIPS~ //
	#include "../event/iccgn_ship/icgnv_hound.dm"
	#include "../event/sfv_arbiter/sfv_arbiter.dm"
	#include "../event/placeholders/placeholders.dm"
	#include "../event/empty/empty.dm"

	// USED MODS
	// Keep them in ascending alphabetical order, please

	#include "../../mods/_maps/sentinel/_map_sentinel.dme"
	#include "../../mods/_maps/farfleet/_map_farfleet.dme"
	#include "../../mods/_maps/hand/_map_hand.dme"

	#include "../../mods/antagonists/_antagonists.dme"
	#include "../../mods/bluespace_kitty/_bluespace_kitty.dme"
	#include "../../mods/fancy_sofas/_fancy_sofas.dme"
	#include "../../mods/guns/_guns.dme"
	#include "../../mods/jukebox_tapes/_jukebox_tapes.dme"
	#include "../../mods/legalese_language/_legalese.dme"
	#include "../../mods/petting_zoo/_petting_zoo.dme"
	#include "../../mods/screentips/_screentips.dme"
	#include "../../mods/tajara/_tajara.dme"
	#include "../../mods/sauna_props/_sauna_props.dme"
	#include "../../mods/wyccbay_optimization/_wyccbay_optimization.dme"

	// NON-UPSTREAM MODS
	#include "../../mods/runechat/_runechat.dme"
	#include "../../mods/fd_assets/_fd_assets.dme"

	#include "../../mods/accent_labels/_accent_labels.dme"
	#include "../../mods/additional_biomods/_additional_biomods.dme"
	#include "../../mods/ascent/_ascent.dme"
	#include "../../mods/combat_stances/_combat_stances.dme"
	#include "../../mods/conference_holopads/_conference_holopads.dme"
	#include "../../mods/fd_backgrounds/_fd_backgrounds.dme"
	#include "../../mods/hestia_missiles/_hestia_missiles.dme"
	#include "../../mods/landing_eye/_landing_eye.dme"
	#include "../../mods/mob_interactions/_mob_interactions.dme"
	#include "../../mods/multitile_vehicles/_multitile_vehicles.dme"
	#include "../../mods/old_space_cannons/_old_space_cannons.dme"

	// UNUSED MODS
	// Keep them in ascending alphabetical order too, please

	// #include "../../mods/atmos_ret_field/_atm_ret_field.dme"
	// #include "../../mods/resomi/_resomi.dme"

	// Почему UNUSED MODS стоит хранить?
	// Потому что никто не проверяет использование тех или иных файлов
	// в коде, и мод просто исчезнет из поля зрения, когда находясь здесь
	// он всегда напоминает о своём существовании. Небольшая библиотека,
	// если так вообще можно выразиться.

	#define using_map_DATUM /datum/map/torch

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Torch

#endif
