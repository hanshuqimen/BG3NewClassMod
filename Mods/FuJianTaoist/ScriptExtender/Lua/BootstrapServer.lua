local RESOURCE_NAME = "FuDaoSealRuneCast"

local SealRuneMap = {
    ["Fu_Dao_SealRune_FlyingSword"] = { treasure = "TT_FuDao_Scroll_FlyingSword", source = "Fu_Dao_FlyingSword", marker = "FUJIAN_KNOWS_FLYINGSWORD" },
    ["Fu_Dao_SealRune_DispelMisfortune"] = { treasure = "TT_FuDao_Scroll_DispelMisfortune", source = "Fu_Dao_DispelMisfortune", marker = "FUJIAN_KNOWS_DISPELMISFORTUNE" },
    ["Fu_Dao_SealRune_MysticIce"] = { treasure = "TT_FuDao_Scroll_MysticIce", source = "Fu_Dao_MysticIce", marker = "FUJIAN_KNOWS_MYSTICICE" },
    ["Fu_Dao_SealRune_SoulSeal"] = { treasure = "TT_FuDao_Scroll_SoulSeal", source = "Fu_Dao_SoulSeal", marker = "FUJIAN_KNOWS_SOULSEAL" },
    ["Fu_Dao_SealRune_TalismanWard"] = { treasure = "TT_FuDao_Scroll_TalismanWard", source = "Fu_Dao_TalismanWard", marker = "FUJIAN_KNOWS_TALISMANWARD" },
    ["Fu_Dao_SealRune_ThunderSummons"] = { treasure = "TT_FuDao_Scroll_ThunderSummons", source = "Fu_Dao_ThunderSummons", marker = "FUJIAN_KNOWS_THUNDERSUMMONS" },
    ["Fu_Dao_SealRune_SamadhiFire"] = { treasure = "TT_FuDao_Scroll_SamadhiFire", source = "Fu_Dao_SamadhiFire", marker = "FUJIAN_KNOWS_SAMADHIFIRE" },
    ["Fu_Dao_SealRune_SwordQiSweep"] = { treasure = "TT_FuDao_Scroll_SwordQiSweep", source = "Fu_Dao_SwordQiSweep", marker = "FUJIAN_KNOWS_SWORDQISWEEP" },
    ["Fu_Dao_SealRune_VajraGuard"] = { treasure = "TT_FuDao_Scroll_VajraGuard", source = "Fu_Dao_VajraGuard", marker = "FUJIAN_KNOWS_VAJRAGUARD" },
    ["Fu_Dao_SealRune_FlameLotus"] = { treasure = "TT_FuDao_Scroll_FlameLotus", source = "Fu_Dao_FlameLotus", marker = "FUJIAN_KNOWS_FLAMELOTUS" },
    ["Fu_Dao_SealRune_SwordFlight"] = { treasure = "TT_FuDao_Scroll_SwordFlight", source = "Fu_Dao_SwordFlight", marker = "FUJIAN_KNOWS_SWORDFLIGHT" },
    ["Fu_Dao_SealRune_HeavenFire"] = { treasure = "TT_FuDao_Scroll_HeavenFire", source = "Fu_Dao_HeavenFire", marker = "FUJIAN_KNOWS_HEAVENFIRE" },
    ["Fu_Dao_SealRune_FrostLock"] = { treasure = "TT_FuDao_Scroll_FrostLock", source = "Fu_Dao_FrostLock", marker = "FUJIAN_KNOWS_FROSTLOCK" },
    ["Fu_Dao_SealRune_MyriadSwordsLaunch"] = { treasure = "TT_FuDao_Scroll_MyriadSwordsLaunch", source = "Fu_Dao_MyriadSwordsLaunch", marker = "FUJIAN_KNOWS_MYRIADSWORDSLAUNCH" },
    ["Fu_Dao_SealRune_PurpleThunder"] = { treasure = "TT_FuDao_Scroll_PurpleThunder", source = "Fu_Dao_PurpleThunder", marker = "FUJIAN_KNOWS_PURPLETHUNDER" },
    ["Fu_Dao_SealRune_EndlessVitality"] = { treasure = "TT_FuDao_Scroll_EndlessVitality", source = "Fu_Dao_EndlessVitality", marker = "FUJIAN_KNOWS_ENDLESSVITALITY" },
    ["Fu_Dao_SealRune_TianGangFormation"] = { treasure = "TT_FuDao_Scroll_TianGangFormation", source = "Fu_Dao_TianGangFormation", marker = "FUJIAN_KNOWS_TIANGANGFORMATION" },
    ["Fu_Dao_SealRune_JiuTianXuanLei"] = { treasure = "TT_FuDao_Scroll_JiuTianXuanLei", source = "Fu_Dao_JiuTianXuanLei", marker = "FUJIAN_KNOWS_JIUTIANXUANLEI" },
    ["Fu_Dao_SealRune_QianKunShift"] = { treasure = "TT_FuDao_Scroll_QianKunShift", source = "Fu_Dao_QianKunShift", marker = "FUJIAN_KNOWS_QIANKUNSHIFT" },
    ["Fu_Dao_SealRune_TaiYiThunder"] = { treasure = "TT_FuDao_Scroll_TaiYiThunder", source = "Fu_Dao_TaiYiThunder", marker = "FUJIAN_KNOWS_TAIYITHUNDER" },
    ["Fu_Dao_SealRune_WanJianGuiZong"] = { treasure = "TT_FuDao_Scroll_WanJianGuiZong", source = "Fu_Dao_WanJianGuiZong", marker = "FUJIAN_KNOWS_WANJIANGUIZONG" },
    ["Fu_Dao_SealRune_HunYuanYiQi"] = { treasure = "TT_FuDao_Scroll_HunYuanYiQi", source = "Fu_Dao_HunYuanYiQi", marker = "FUJIAN_KNOWS_HUNYUANYIQI" },
    ["Fu_Dao_SealRune_ZhuXianSwordFormation"] = { treasure = "TT_FuDao_Scroll_ZhuXianSwordFormation", source = "Fu_Dao_ZhuXianSwordFormation", marker = "FUJIAN_KNOWS_ZHUXIANSWORDFORMATION" },
    ["Fu_Dao_SealRune_TianDaoLunHui"] = { treasure = "TT_FuDao_Scroll_TianDaoLunHui", source = "Fu_Dao_TianDaoLunHui", marker = "FUJIAN_KNOWS_TIANDAOLUNHUI" },
    ["Fu_Dao_SealRune_WanFaGuiYi"] = { treasure = "TT_FuDao_Scroll_WanFaGuiYi", source = "Fu_Dao_WanFaGuiYi", marker = "FUJIAN_KNOWS_WANFAGUIYI" },
    ["Fu_Dao_SealRune_FiveElementsRuin"] = { treasure = "TT_FuDao_Scroll_FiveElementsRuin", source = "Fu_Dao_FiveElementsRuin", marker = "FUJIAN_KNOWS_FIVEELEMENTSRUIN" },
    ["Fu_Dao_SealRune_TaijiHeavenMirror"] = { treasure = "TT_FuDao_Scroll_TaijiHeavenMirror", source = "Fu_Dao_TaijiHeavenMirror", marker = "FUJIAN_KNOWS_TAIJIHEAVENMIRROR" },
    ["Fu_Dao_SealRune_WanXiangThunderTribulation"] = { treasure = "TT_FuDao_Scroll_WanXiangThunderTribulation", source = "Fu_Dao_WanXiangThunderTribulation", marker = "FUJIAN_KNOWS_WANXIANGTHUNDERTRIBULATION" },
    ["Fu_Dao_SealRune_VoidGodslayerSword"] = { treasure = "TT_FuDao_Scroll_VoidGodslayerSword", source = "Fu_Dao_VoidGodslayerSword", marker = "FUJIAN_KNOWS_VOIDGODSLAYERSWORD" },
}

