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
    L1_1 = L1_1("SM01_Gift3")
    if L1_1 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4042, _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(4032, 4033, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4034, _const.END_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4035, _const.END_DIALOG, 2)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4039, 4040, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4041, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.FPM11_Guitar
  if L0_0 == L1_1 then
    function L1_1()
      _util.RemoveInventoryItem(_id.FPM11_Guitar)
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.IncVar("FPM11_GiftsCompleted")
      _util.SetVar("SM01_Gift3", 2)
      _util.AddConversation(4037, 4038, -1, _const.CHANGE_DIALOG, 10)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("SM01_Gift3")
    if L1_1 ~= 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4036, _const.END_DIALOG, 2)
    end
  end
end
