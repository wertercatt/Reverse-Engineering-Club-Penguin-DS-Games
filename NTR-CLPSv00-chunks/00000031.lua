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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4324, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    function L1_1()
      local L0_2
      L0_2 = 100
      _util.DisableInput()
      _util.MoveObject(_id.M3C2_PH_Dojo, 270, _util.GetY(_id.M3C2_PH_Dojo), L0_2)
      _util.SwitchState("walk", _id.M3C2_PH_Dojo)
      _util.PopCamera()
      repeat
        scriptWait()
      until _util.GetX(_id.M3C2_PH_Dojo) == 270
      _util.DelItem(_id.M3C2_PH_Dojo)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  end
end
