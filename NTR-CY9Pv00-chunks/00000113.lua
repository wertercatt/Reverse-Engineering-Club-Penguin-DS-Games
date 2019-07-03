local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(1, _id.M2_VR_Gary)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M2_VR_DIRECTOR_1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M2_VR_DIRECTOR_2, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_DECODER)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_WRENCH)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_SCISSORS)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_COMB)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_FLASHLIGHT)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_QUESTLOG)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_MECHANODUSTER)
    L1_1 = _util
    L1_1 = L1_1.EnableSpyPodFunc
    L1_1(_const.FLAG_COMMUNICATOR)
    function L1_1()
      _util.StartCutscene(_const.SPYGADGET_INSTRUCTIONS)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ActivateNpc(_id.M2_VR_Director, 3)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M2_VR_DIRECTOR_3)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M2_VR_DIRECTOR_3A, _const.CHANGE_DIALOG, -1, 4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.M2_VR_DIRECTOR_3B, _const.CHANGE_DIALOG, -1, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M2_VR_DIRECTOR_4, _const.CHANGE_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M2_VR_DIRECTOR_5, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(_text.M2_VR_DIRECTOR_6, _const.END_DIALOG, 6)
  end
end
