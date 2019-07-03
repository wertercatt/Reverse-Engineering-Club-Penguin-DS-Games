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
  L4_4 = "c2_herbDoorUnlocked"
  L3_3 = L3_3(L4_4)
  if L3_3 ~= 0 then
    L3_3 = _util
    L3_3 = L3_3.IsSuitcaseItemEquipped
    L4_4 = _id
    L4_4 = L4_4.SuitCase_CrabCostume
    L3_3 = L3_3(L4_4)
    if L3_3 then
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L4_4 = "C2_DisableSuitcase"
      L3_3(L4_4, 1)
      L3_3 = _util
      L3_3 = L3_3.ChangeBaseAnim
      L4_4 = "MissionObjects/M2/hatch"
      L3_3(L4_4, _id.C2_Hatch, "fullyopen")
      L3_3 = _util
      L3_3 = L3_3.ChangeRoom
      L4_4 = 53
      L3_3(L4_4)
    end
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "c2_herbDoorUnlocked"
    L3_3 = L3_3(L4_4)
    if L3_3 ~= 0 then
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L4_4 = _text
      L4_4 = L4_4.C2_HERBBASE_NOCRAB
      L3_3(L4_4)
    else
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L4_4 = _text
      L4_4 = L4_4.C2_HATCH
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L4_4 = "c2_foundCaveTalkedToDot"
      L3_3 = L3_3(L4_4)
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.GetVar
        L4_4 = "lookUnderMat"
        L3_3 = L3_3(L4_4)
        if L3_3 < 2 then
          function L3_3()
            _util.SetVar("c2_foundCaveTalkedToDot", 1)
            _util.ClearCom()
            _util.SetupComNpc(_const.COM_DOT, _id.C2_Wilderness_Dot, 2)
            repeat
              scriptWait()
            until 1800 - 1 <= 0
            if 2 > _util.GetVar("lookUnderMat") and _util.GetVar("C2_DotComm") == 0 then
              _util.LaunchCommunicator()
            end
          end
          L4_4 = scriptPlay
          L4_4(L3_3)
        end
      end
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
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.C2_HatchKey
  if L3_3 == L4_4 then
    function L4_4()
      _util.DisableInput()
      _util.AddItem(_id.C2_HatchUnlock)
      _util.ChangeBaseAnim("MissionObjects/M2/hatchUnlock", _id.C2_HatchUnlock)
      _util.PlaySFX(170)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_HatchUnlock)
      _util.DelItem(_id.C2_HatchUnlock)
      _util.SetVar("c2_herbDoorUnlocked", 1)
      _util.ChangeBaseAnim("MissionObjects/M2/hatchOpen")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_Hatch)
      _util.ChangeBaseAnim("MissionObjects/M2/hatch", _id.C2_Hatch, "fullyopen")
      _util.RemoveInventoryItem(_id.C2_HatchKey)
      _util.EnableInput(true)
    end
    scriptPlay(L4_4)
  end
end
