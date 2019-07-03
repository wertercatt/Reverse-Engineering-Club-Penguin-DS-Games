local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  if L0_0 == 100 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2904, _const.CHANGE_NPC, _id.M5C1_Dot_Stage, 1)
  elseif L0_0 == 1 then
    function L1_1()
      _util.DisableInput()
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ScreenShake(60)
      _util.PlaySFX(114)
      repeat
        scriptWait()
      until 0 + 1 >= 90
      _util.EnableInput()
      _util.ActivateNpc(_id.M5C1_Rookie_StageCrash, 2)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FP_ITEM_SETUP", 0)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2909, _const.START_MISSION, 51)
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(2917, 2919, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(2920, _const.END_DIALOG, 0)
  end
end
