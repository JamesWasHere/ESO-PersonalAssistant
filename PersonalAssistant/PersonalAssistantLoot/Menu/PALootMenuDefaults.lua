-- Local instances of Global tables --
local PA = PersonalAssistant

-- ---------------------------------------------------------------------------------------------------------------------

local PALootMenuDefaults = {
    enabled = false,

    LootRecipes = {
        unknownRecipeMsg = true
    },

    LootMotifs = {
        unknownMotifMsg = true,
    },

    LootApparelWeapons = {
        unknownTraitMsg = true,
    },

    lowInventorySpaceWarning = true,
    chatOutput = true,
}

-- ---------------------------------------------------------------------------------------------------------------------
-- Export
PA.MenuDefaults = PA.MenuDefaults or {}
PA.MenuDefaults.PALoot = PALootMenuDefaults