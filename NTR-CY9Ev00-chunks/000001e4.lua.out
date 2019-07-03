local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
function L0_0(A0_6)
  _util.AddPlayerOption(_text.C2_A_KLU_1A, _const.CHANGE_DIALOG, A0_6)
  if _util.GetVar("c2_dialogue1_wrongOption1") == 0 then
    _util.AddPlayerOption(_text.C2_A_KLU_1B, _const.CHANGE_DIALOG, 101)
  end
  if _util.GetVar("c2_dialogue1_wrongOption2") == 0 then
    _util.AddPlayerOption(_text.C2_A_KLU_1C, _const.CHANGE_DIALOG, 102)
  end
end
function L1_1(A0_7, A1_8)
  if A1_8 == nil or A1_8 == false then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRFaceLeft", _id.C2_HBStorage_Herbet)
    _util.AddNPCText(_text.C2_HERB_1_CORRECT)
  end
  if _util.GetVar("c2_dialogue2_wrongOption1") == 0 then
    _util.AddPlayerOption(_text.C2_A_KLU_2A, _const.CHANGE_DIALOG, 201)
  end
  if _util.GetVar("c2_dialogue2_wrongOption2") == 0 then
    _util.AddPlayerOption(_text.C2_A_KLU_2B, _const.CHANGE_DIALOG, 202)
  end
  _util.AddPlayerOption(_text.C2_A_KLU_2C, _const.CHANGE_DIALOG, A0_7)
end
function L2_2(A0_9, A1_10)
  if A1_10 == nil or A1_10 == false then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRFaceLeft", _id.C2_HBStorage_Herbet)
    _util.AddNPCText(_text.C2_HERB_2_CORRECT)
  end
  _util.AddPlayerOption(_text.C2_A_KLU_3A, _const.CHANGE_DIALOG, A0_9)
  if _util.GetVar("c2_dialogue3_wrongOption1") == 0 then
    _util.AddPlayerOption(_text.C2_A_KLU_3B, _const.CHANGE_DIALOG, 301)
  end
  if _util.GetVar("c2_dialogue3_wrongOption2") == 0 then
    _util.AddPlayerOption(_text.C2_A_KLU_3C, _const.CHANGE_DIALOG, 302)
  end
end
function L3_3(A0_11)
  local L1_12, L2_13
  L1_12 = _util
  L1_12 = L1_12.GetVar
  L2_13 = "C2_incorrectRepliesToHerb"
  L1_12 = L1_12(L2_13)
  L2_13 = 0
  if L1_12 == 0 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbMono4", _id.C2_HBStorage_Herbet)
    L2_13 = _text.C2_HERB_1_INC_A
  elseif L1_12 == 1 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRPoint", _id.C2_HBStorage_Herbet, "talk")
    L2_13 = _text.C2_HERB_1_INC_B
  elseif L1_12 == 2 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbMono4", _id.C2_HBStorage_Herbet)
    L2_13 = _text.C2_HERB_1_INC_C
  elseif L1_12 == 3 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRPoint", _id.C2_HBStorage_Herbet, "talk")
    L2_13 = _text.C2_HERB_2_INC_A
  elseif L1_12 == 4 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbMono4", _id.C2_HBStorage_Herbet)
    L2_13 = _text.C2_HERB_2_INC_B
  elseif L1_12 == 5 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRPoint", _id.C2_HBStorage_Herbet, "talk")
    L2_13 = _text.C2_HERB_2_INC_C
  elseif L1_12 == 6 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRPoint", _id.C2_HBStorage_Herbet, "talk")
    L2_13 = _text.C2_HERB_3_INC_A
  elseif L1_12 == 7 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbMono4", _id.C2_HBStorage_Herbet)
    L2_13 = _text.C2_HERB_3_INC_B
  elseif L1_12 == 8 then
    _util.ChangeBaseAnim("NPC/M2/Herbert/HerbMono4", _id.C2_HBStorage_Herbet)
    L2_13 = _text.C2_HERB_3_INC_C
  end
  _util.AddNPCText(L2_13, _const.CHANGE_DIALOG, A0_11)
  L1_12 = (L1_12 + 1) % 9
  _util.SetVar("C2_incorrectRepliesToHerb", L1_12)
