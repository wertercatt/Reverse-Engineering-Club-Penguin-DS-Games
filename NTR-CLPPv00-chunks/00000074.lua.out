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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
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
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("SM01_Gift4")
    if L1_1 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4053, _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(4043, 4044, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4045, 4046, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4047, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4048, _const.END_DIALOG, 3)
  elseif L0_0 == 9 then
    function L1_1()
      _util.DisplayPopUp(488, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(5, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.AddConversation(4050, 4051, -1, _const.CHANGE_DIALOG, 10)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4052, _const.END_DIALOG, 0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.FPM11_SnowBoard
  if L0_0 == L1_1 then
    function L1_1()
      _util.IncVar("FPM11_GiftsCompleted")
      _util.SetVar("SM01_Gift4", 2)
      _util.RemoveInventoryItem(_id.FPM11_SnowBoard)
      _util.AddItem(_id.FPM11_BlazerXHappy)
      _util.ActivateNpc(_id.FPM11_BlazerXHappy, 9)
      _util.DelItem(_id.FPM11_BlazerX)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("SM01_Gift4")
    if L1_1 ~= 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4049, _const.END_DIALOG, 3)
    end
  end
end
