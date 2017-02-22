-- Addon: PersonalAssistant.Repair
-- Developer: Klingo

PAR = {}
PAR.AddonName = "PersonalAssistantRepair"
PAR.AddonVersion = "1.0"


-- init default values
function PAR.initDefaults()
    -- initialize the multi-profile structure
    PAR.Repair_Defaults = {}
    -- -----------------------------------------------------
    -- default values for PARepair
    for profileNo = 1, PAG_MAX_PROFILES do
        PAR.Repair_Defaults[profileNo] = PAMenu_Defaults.defaultSettings.PARepair
    end
end

-- init saved variables and register Addon
function PAR.initAddon(_, addOnName)
    if addOnName ~= PAR.AddonName then
        return
    end

    -- addon load started - unregister event
    PAEM.UnregisterForEvent(PAR.AddonName, EVENT_ADD_ON_LOADED)

    -- initialize the default values
    PAR.initDefaults()

    -- gets values from SavedVars, or initialises with default values
    PA.savedVars.Repair = ZO_SavedVars:NewAccountWide("PersonalAssistantRepair_SavedVariables", 1, "Repair", PAR.Repair_Defaults)
end

PAEM.RegisterForEvent(PAR.AddonName, EVENT_ADD_ON_LOADED, PAR.initAddon)