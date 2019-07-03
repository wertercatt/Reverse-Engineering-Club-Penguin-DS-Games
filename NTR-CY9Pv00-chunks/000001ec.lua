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
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
function L0_0()
  if _util.GetVar("DotTasked") == 0 then
    _util.AddPlayerOption(_text.C4_MS_DOT_2B, _const.CHANGE_DIALOG, -1, 2)
  end
  if _util.GetVar("RookieTasked") == 0 then
    _util.AddPlayerOption(_text.C4_MS_DOT_2A, _const.CHANGE_NPC, _id.C4_MineShack_NPC_Rookie, 1)
  end
end
L1_1 = _util
L1_1 = L1_1.GetConversationCount
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.TOUCHED then
  if L1_1 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_MS_DOT_1)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C4_MS_DOT_1A, _const.END_DIALOG, -1, 0)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("CallG")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("CallG", 1)
    end
  elseif L1_1 == 1 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_MS_DOT_2)
    L2_2 = L0_0
    L2_2()
  elseif L1_1 == 2 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("DotTasked", 1)
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_MS_DOT_3, _const.CHANGE_DIALOG, -1, 3)
  elseif L1_1 == 3 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("DotGoesToPlaza", 1)
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_MS_DOT_4)
    L2_2 = _util
    L2_2 = L2_2.AddPlayerOption
    L2_2(_text.C4_MS_DOT_4A, _const.CHANGE_DIALOG, -1, 4)
  elseif L1_1 == 4 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("RookieTasked")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.AddNPCText
      L2_2(_text.C4_MS_DOT_5)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("RookieTasked")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.AddNPCText
        L2_2(_text.C4_MS_DOT_5, _const.END_DIALOG, -1, 5)
        L2_2 = L0_0
        L2_2()
      end
    end
  elseif L1_1 == 5 then
    L2_2 = _util
    L2_2 = L2_2.AddNPCText
    L2_2(_text.C4_MS_DOT_4, _const.END_DIALOG, -1, 5)
  end
end
L2_2 = _util
L2_2 = L2_2.GetReason
L2_2 = L2_2()
if L2_2 == _const.AFTER_DIALOG then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("DotTasked")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("RookieTasked")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("c4IntroProgression")
      if L2_2 == 9 then
        function L2_2()
          _util.DisableInput()
          _util.AddItem(_id.C4_MineShack_NPC_Dot2)
          _util.SwitchState("", _id.C4_MineShack_NPC_Dot2)
          _util.AddItem(_id.C4_MineShack_NPC_DotEffect)
          _util.SwitchState("", _id.C4_MineShack_NPC_DotEffect)
          repeat
            scriptWait()
          until 0 + 1 > 7
          _util.DelItem(_id.C4_MineShack_NPC_Dot)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.C4_MineShack_NPC_Dot2) and not _util.IsAnimPlaying(_id.C4_MineShack_NPC_DotEffect)
          _util.SetVar("c4IntroProgression", 10)
          _util.DelItem(_id.C4_MineShack_NPC_Dot2)
          _util.DelItem(_id.C4_MineShack_NPC_DotEffect)
          _util.SetSpawn(1, _id.C4_IceBerg_Gary)
          _util.SetSpawn(1, _id.C4_Plaza_Dot)
          _util.ShowMap()
          _util.EnableInput(true)
          if _util.GetVar("C4_SkiJPGFound") == 0 then
            _util.ClearCom()
            _util.SetupComNpc(_const.COM_JPG, _id.C4_SkiVillage_JPG, 0)
            _util.LaunchCommunicator()
          end
        end
        scriptPlay(L2_2)
      end
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("CallG")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("CallG", 2)
    function L2_2()
      local L0_3
      L0_3 = 1800
      repeat
        L0_3 = L0_3 - 1
        scriptWait()
      until L0_3 <= 0 and _util.GetGameState() == _const.MISSION
      if _util.GetVar("CallG") < 3 then
        _util.ClearCom()
        _util.SetupComNpc(_const.COM_GARY, _id.C4_CommandRoom_NPC_Gary, 20)
        _util.LaunchCommunicator()
      end
    end
    scriptPlay(L2_2)
  end
end
