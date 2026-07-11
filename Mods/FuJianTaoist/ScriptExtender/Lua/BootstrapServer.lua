local SealRuneMap = {
    ["Fu_Dao_SealRune_FlyingSword"] = "TT_FuDao_Scroll_FlyingSword",
    ["Fu_Dao_SealRune_DispelMisfortune"] = "TT_FuDao_Scroll_DispelMisfortune",
    ["Fu_Dao_SealRune_MysticIce"] = "TT_FuDao_Scroll_MysticIce",
    ["Fu_Dao_SealRune_SoulSeal"] = "TT_FuDao_Scroll_SoulSeal",
    ["Fu_Dao_SealRune_TalismanWard"] = "TT_FuDao_Scroll_TalismanWard",
    ["Fu_Dao_SealRune_ThunderSummons"] = "TT_FuDao_Scroll_ThunderSummons",
    ["Fu_Dao_SealRune_SamadhiFire"] = "TT_FuDao_Scroll_SamadhiFire",
    ["Fu_Dao_SealRune_SwordQiSweep"] = "TT_FuDao_Scroll_SwordQiSweep",
    ["Fu_Dao_SealRune_VajraGuard"] = "TT_FuDao_Scroll_VajraGuard",
    ["Fu_Dao_SealRune_FlameLotus"] = "TT_FuDao_Scroll_FlameLotus",
    ["Fu_Dao_SealRune_SwordFlight"] = "TT_FuDao_Scroll_SwordFlight",
    ["Fu_Dao_SealRune_HeavenFire"] = "TT_FuDao_Scroll_HeavenFire",
    ["Fu_Dao_SealRune_FrostLock"] = "TT_FuDao_Scroll_FrostLock",
    ["Fu_Dao_SealRune_MyriadSwordsLaunch"] = "TT_FuDao_Scroll_MyriadSwordsLaunch",
    ["Fu_Dao_SealRune_PurpleThunder"] = "TT_FuDao_Scroll_PurpleThunder",
    ["Fu_Dao_SealRune_EndlessVitality"] = "TT_FuDao_Scroll_EndlessVitality",
    ["Fu_Dao_SealRune_TianGangFormation"] = "TT_FuDao_Scroll_TianGangFormation",
    ["Fu_Dao_SealRune_JiuTianXuanLei"] = "TT_FuDao_Scroll_JiuTianXuanLei",
    ["Fu_Dao_SealRune_QianKunShift"] = "TT_FuDao_Scroll_QianKunShift",
    ["Fu_Dao_SealRune_TaiYiThunder"] = "TT_FuDao_Scroll_TaiYiThunder",
    ["Fu_Dao_SealRune_WanJianGuiZong"] = "TT_FuDao_Scroll_WanJianGuiZong",
    ["Fu_Dao_SealRune_HunYuanYiQi"] = "TT_FuDao_Scroll_HunYuanYiQi",
    ["Fu_Dao_SealRune_ZhuXianSwordFormation"] = "TT_FuDao_Scroll_ZhuXianSwordFormation",
    ["Fu_Dao_SealRune_TianDaoLunHui"] = "TT_FuDao_Scroll_TianDaoLunHui",
    ["Fu_Dao_SealRune_WanFaGuiYi"] = "TT_FuDao_Scroll_WanFaGuiYi",
    ["Fu_Dao_SealRune_FiveElementsRuin"] = "TT_FuDao_Scroll_FiveElementsRuin",
    ["Fu_Dao_SealRune_TaijiHeavenMirror"] = "TT_FuDao_Scroll_TaijiHeavenMirror",
    ["Fu_Dao_SealRune_WanXiangThunderTribulation"] = "TT_FuDao_Scroll_WanXiangThunderTribulation",
    ["Fu_Dao_SealRune_VoidGodslayerSword"] = "TT_FuDao_Scroll_VoidGodslayerSword",
}

Ext.Utils.Print("[FuJianTaoist] server bootstrap loaded")

Ext.Osiris.RegisterListener("CastedSpell", 5, "after", function(caster, spell, spellType, spellElement, storyActionId)
    local tableName = SealRuneMap[spell]
    if tableName == nil or caster == nil then
        return
    end
    Osi.GenerateTreasure(caster, tableName, 1, caster)
end)
