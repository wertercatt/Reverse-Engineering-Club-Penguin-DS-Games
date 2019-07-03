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
    L1_1 = L1_1("SM01_Gift1")
    if L1_1 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4325, _const.END_DIALOG, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(4313, 4314, -1, _const.CHANGE_DIALOG, 1)
    end
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4315, 4316, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4317, _const.END_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4318, _const.END_DIALOG, 3)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4322, 4323, -1, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4324, _const.END_DIALOG, 0)
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
  L1_1 = L1_1.FPM11_Pogo
  if L0_0 == L1_1 then
    function L1_1()
      _util.RemoveInventoryItem(_id.FPM11_Pogo)
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(5, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.IncVar("FPM11_GiftsCompleted")
      _util.SetVar("SM01_Gift1", 2)
      _util.AddConversation(4320, 4321, -1, _const.CHANGE_DIALOG, 10)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("SM01_Gift1")
    if L1_1 ~= 2 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4319, _const.END_DIALOG, 3)
    end
  end
end
