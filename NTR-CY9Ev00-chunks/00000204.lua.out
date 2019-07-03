local L0_0, L1_1
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
if L1_1 == _const.TOUCHED then
  L1_1 = _util
  L1_1 = L1_1.AddMonologue
  L1_1(_text.C2_HBSTORAGE_TRIPLELOCK, "DialogStrings", _const.END_DIALOG, 0)
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.ITEM_DROPPED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("Pic1Taken")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("Pic2Taken")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("Pic3Taken")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("C2_TripleLockDoor")
        if L1_1 < 1 then
          L1_1 = _util
          L1_1 = L1_1.ChangeBaseAnim
          L1_1("MissionObjects/M2/herbDoorLight", _id.C2_Light2HerbsDoor1, "on")
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("C2_TripleLockDoor")
          if L1_1 < 2 then
            L1_1 = _util
            L1_1 = L1_1.ChangeBaseAnim
            L1_1("MissionObjects/M2/herbDoorLight", _id.C2_Light2HerbsDoor2, "on")
          else
            L1_1 = _util
            L1_1 = L1_1.GetVar
            L1_1 = L1_1("C2_TripleLockDoor")
            if L1_1 < 3 then
              L1_1 = _util
              L1_1 = L1_1.ChangeBaseAnim
              L1_1("MissionObjects/M2/herbDoorLight", _id.C2_Light2HerbsDoor3, "on")
            end
          end
        end
        function L1_1()
          local L0_2, L1_3
          L0_2 = _util
          L0_2 = L0_2.GetSource
          L0_2 = L0_2()
          L1_3 = _util
          L1_3 = L1_3.GetVar
          L1_3 = L1_3("C2_TripleLockDoor")
          if L0_2 == _id.C2_HKEY3 then
            _util.DisableInput()
            _util.ChangeBaseAnim("MissionObjects/M2/herbertKeyUnlockC", _id.C2_KeyAnim)
            _util.PlaySFX(170)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.C2_KeyAnim)
            _util.ChangeBaseAnim("MissionObjects/M2/herbertKeyUnlockDefault", _id.C2_KeyAnim)
            _util.EnableInput(true)
            L1_3 = L1_3 + 1
            _util.RemoveInventoryItem(_id.C2_HKEY3)
          elseif L0_2 == _id.C2_HKEY2 then
            _util.DisableInput()
            _util.ChangeBaseAnim("MissionObjects/M2/herbertKeyUnlockB", _id.C2_KeyAnim)
            _util.PlaySFX(170)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.C2_KeyAnim)
            _util.ChangeBaseAnim("MissionObjects/M2/herbertKeyUnlockDefault", _id.C2_KeyAnim)
            _util.EnableInput(true)
            L1_3 = L1_3 + 1
            _util.RemoveInventoryItem(_id.C2_HKEY2)
          elseif L0_2 == _id.C2_HKEY4 then
            _util.DisableInput()
            _util.ChangeBaseAnim("MissionObjects/M2/herbertKeyUnlockA", _id.C2_KeyAnim)
            _util.PlaySFX(170)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.C2_KeyAnim)
            _util.ChangeBaseAnim("MissionObjects/M2/herbertKeyUnlockDefault", _id.C2_KeyAnim)
            _util.EnableInput(true)
            L1_3 = L1_3 + 1
            _util.RemoveInventoryItem(_id.C2_HKEY4)
          else
            return
          end
          _util.SetVar("C2_TripleLockDoor", L1_3)
          if L1_3 == 3 then
            _util.SetExitLocked(_id.Doors_C2_HerbsDoor2WorkShop, false)
          end
        end
        scriptPlay(L1_1)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L1_1(_text.HERBBASE_DOOR_NOPICS)
  end
end
