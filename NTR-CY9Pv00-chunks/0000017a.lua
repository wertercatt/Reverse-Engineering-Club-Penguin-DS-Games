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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.RemoveSignalTracking
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.RemoveInventoryItem
    L2_2 = _id
    L2_2 = L2_2.C3_CR_TrackingDevice
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.HasInventoryItem
    L2_2 = _id
    L2_2 = L2_2.C3_RookiesHat
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L1_1 = _util
      L1_1 = L1_1.ChangeBaseAnim
      L2_2 = "NPC/M3/Rookie/RookieHatPole2"
      L1_1(L2_2, _id.C3_TM_Rookie)
      L1_1 = _util
      L1_1 = L1_1.RemoveInventoryItem
      L2_2 = _id
      L2_2 = L2_2.C3_RookiesHat
      L1_1(L2_2)
      L1_1 = _util
      L1_1 = L1_1.ActivateNpc
      L2_2 = _id
      L2_2 = L2_2.C3_TM_Rookie
      L1_1(L2_2, 5)
    else
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L2_2 = _text
      L2_2 = L2_2.C3_TM_ROOKIE_1
      L1_1(L2_2)
      L1_1 = _util
      L1_1 = L1_1.AddPlayerOption
      L2_2 = _text
      L2_2 = L2_2.C3_TM_ROOKIE_1A
      L1_1(L2_2, _const.CHANGE_DIALOG, -1, 1)
      L1_1 = _util
      L1_1 = L1_1.AddPlayerOption
      L2_2 = _text
      L2_2 = L2_2.C3_TM_ROOKIE_1B
      L1_1(L2_2, _const.CHANGE_DIALOG, -1, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L2_2 = "NPC/M3/Rookie/RookieHatPole"
    L1_1(L2_2, _id.C3_TM_Rookie)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_2
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_3
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "HelpRookie"
    L1_1(L2_2, 1)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C3_OBJ4
    L1_1(L2_2, _text.C3_4SUBOBJ1)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C3_OBJ4
    L1_1(L2_2, _text.C3_4SUBOBJ3)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C3_OBJ4
    L1_1(L2_2, _text.C3_4SUBOBJ4)
    L1_1 = _util
    L1_1 = L1_1.AddSubObjective
    L2_2 = _text
    L2_2 = L2_2.C3_OBJ4
    L1_1(L2_2, _text.C3_OBJ5)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_4
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_4A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_4B
    L1_1(L2_2, _const.END_DIALOG, -1, 3)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_5
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_5A
    L1_1(L2_2, _const.END_DIALOG, -1, 50)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.M10_NIGHTCLUB_ROOKIEB_2
    L1_1(L2_2, _const.END_DIALOG, -1, 50)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_6
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_6A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_7
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 51)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.TEMP_C3_TM_ROOKIE_6
    L1_1(L2_2, _const.END_DIALOG, -1, 7)
    L1_1 = _util
    L1_1 = L1_1.AddInventoryItem
    L2_2 = _id
    L2_2 = L2_2.C3_FishingPole
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L2_2 = "NPC/M3/Rookie/RookieNOPole"
    L1_1(L2_2, _id.C3_TM_Rookie)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L2_2 = "SavedRookie"
    L1_1(L2_2, 1)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_ROOKIE_8
    L1_1(L2_2, _const.END_DIALOG, -1, 7)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C3_TM_JPG_5B
    L1_1(L2_2, _const.END_DIALOG, -1, 10)
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
  L2_2 = _id
  L2_2 = L2_2.C3_RookiesHat
  if L1_1 == L2_2 then
    function L2_2()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/M3/Rookie/RookieHatPole2", _id.C3_TM_Rookie, "PutHatOn")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_TM_Rookie)
      _util.EnableInput(true)
      _util.RemoveInventoryItem(_id.C3_RookiesHat)
      _util.ActivateNpc(_id.C3_TM_Rookie, 5)
    end
    scriptPlay(L2_2)
  end
end
