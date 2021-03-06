local L0_0, L1_1, L2_2, L3_3
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
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("M10_trapComplete")
  if L3_3 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddMonologue
    L3_3(_text.M10_NC_FIXED_MACHINE, "DialogStrings", _const.END_DIALOG, 0)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("M10_ropeSet")
    if L3_3 == 3 then
      function L3_3()
        local L0_4
        L0_4 = _util
        L0_4 = L0_4.StartMiniGame
        L0_4(_const.GEARS, 0)
        repeat
          L0_4 = scriptWait
          L0_4()
          L0_4 = _util
          L0_4 = L0_4.GetGameState
          L0_4 = L0_4()
        until L0_4 ~= _const.MISSION
        repeat
          L0_4 = scriptWait
          L0_4()
          L0_4 = _util
          L0_4 = L0_4.GetGameState
          L0_4 = L0_4()
        until L0_4 == _const.MISSION
        L0_4 = _util
        L0_4 = L0_4.GetMinigameOutput1
        L0_4 = L0_4()
        if L0_4 == 1 then
          function L0_4()
            if _util.GetObjective() == _text.M10_OBJ1 then
              _util.ClearObjective()
            end
            _util.DelItem(_id.M10_FixGearBox)
            _util.AddItem(_id.M10_BoxAndRope)
            _util.ChangeBaseAnim("MissionObjects/WaddleSquad/scripted/gearBox", _id.M10_BoxAndRope)
            _util.SwitchState("lift", _id.M10_CageAndRope)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M10_CageAndRope)
            _util.DelItem(_id.M10_CageAndRope)
            _util.AddItem(_id.M10_CageUp)
            _util.ChangeBaseAnim("MissionObjects/WaddleSquad/scripted/gearBox", _id.M10_BoxAndRope)
            _util.SetVar("M10_trapComplete", 1)
            _util.MarkObjComplete(_text.M10_OBJ1, true)
            if _util.GetVar("M10_JPGComplete") == 1 and _util.GetVar("M10_RookieComplete") == 1 and _util.GetVar("M10_trapComplete") == 1 then
              _util.SetupComNpc(_const.COM_JPG, _id.M10_HQGary, 1)
              _util.LaunchCommunicator()
            end
          end
          scriptPlay(L0_4)
        end
      end
      scriptPlay(L3_3)
    end
  end
end
