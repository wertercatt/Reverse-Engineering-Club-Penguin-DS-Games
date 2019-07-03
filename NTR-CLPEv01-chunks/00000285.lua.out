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
  L1_1 = L1_1.COMBINE
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMBINE
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.M1C2_SpyPodHalf1
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C2_spyPodCombined", 1)
    function L1_1()
      _util.RemoveInventoryItem(_id.M1C2_SpyPodHalf1)
      _util.RemoveInventoryItem(_id.M1C2_SpyPodHalf2)
      _util.SetSpawn(0, _id.M1C2_SpyPodHalf1)
      _util.SetSpawn(0, _id.M1C2_SpyPodHalf2)
      _util.DisplayPopUp(292, "UI/Zoom/spypod", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.StartCutscene(_const.SPYGADGET101)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      repeat
        scriptWait()
      until _util.IsInRoom(_id.M1C2_Director_CR, 8)
      _util.SetVar("M1C2_spyPodCombined", 1)
      _util.EnableSpyPodFunc(_const.FLAG_QUESTLOG)
      _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
      _util.DisableSpyPodFunc(_const.FLAG_COMMUNICATOR)
      _util.SetCombinationSuccess(1)
      _util.DelItem(_id.M1C2_Dot_CR)
      _util.ActivateNpc(_id.M1C2_Director_CR, 30)
      _util.EnableSpyPod()
    end
    _util.SetCombinationSuccess(1)
    scriptPlay(L1_1)
  end
end
