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
  if L2_2 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_GREET
    L3_3(L4_4)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L4_4 = _text
    L4_4 = L4_4.M11_LH_A_1
    L3_3(L4_4, _const.CHANGE_DIALOG, -1, 1)
  elseif L2_2 == 1 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_1
    L3_3(L4_4, _const.CHANGE_DIALOG, -1, 2)
  elseif L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_2
    L3_3(L4_4, _const.CHANGE_DIALOG, -1, 3)
  elseif L2_2 == 3 then
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L4_4 = "FixGuitar"
    L3_3(L4_4, 1)
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_3
    L3_3(L4_4, _const.END_DIALOG, -1, 3)
  elseif L2_2 == 4 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_4
    L3_3(L4_4)
    L3_3 = _util
    L3_3 = L3_3.AddPlayerOption
    L4_4 = _text
    L4_4 = L4_4.M11_LH_A_4
    L3_3(L4_4, _const.CHANGE_DIALOG, -1, 5)
  elseif L2_2 == 5 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_4_2
    L3_3(L4_4, _const.END_DIALOG, -1, 6)
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L4_4 = "GrabDVDs"
    L3_3(L4_4, 1)
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "AskForMoreDVDs"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L4_4 = _text
      L4_4 = L4_4.M11_LH_GP_5
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L4_4 = _text
      L4_4 = L4_4.M11_LH_A_5A
      L3_3(L4_4, _const.CHANGE_DIALOG, -1, 7)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L4_4 = _text
      L4_4 = L4_4.M11_LH_A_5B
      L3_3(L4_4, _const.CHANGE_DIALOG, -1, 8)
    end
  elseif L2_2 == 6 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "AskForMoreDVDs"
    L3_3 = L3_3(L4_4)
    if L3_3 == 0 then
      L3_3 = _util
      L3_3 = L3_3.AddNPCText
      L4_4 = _text
      L4_4 = L4_4.M11_LH_GP_5
      L3_3(L4_4)
      L3_3 = _util
      L3_3 = L3_3.AddPlayerOption
      L4_4 = _text
      L4_4 = L4_4.M11_LH_A_5B
      L3_3(L4_4, _const.CHANGE_DIALOG, -1, 8)
    end
  elseif L2_2 == 7 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_5A
    L3_3(L4_4, _const.END_DIALOG, -1, 6)
  elseif L2_2 == 8 then
    L3_3 = _util
    L3_3 = L3_3.AddNPCText
    L4_4 = _text
    L4_4 = L4_4.M11_LH_GP_5B
    L3_3(L4_4, _const.END_DIALOG, -1, 6)
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
  L4_4 = L4_4.Inventory_WrenchTool
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("FixGuitar")
    if L4_4 == 1 then
      function L4_4()
        _util.DisableInput()
        _util.SetVar("FixGuitar", 2)
        _util.ChangeBaseAnim("NPC/M11/GuitarNPC/GPBroken", _id.M11_LH_Music_NPC, "fix")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M11_LH_Music_NPC)
        _util.ChangeBaseAnim("NPC/M11/GuitarNPC/GP", _id.M11_LH_Music_NPC)
        _util.EnableInput(true)
        _util.ActivateNpc(_id.M11_LH_Music_NPC, 4)
      end
      scriptPlay(L4_4)
    end
  end
end
