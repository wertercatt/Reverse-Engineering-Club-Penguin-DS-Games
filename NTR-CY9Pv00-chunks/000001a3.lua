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
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_DOT_9, _const.CHANGE_NPC, _id.C3_MountainTop2_JPG, 0)
  elseif L0_0 == 1 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = 475
      L1_3 = 0
      L2_4 = 75
      _util.MoveObject(_id.C3_MountainTop_Herbert, L0_2, L1_3, L2_4, 1)
      repeat
        scriptWait()
      until _util.GetY(_id.C3_MountainTop_Herbert) == L1_3
      _util.ChangeBaseAnim("NPC/M3/Dot/Dot", _id.C3_MountainTop2_Dot)
      _util.ChangeBaseAnim("NPC/M3/JPG/jpgMtn", _id.C3_MountainTop2_JPG)
      _util.ChangeBaseAnim("NPC/M3/Rookie/RookieMtn", _id.C3_MountainTop2_Rookie)
      _util.EnableInput(true)
      _util.DelItem(_id.C3_MountainTop_Herbert)
      _util.RestoreSongFromHerbert()
      _util.AddNPCText(_text.C3_TM_DOT_10, _const.CHANGE_NPC, _id.C3_MountainTop2_Rookie, 0)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("NPC/M1/Dot/DotCave", _id.C3_MountainTop_Dot)
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L1_1("NPC/M3/Rookie/Rookie", _id.C3_MountainTop_Rookie)
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_DOT_11, _const.CHANGE_NPC, _id.C3_MountainTop_JPG, 2)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_DOT_12, _const.CHANGE_NPC, _id.C3_MountainTop_JPG, 3)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_DOT_10, _const.END_DIALOG, -1, 50)
  end
end
