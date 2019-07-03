local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "lookUnderMat"
  L3_3 = L3_3(L4_4)
  if L3_3 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L4_4 = _text
    L4_4 = L4_4.C2_WILDERNESS_KEY
    L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "lookUnderMat"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      function L3_3()
        _util.DisableInput()
        _util.SetVar("lookUnderMat", 2)
        _util.ClearCom()
        _util.ChangeBaseAnim("MissionObjects/M2/matFlipUp")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.AddInventoryItem(_id.C2_HatchKey)
        _util.EnableInput(true)
        _util.ChangeBaseAnim("MissionObjects/M2/mat")
      end
      L4_4 = scriptPlay
      L4_4(L3_3)
    else
      L3_3 = _util
      L3_3 = L3_3.AddMonologue
      L4_4 = _text
      L4_4 = L4_4.C2_WILDERNESS_SNOWPILE
      L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "lookUnderMat"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.GetSource
    L3_3 = L3_3()
    L4_4 = _id
    L4_4 = L4_4.Inventory_MechanoDuster
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.StartMiniGame
      L4_4(_const.MECHANO_DUSTER, _const.MECHANO_SNOW)
      function L4_4()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.AddItem(_id.C2_HerbDoorMat)
        _util.SetVar("lookUnderMat", 1)
        _util.DelItem(_id.C2_SnowPile)
      end
      scriptPlay(L4_4)
    end
    L4_4 = _id
    L4_4 = L4_4.Inventory_PuffleBlack
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.SetSuccess
      L4_4(_util.GetSelf(), true)
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COLLIDED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlack
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.AddItem
    L4_4(_id.C2_HerbDoorMat)
    L4_4 = _util
    L4_4 = L4_4.SetVar
    L4_4("lookUnderMat", 1)
    L4_4 = _util
    L4_4 = L4_4.DelItem
    L4_4(_id.C2_SnowPile)
  end
end