end
L4_4 = _util
L4_4 = L4_4.GetConversationCount
L4_4 = L4_4()
L5_5 = _util
L5_5 = L5_5.GetReason
L5_5 = L5_5()
if L5_5 == _const.TOUCHED then
  if L4_4 == -1 then
    L5_5 = _util
    L5_5 = L5_5.AddNPCText
    L5_5(_text.C2_HERB_1, _const.CHANGE_DIALOG, 0)
  elseif L4_4 == 0 then
    L5_5 = L0_0
    L5_5(3)
  elseif L4_4 == 2 then
    L5_5 = L1_1
    L5_5(200, true)
  elseif L4_4 == 3 then
    L5_5 = L1_1
    L5_5(6)
  elseif L4_4 == 5 then
    L5_5 = L2_2
    L5_5(300, true)
  elseif L4_4 == 6 then
    L5_5 = L2_2
    L5_5(10)
  elseif L4_4 == 7 then
    L5_5 = L3_3
    L5_5(8)
  elseif L4_4 == 8 then
    L5_5 = _util
    L5_5 = L5_5.AddNPCText
    L5_5(_text.C2_HERB_4_LOOP, _const.CHANGE_DIALOG, 9)
  elseif L4_4 == 9 then
    L5_5 = _util
    L5_5 = L5_5.AddNPCText
    L5_5(_text.C2_HERB_5_LOOP, _const.CHANGE_DIALOG, 0)
  elseif L4_4 == 10 then
    L5_5 = _util
    L5_5 = L5_5.SetVar
    L5_5("c2_confrontedHerbert", 1)
    L5_5 = _util
    L5_5 = L5_5.MarkObjComplete
    L5_5(_text.C2_OBJ6)
    L5_5 = _util
    L5_5 = L5_5.AddObjective
    L5_5(_text.C2_OBJ7)
    L5_5 = _util
    L5_5 = L5_5.AddSubObjective
    L5_5(_text.C2_OBJ7, _text.C2_7SUBOBJ1)
    L5_5 = _util
    L5_5 = L5_5.AddNPCText
    L5_5(_text.C2_HERB_3_CORRECT, _const.CHANGE_DIALOG, 501)
  elseif L4_4 == 501 then
    L5_5 = _util
    L5_5 = L5_5.ChangeBaseAnim
    L5_5("NPC/M2/Herbert/HerbLeave", _id.C2_HBStorage_Herbet)
    L5_5 = _util
    L5_5 = L5_5.PopCamera
    L5_5()
    L5_5 = _util
    L5_5 = L5_5.SetConversationCount
    L5_5(10, _id.C2_HBStorage_Herbet)
  elseif L4_4 == 13 then
    L5_5 = _util
    L5_5 = L5_5.AddNPCText
    L5_5(_text.C2_COMM_A_12, _const.CHANGE_DIALOG, 500)
  elseif L4_4 == 500 then
    function L5_5()
      _util.DisableInput()
      _util.ChangeBaseAnim("NPC/M2/Herbert/HerbBRMad", _id.C2_HBWorkshop_Herb, "hit")
      _util.ChangeBaseAnim("NPC/M2/Herbert/Button", _id.C2_Workshop_Button, "fall")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_HBWorkshop_Herb)
      _util.SetNextRoom(53)
      _util.StartCutscene(_const.LOCKDOWN)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.EnableInput(true)
    end
    scriptPlay(L5_5)
  elseif L4_4 >= 100 and L4_4 < 200 then
    if L4_4 == 101 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("c2_dialogue1_wrongOption1", 1)
    elseif L4_4 == 102 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("c2_dialogue1_wrongOption2", 1)
    end
    L5_5 = L3_3
    L5_5(2)
  elseif L4_4 >= 200 and L4_4 < 300 then
    if L4_4 == 201 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("c2_dialogue2_wrongOption1", 1)
    elseif L4_4 == 202 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("c2_dialogue2_wrongOption2", 1)
    end
    L5_5 = L3_3
    L5_5(5)
  elseif L4_4 >= 300 and L4_4 < 400 then
    if L4_4 == 301 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("c2_dialogue3_wrongOption1", 1)
    elseif L4_4 == 302 then
      L5_5 = _util
      L5_5 = L5_5.SetVar
      L5_5("c2_dialogue3_wrongOption2", 1)
    end
    L5_5 = L3_3
    L5_5(8)
  end
end
