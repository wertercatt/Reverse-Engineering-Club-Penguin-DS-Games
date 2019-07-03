local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "C4_HerbFloaties"
  L1_1 = L1_1(L2_2)
  if L1_1 < 3 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "DoNotRestoreMusic"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.PlayHerbertLurking
    L1_1()
  end
  L1_1 = _util
  L1_1 = L1_1.MarkObjComplete
  L2_2 = _text
  L2_2 = L2_2.C4_OBJ1
  L1_1(L2_2)
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_1
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_1A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_2
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_3
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_3A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 3)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_3B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_4
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_5
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_5A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 5)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_5B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_6
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_6A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 6)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_6B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 18)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_7
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_7A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_8
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_8A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_9
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_10
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_11
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_11A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 11)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_11B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 12)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_12
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_15A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 15)
  elseif L0_0 == 12 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_13
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 13)
  elseif L0_0 == 13 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_14
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 14)
  elseif L0_0 == 14 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_15
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_15A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 15)
  elseif L0_0 == 15 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_16
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_16A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 16)
  elseif L0_0 == 16 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_17
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_17A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 17)
  elseif L0_0 == 17 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_18
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 170)
  elseif L0_0 == 170 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L2_2 = 3
    L1_1(L2_2, _id.C4_SkiVillage_JPG)
    L1_1 = _util
    L1_1 = L1_1.AddObjective
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ1
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ1
    L1_1(L2_2, _text.C4_1SUBSUB1)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_19
    L1_1(L2_2, _const.END_DIALOG, -1, 27)
  elseif L0_0 == 18 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_7
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 19)
  elseif L0_0 == 19 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_8
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 20)
  elseif L0_0 == 20 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_9
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_9A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 21)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_9B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 24)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_10
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 22)
  elseif L0_0 == 22 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_11
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 23)
  elseif L0_0 == 23 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_12
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_15B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 15)
  elseif L0_0 == 24 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_13
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 25)
  elseif L0_0 == 25 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_14
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 26)
  elseif L0_0 == 26 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_15
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_15B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 15)
  elseif L0_0 == 27 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_ALT_19
    L1_1(L2_2, _const.END_DIALOG, -1, 27)
  elseif L0_0 == 28 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_20
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_20A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 29)
  elseif L0_0 == 29 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_21
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_21A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 30)
  elseif L0_0 == 30 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_22
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_22A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 31)
  elseif L0_0 == 31 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_23
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 32)
  elseif L0_0 == 32 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_24
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 33)
  elseif L0_0 == 33 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L2_2 = "NPC/M4/Klutzy/KlutzySki"
    L1_1(L2_2, _id.C4_SkiVillage_Klutzy, "TO")
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_25
    L1_1(L2_2, _const.END_DIALOG, -1, 34)
  elseif L0_0 == 34 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_25
    L1_1(L2_2, _const.END_DIALOG, -1, 34)
  elseif L0_0 == 35 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_26
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_26A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 36)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_26B
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 36)
  elseif L0_0 == 36 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_27
    L1_1(L2_2, _const.CHANGE_NPC, _id.C4_SkiVillage_JPG, 11)
    L1_1 = _util
    L1_1 = L1_1.MarkObjComplete
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ1
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.MarkSubObjComplete
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ1
    L1_1(L2_2, _text.C4_1SUBSUB1)
    L1_1 = _util
    L1_1 = L1_1.AddObjective
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ2
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ2
    L1_1(L2_2, _text.C4_1SUB2SUB1)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ2
    L1_1(L2_2, _text.C4_1SUB2SUB2)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ2
    L1_1(L2_2, _text.C4_1SUB2SUB3)
  elseif L0_0 == 3601 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_HERB_GIVE_KLUTZY1
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 3602)
  elseif L0_0 == 3602 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L2_2 = 37
    L1_1(L2_2)
    function L1_1()
      _util.DisableInput()
      _util.SetPuffle(_id.Inventory_NoPuffle)
      _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzyPuffle", _id.C4_SkiVillage_Klutzy)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C4_SkiVillage_Klutzy)
      repeat
        scriptWait()
      until 10 <= 0 + 1
      _util.DelItem(_id.C4_SkiVillage_Klutzy)
      _util.SetPuffle(_id.Inventory_PuffleKlutzy)
      _util.EnablePuffle(_id.Enable_PuffleKlutzy)
      _util.EnableInput(true)
      _util.AddNPCText(_text.C4_HERB_GIVE_KLUTZY2, _const.CHANGE_NPC, _id.C4_SkiVillage_JPG, 12)
    end
    L2_2 = scriptPlay
    L2_2(L1_1)
  elseif L0_0 == 37 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_27
    L1_1(L2_2, _const.END_DIALOG, -1, 37)
  elseif L0_0 == 38 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_28
    L1_1(L2_2, _const.CHANGE_NPC, _id.C4_SkiVillage_JPG, 13)
  elseif L0_0 == 39 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_29
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_29A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 40)
  elseif L0_0 == 40 then
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L2_2 = _id
    L2_2 = L2_2.C4_SkiVillage_Rookie
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L2_2 = _id
    L2_2 = L2_2.C4_SkiVillage_Rookie
    L1_1(L2_2, 0)
  elseif L0_0 == 41 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_30
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_ROOKIE_1A
    L1_1(L2_2, _const.CHANGE_NPC, _id.C4_SkiVillage_Rookie, 1)
  elseif L0_0 == 42 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_31
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 43)
  elseif L0_0 == 43 then
    L1_1 = _util
    L1_1 = L1_1.MarkObjComplete
    L2_2 = _text
    L2_2 = L2_2.C4_1SUBOBJ2
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.ClearCom
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "CompletedRebalancingWithDot"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetupComNpc
      L2_2 = _const
      L2_2 = L2_2.COM_DOT
      L1_1(L2_2, _id.C4_Plaza_Dot, 0)
      L1_1 = _util
      L1_1 = L1_1.SetObjective
      L2_2 = _text
      L2_2 = L2_2.C4_OBJ3
      L1_1(L2_2)
    else
      L1_1 = _util
      L1_1 = L1_1.SetSpawn
      L2_2 = 0
      L1_1(L2_2, _id.C4_Plaza_Dot)
    end
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "CompletedAquaGrabber"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "C4_Talk2Gary"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.SetupComNpc
        L2_2 = _const
        L2_2 = L2_2.COM_GARY
        L1_1(L2_2, _id.C4_IceBerg_Gary, 0)
      end
    end
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "CompletedAquaGrabber"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetObjective
      L2_2 = _text
      L2_2 = L2_2.C4_OBJ2
      L1_1(L2_2)
    else
      L1_1 = _util
      L1_1 = L1_1.SetSpawn
      L2_2 = 0
      L1_1(L2_2, _id.C4_IceBerg_Gary)
    end
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "CompletedAquaGrabber"
    L1_1 = L1_1(L2_2)
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "C4_Talk2Gary"
      L1_1 = L1_1(L2_2)
    elseif L1_1 ~= 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "CompletedRebalancingWithDot"
      L1_1 = L1_1(L2_2)
      if L1_1 == 0 then
      else
        L1_1 = _util
        L1_1 = L1_1.SetupComNpc
        L2_2 = _const
        L2_2 = L2_2.COM_GARY
        L1_1(L2_2, _id.C4_IceBerg_Gary, 5)
      end
    end
    L1_1 = _util
    L1_1 = L1_1.LaunchCommunicator
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.C4_SkiVillage_Rookie)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.C4_SkiVillage_JPG)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.C4_SkiVillage_Klutzy)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2, _id.C4_MineShack_NPC_Rookie)
    L1_1 = _util
    L1_1 = L1_1.SetSpawn
    L2_2 = 0
    L1_1(L2_2)
  elseif L0_0 == 44 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_32
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 45)
  elseif L0_0 == 45 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_33
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 46)
  elseif L0_0 == 46 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_34
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_34A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 47)
  elseif L0_0 == 47 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_35
    L1_1(L2_2, _const.END_DIALOG, -1, 47)
  elseif L0_0 == 300 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_22
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_22A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 310)
  elseif L0_0 == 310 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C4_SV_HERBERT_23
    L1_1(L2_2, _const.CHANGE_NPC, _id.C4_SkiVillage_JPG, 10)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("freeHerbert")
  if L2_2 == 1 then
    function L2_2()
      if _UPVALUE0_ == _id.C4_InventoryItem_WaterWings or _UPVALUE0_ == _id.C4_InventoryItem_LifeJacket or _UPVALUE0_ == _id.C4_InventoryItem_Duck4Herb then
        if _UPVALUE0_ == _id.C4_InventoryItem_WaterWings then
          _util.AddItem(_id.C4_HerbWaterwings)
        elseif _UPVALUE0_ == _id.C4_InventoryItem_LifeJacket then
          _util.AddItem(_id.C4_HerbVest)
        elseif _UPVALUE0_ == _id.C4_InventoryItem_Duck4Herb then
          _util.AddItem(_id.C4_HerbDuck)
        end
        _util.RemoveInventoryItem(_UPVALUE0_)
        _util.IncVar("C4_HerbFloaties")
        if _util.GetVar("C4_HerbFloaties") >= 3 then
          _util.DisableInput()
          _util.SetVar("freeHerbert", 2)
          _util.DelItem(_id.C4_HerbWaterwings)
          _util.DelItem(_id.C4_HerbVest)
          _util.DelItem(_id.C4_HerbDuck)
          _util.AddItem(_id.C4_SkiVillage_BrokenAirShip)
          _util.EnablePuffle(_id.Enable_PuffleKlutzy)
          _util.ChangeBaseAnim("NPC/M4/Herbert/HerbClimb")
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_util.GetSelf())
          _util.SwitchState("")
          _util.RestoreSongFromHerbert()
          if _util.GetVar("CompletedRebalancingWithDot") >= 1 and 1 <= _util.GetVar("CompletedAquaGrabber") and _util.GetVar("C4_SwappedLevel") == 0 then
            _util.SetVar("C4_SwappedLevel", 1)
            _util.AddObjective(_text.C4_OBJ4)
            _util.SwapLevel(88, 87)
          end
          _util.AddItem(_id.C4_SkiVillage_Herb)
          _util.DelItem(_id.C4_SkiVillage_HerbTrapped)
          _util.EnableInput(true)
          _util.ActivateNpc(_id.C4_SkiVillage_Herb, 38)
        else
          _util.AddNPCText(_text.C4_SKIVILLAGE_HERBDROP_RIGHT)
        end
      elseif _UPVALUE0_ == _id.C4_InventoryItem_LifePreserver then
        _util.AddNPCText(_text.C4_SKIVILLAGE_HERBDROP_LIFE)
      else
        _util.AddNPCText(_text.C4_SKIVILLAGE_HERBDROP_WRONG)
      end
    end
    scriptPlay(L2_2)
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_ScissorsTool
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.AddPlayerThought
      L2_2(_text.C4_SKIVILLAGE_HERBSCISSORS)
    end
  end
end
