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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
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
    L1_1 = L1_1.PlaySFX
    L2_2 = 224
    L1_1(L2_2)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L2_2 = _text
    L2_2 = L2_2.C2_A_KLU_1A
    L1_1(L2_2, _const.CHANGE_DIALOG, -1, 100)
  elseif L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C4_SKIVILLAGE_KLUTZY
    L1_1(L2_2, _const.END_DIALOG, -1, 0)
  elseif L0_0 == 1 then
    function L1_1()
      local L0_3
      L0_3 = 1
      _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzyCut1", _id.C4_SkiVillage_Klutzy)
      repeat
        scriptWait()
        L0_3 = L0_3 + 1
        if L0_3 == 40 then
          _util.PlaySFX(224)
          _util.ChangeBaseAnim("MissionObjects/M4/beltBreak", _id.C4_SkiBelt)
        end
      until not _util.IsAnimPlaying(_id.C4_SkiVillage_Klutzy) and not _util.IsAnimPlaying(_id.C4_SkiBelt)
      _util.ChangeBaseAnim("MissionObjects/M4/beltBroken", _id.C4_SkiBelt)
      _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzySki", _id.C4_SkiVillage_Klutzy)
      _util.SetVar("C4_KlutzyHelp", 1)
      _util.SetVar("C2_BeltBroken", 1)
      _util.SetConversationCount(2)
      _util.EnableInput(true)
    end
    L2_2 = scriptPlay
    L2_2(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "C4_KlutzyHelp"
    L1_1 = L1_1(L2_2)
    if L1_1 < 3 and L0_0 == 2 then
      L1_1 = _util
      L1_1 = L1_1.PlaySFX
      L2_2 = 224
      L1_1(L2_2)
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L2_2 = _text
      L2_2 = L2_2.C2_A_KLU_1A
      L1_1(L2_2, _const.CHANGE_DIALOG, -1, 200)
    elseif L0_0 == 200 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L2_2 = _text
      L2_2 = L2_2.C4_SKIVILLAGE_KLUTZY
      L1_1(L2_2, _const.END_DIALOG, -1, 2)
    end
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
  L2_2 = L2_2.Inventory_PuffleRed
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("C4_KlutzyHelp")
    if L2_2 == 2 then
      L2_2 = _util
      L2_2 = L2_2.DisableInput
      L2_2()
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_id.C4_SkiVillage_Klutzy, true)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PufflePurple
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("C4_KlutzyHelp")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.DisableInput
        L2_2()
        L2_2 = _util
        L2_2 = L2_2.SetSuccess
        L2_2(_id.C4_SkiVillage_Klutzy, true)
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PufflePurple
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("C4_KlutzyHelp")
    if L2_2 == 1 then
      function L2_2()
        local L0_4, L1_5, L2_6, L3_7
        L0_4 = _util
        L0_4 = L0_4.PushCamera
        L0_4()
        L0_4 = _util
        L0_4 = L0_4.SetVar
        L1_5 = "C4_KlutzyHelp"
        L2_6 = 2
        L0_4(L1_5, L2_6)
        L0_4 = _util
        L0_4 = L0_4.ChangeBaseAnim
        L1_5 = "NPC/M4/Klutzy/KlutzyBubble"
        L2_6 = _id
        L2_6 = L2_6.C4_SkiVillage_Klutzy
        L0_4(L1_5, L2_6)
        L0_4 = 0
        repeat
          L1_5 = scriptWait
          L1_5()
          L0_4 = L0_4 + 1
          L1_5 = _util
          L1_5 = L1_5.DisableInput
          L1_5()
        until L0_4 > 40
        L1_5 = _util
        L1_5 = L1_5.GetX
        L2_6 = _id
        L2_6 = L2_6.C4_SkiVillage_Klutzy
        L1_5 = L1_5(L2_6)
        L1_5 = L1_5 - 26
        L2_6 = _util
        L2_6 = L2_6.GetY
        L3_7 = _id
        L3_7 = L3_7.C4_SkiVillage_Klutzy
        L2_6 = L2_6(L3_7)
        L2_6 = L2_6 - 111
        L3_7 = 100
        _util.MoveObject(_id.C4_SkiVillage_Klutzy, _util.GetX(_id.C4_SkiVillage_Klutzy) - 26, _util.GetY(_id.C4_SkiVillage_Klutzy) - 111, L3_7, 1)
        repeat
          scriptWait()
        until L1_5 >= _util.GetX(_id.C4_SkiVillage_Klutzy) and L2_6 >= _util.GetY(_id.C4_SkiVillage_Klutzy)
        _util.PopCamera()
        _util.EnableInput(true)
      end
      scriptPlay(L2_2)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleRed
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("C4_KlutzyHelp")
      if L2_2 == 2 then
        function L2_2()
          _util.DisableInput()
          _util.PushCamera()
          _util.SetVar("C4_KlutzyHelp", 3)
          _util.SetVar("freeHerbert", 1)
          _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzyFrozen", _id.C4_SkiVillage_Klutzy, "pop")
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.C4_SkiVillage_Klutzy)
          repeat
            scriptWait()
            _util.DisableInput()
          until 0 + 1 > 40
          _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzyCut2", _id.C4_SkiVillage_Klutzy)
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.C4_SkiVillage_Klutzy)
          _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzyFall", _id.C4_SkiVillage_Klutzy)
          _util.ChangeBaseAnim("NPC/M4/Herbert/HerbFall", _id.C4_SkiVillage_HerbTrapped)
          _util.ChangeBaseAnim("MissionObjects/M4/cables", _id.C4_CablesStuck, "snap")
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_id.C4_SkiVillage_HerbTrapped)
          _util.ChangeBaseAnim("NPC/M4/Herbert/HerbRefuse", _id.C4_SkiVillage_HerbTrapped)
          _util.ChangeBaseAnim("MissionObjects/M4/cablesCut", _id.C4_CablesStuck)
          _util.ChangeBaseAnim("NPC/M4/Klutzy/KlutzySki", _id.C4_SkiVillage_Klutzy)
          _util.SetY(141, _id.C4_SkiVillage_Klutzy)
          _util.SetSpawn(1, _id.C4_SkiVillage_HerbTrapped)
          _util.PopCamera()
          if 1 >= _util.GetVar("C4_SkiVillage_JPG_Had_Conv_Part") then
            _util.ActivateNpc(_id.C4_SkiVillage_JPG, 40)
          else
            _util.ActivateNpc(_id.C4_SkiVillage_JPG, 10)
          end
          _util.EnableInput(true)
        end
        scriptPlay(L2_2)
      end
    end
  end
end
