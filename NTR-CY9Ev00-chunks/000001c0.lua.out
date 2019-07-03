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
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
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
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_TM_JPG_1, _const.END_DIALOG, -1, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_TM_JPG_2, _const.CHANGE_NPC, _id.C4_MountainTop_NPC_Dot, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_TM_JPG_3, _const.CHANGE_DIALOG, -1, 20)
  elseif L0_0 == 20 then
    function L1_1()
      _util.SetVar("islandSinking", 1)
      _util.StartCutscene(_const.ISLANDSINK1)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ActivateNpc(_id.C4_MountainTop_NPC_Rookie, 3)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_TM_JPG_4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C4_TM_JPG_4A, _const.CHANGE_DIALOG, -1, 4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C4_TM_JPG_4B, _const.CHANGE_DIALOG, -1, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_TM_JPG5, _const.END_DIALOG, -1, 4)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG then
  if L0_0 == 4 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.ChangeBaseAnim
      L1_3 = "NPC/M1/JetPackGuy/jpg_Blast"
      L0_2(L1_3)
      L0_2 = 616
      L1_3 = -5
      L2_4 = 40
      _util.MoveObject(_util.GetSelf(), L0_2, L1_3, L2_4, 1)
      repeat
        scriptWait()
      until _util.GetX(_util.GetSelf()) == L0_2 and _util.GetY(_util.GetSelf()) == L1_3
      repeat
        scriptWait()
      until 0 + 1 >= 60
      _util.PlaySFX(172)
      _util.ScreenShake(60)
      _util.ChangeBaseAnim("NPC/M4/Dot/DotShake", _id.C4_MountainTop_NPC_Dot)
      _util.ChangeBaseAnim("NPC/M4/Rookie/RookieShake", _id.C4_MountainTop_NPC_Rookie)
      repeat
        scriptWait()
      until 0 + 1 >= 90
      _util.EnableInput(true)
      _util.ActivateNpc(_id.C4_MountainTop_NPC_Dot, 3)
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L1_1)
  end
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("c4IntroProgression")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetupComNpc
    L1_1(_const.COM_DIRECTOR, _id.C4_CommandRoom_NPC_Director, 0)
    L1_1 = _util
    L1_1 = L1_1.LaunchCommunicator
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("c4IntroProgression", 1)
  end
end
