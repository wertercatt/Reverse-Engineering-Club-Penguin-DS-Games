local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  function L3_3()
    local L0_4, L1_5
    L0_4 = _util
    L0_4 = L0_4.GetX
    L0_4 = L0_4()
    L1_5 = _util
    L1_5 = L1_5.GetY
    L1_5 = L1_5()
    _util.DelItem(_util.GetSelf())
    _util.SetPuffle(_id.Inventory_PuffleWhite)
    _util.SetPuffleX(360)
    _util.EnablePuffle(_id.Enable_PuffleWhite)
    movePuffle(L0_4, L1_5, _util.GetPuffleX(), _util.GetPuffleY(), 30, true, 75)
  end
  scriptPlay(L3_3)
end