local function GetCharacterEntity(character)
    local entity = Ext.Entity.Get(character)
    if entity ~= nil then
        return entity
    end
    local cleanGuid = character and character:match(".*_(.*)") or character
    return cleanGuid and Ext.Entity.Get(cleanGuid) or nil
end

local function RestoreSealRuneResource(character)
    local entity = GetCharacterEntity(character)
    local actionResources = entity and entity.ActionResources
    local resources = actionResources and actionResources.Resources
    if resources == nil then
        return
    end

    for resourceUuid, levels in pairs(resources) do
        local definition = Ext.StaticData.Get(resourceUuid, "ActionResource")
        if definition ~= nil and definition.Name == RESOURCE_NAME then
            for _, resource in pairs(levels) do
                resource.Amount = resource.MaxAmount
            end
            entity:Replicate("ActionResources")
            return
        end
    end
end

local function SyncSealRuneMarkers(character)
    if character == nil then
        return
    end
    for _, data in pairs(SealRuneMap) do
        local learned = Osi.HasSpell(character, data.source) == 1
        local marked = Osi.HasActiveStatus(character, data.marker) == 1
        if learned and not marked then
            Osi.ApplyStatus(character, data.marker, -1, 1)
        elseif not learned and marked then
            Osi.RemoveStatus(character, data.marker)
        end
    end
end

local function ForEachPlayer(callback)
    for _, row in ipairs(Osi.DB_Players:Get(nil)) do
        for _, character in ipairs(row) do
            callback(character)
        end
    end
end

local function SyncAllPlayers()
    ForEachPlayer(SyncSealRuneMarkers)
end

Ext.Utils.Print("[FuJianTaoist] server bootstrap loaded")

-- Learned-spell markers drive RequirementConditions on the Seal Rune choices.
Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    SyncAllPlayers()
end)
Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", SyncSealRuneMarkers)
Ext.Osiris.RegisterListener("LeveledUp", 1, "after", SyncSealRuneMarkers)
Ext.Osiris.RegisterListener("RespecCompleted", 1, "after", SyncSealRuneMarkers)
Ext.Osiris.RegisterListener("LearnedSpell", 2, "after", function(character, learnedSpell)
    SyncSealRuneMarkers(character)
end)

-- FullRest is the static definition; this listener is an explicit fallback for
-- the engine bug where mod-added resources are sometimes skipped on long rest.
Ext.Osiris.RegisterListener("LongRestFinished", 0, "after", function()
    ForEachPlayer(function(character)
        RestoreSealRuneResource(character)
        SyncSealRuneMarkers(character)
    end)
end)

Ext.Osiris.RegisterListener("CastedSpell", 5, "after", function(caster, spell, spellType, spellElement, storyActionId)
    local data = SealRuneMap[spell]
    if data == nil or caster == nil then
        return
    end
    -- Defense in depth: even a console/other-mod forced cast cannot create a
    -- scroll unless the caster actually knows the source spell.
    if Osi.HasSpell(caster, data.source) ~= 1 then
        Ext.Utils.PrintWarning("[FuJianTaoist] Blocked Seal Rune for unlearned spell: " .. data.source)
        SyncSealRuneMarkers(caster)
        return
    end
    Osi.GenerateTreasure(caster, data.treasure, 1, caster)
end)
