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
    L1_1 = L1_1("SM01_Gift2")
    if L1_1 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4064, _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(4054, 4055, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4056, 4057, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4058, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4059, _const.END_DIALOG, 3)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4063, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.FPM11_TV
  if L0_0 == L1_1 then
    function L1_1()
      _util.RemoveInventoryItem(_id.FPM11_TV)
      _util.DisplayPopUp(493, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.IncVar("FPM11_GiftsCompleted")
      _util.SetVar("SM01_Gift2", 2)
      _util.AddConversation(4061, 4062, -1, _const.CHANGE_DIALOG, 10)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("SM01_Gift2")
    if L1_1 ~= 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4060, _const.END_DIALOG, 3)
    end
  end
end
