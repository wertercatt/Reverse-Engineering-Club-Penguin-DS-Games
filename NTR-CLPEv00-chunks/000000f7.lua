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
    L1_1 = L1_1("FPMission_Started")
    if L1_1 ~= 0 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(4510, _const.END_DIALOG, 0)
    end
  elseif L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4511, 4512, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4513, 4514, -1, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(4515)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4516, -1, _const.CHANGE_DIALOG, 4)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4517, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4518, _const.END_DIALOG, 0)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPMission_Started", 14)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM12_CoconutsGiven", 0)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM12_CoconutsTaken", 0)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM14_PalmTree_Beach)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM14_PalmTree_Town)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM14_PalmTree_Forest)
    L1_1 = _util
    L1_1 = L1_1.AddItem
    L1_1(_id.FPM14_PalmTree_SkiHill)
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_util.GetSelf(), 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4521, 4522, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4523, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4524, 4525, -1, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4526, _const.END_DIALOG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.AddLoopingConv
    L1_1(4527)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4528, 4531, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4529, 4532, _const.UPDATE_LOOP)
    L1_1 = _util
    L1_1 = L1_1.AddLoopingOption
    L1_1(4530, -1, _const.CHANGE_DIALOG, 10)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4533, _const.END_DIALOG, 9)
  elseif L0_0 == 50 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4538, 4539, -1, _const.CHANGE_DIALOG, 51)
  elseif L0_0 == 51 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4540, _const.CHANGE_DIALOG, 52)
  elseif L0_0 == 52 then
    function L1_1()
      _util.AddCoins(50)
      _util.DisplayPopUp(627, "UI/coin", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.ActivateNpc(_util.GetSelf(), 53)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 53 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4542, 4543, -1, _const.CHANGE_DIALOG, 56)
  elseif L0_0 == 54 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(4544, 4545, -1, _const.CHANGE_DIALOG, 55)
  elseif L0_0 == 55 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4546, _const.CHANGE_DIALOG, 56)
  elseif L0_0 == 56 then
    function L1_1()
      _util.SetVar("SNM02_missionComplete", 1)
      _util.SetVar("FPMission_Started", 0)
      _util.DelItem(_id.FPM14_EmptyPalmTree_Beach)
      _util.DelItem(_id.FPM14_EmptyPalmTree_Town)
      _util.DelItem(_id.FPM14_EmptyPalmTree_Forest)
      _util.DelItem(_id.FPM14_EmptyPalmTree_SkiHill)
      _util.SetConversationCount(0)
      _util.PopCamera()
    end
    scriptPlay(L1_1)
  elseif L0_0 == 57 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(4548, _const.END_DIALOG, 57)
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
  L1_1 = L1_1.Inventory_Coconut_Beach
  if L0_0 ~= L1_1 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_Coconut_Town
    if L0_0 ~= L1_1 then
      L1_1 = _id
      L1_1 = L1_1.Inventory_Coconut_Forest
      if L0_0 ~= L1_1 then
        L1_1 = _id
        L1_1 = L1_1.Inventory_Coconut_SkiHill
      end
    end
  elseif L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM12_CoconutsGiven")
    if L1_1 == 0 then
      function L1_1()
        _util.IncVar("FPM12_CoconutsGiven")
        _util.RemoveInventoryItem(_UPVALUE0_)
        _util.AddDialog(4534, _const.END_DIALOG, 9)
      end
      scriptPlay(L1_1)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM12_CoconutsGiven")
      if L1_1 == 1 then
        function L1_1()
          _util.IncVar("FPM12_CoconutsGiven")
          _util.RemoveInventoryItem(_UPVALUE0_)
          _util.AddDialog(4535, _const.END_DIALOG, 9)
        end
        scriptPlay(L1_1)
      else
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("FPM12_CoconutsGiven")
        if L1_1 == 2 then
          function L1_1()
            _util.IncVar("FPM12_CoconutsGiven")
            _util.RemoveInventoryItem(_UPVALUE0_)
            _util.AddDialog(4536, _const.END_DIALOG, 9)
          end
          scriptPlay(L1_1)
        else
          L1_1 = _util
          L1_1 = L1_1.GetVar
          L1_1 = L1_1("FPM12_CoconutsGiven")
          if L1_1 == 3 then
            function L1_1()
              _util.DisplayPopUp(626, "UI/Smilie", false)
              repeat
                scriptWait()
              until _util.IsPopUpVisible() == false
              _util.AddSmileys(20, _util.GetX(_util.GetSelf()), _util.GetX(_util.GetSelf()))
              _util.RemoveInventoryItem(_UPVALUE0_)
              _util.AddDialog(4537, _const.CHANGE_DIALOG, 50)
            end
            scriptPlay(L1_1)
          end
        end
      end
    end
  end
end
