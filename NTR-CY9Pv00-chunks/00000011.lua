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
    L1_1(_text.C3_TM_ROOKIE_9, _const.CHANGE_DIALOG, -1, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C3_MountainTop2_JPG, 1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_ROOKIE_10)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_TM_ROOKIE_10A, _const.CHANGE_DIALOG, -1, 3)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C3_TM_ROOKIE_10B, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    function L1_1()
      _util.PlaySFX(172)
      _util.ScreenShake(60)
      _util.ChangeBaseAnim("NPC/M4/Dot/DotShake", _id.C3_MountainTop_Dot)
      _util.ChangeBaseAnim("NPC/M4/JPG/jpgShake", _id.C3_MountainTop_JPG)
      _util.ChangeBaseAnim("NPC/M4/Rookie/RookieShake", _id.C3_MountainTop_Rookie)
      count = 0
      repeat
        count = count + 1
        scriptWait()
      until count >= 90
      _util.ChangeBaseAnim("NPC/M3/Dot/Dot", _id.C3_MountainTop_Dot)
      _util.ChangeBaseAnim("NPC/M3/JPG/jpgMtn", _id.C3_MountainTop_JPG)
      _util.ChangeBaseAnim("NPC/M3/Rookie/RookieMtn", _id.C3_MountainTop_Rookie)
      _util.ActivateNpc(_id.C3_MountainTop_Dot, 3)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_ROOKIE_11, _const.CHANGE_DIALOG, -1, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.TriggerDGamerUnlockable
    L1_1(_const.DG_UNLOCKABLE_PENGUIN_FEET)
    L1_1 = _util
    L1_1 = L1_1.TriggerDGamerUnlockable
    L1_1(_const.DG_UNLOCKABLE_WHITE_PUFFLE_PLUSHIE)
    L1_1 = _util
    L1_1 = L1_1.TriggerDGamerHonor
    L1_1(_const.DG_HONOR_RESCUER)
    L1_1 = _util
    L1_1 = L1_1.EndMission
    L1_1()
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C3_TM_ROOKIE_9, _const.END_DIALOG, -1, 50)
  end
end
