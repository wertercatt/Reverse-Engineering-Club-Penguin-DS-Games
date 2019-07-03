if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C2_introDirector") == 0 then
    _util.ActivateNpc(_id.M1C2_Director_CR, 0)
  elseif _util.GetVar("M1C2_introDirector") == 1 then
    if _util.GetVar("M1C2_secondPiece") == 0 then
      if _util.GetConversationCount() == 0 then
        if _util.GetSelf() == _id.M1C2_FakeSpyPodHalf1 then
          _util.AddInventoryItem(_id.M1C2_SpyPodHalf1)
          _util.DelItem(_util.GetSelf())
        elseif _util.GetSelf() == _id.M1C2_FakeSpyPodHalf2 then
          _util.AddInventoryItem(_id.M1C2_SpyPodHalf2)
          _util.DelItem(_util.GetSelf())
        end
        _util.SetVar("M1C2_secondPiece", 1)
        _util.SetConversationCount(0)
      end
    elseif _util.GetVar("M1C2_secondPiece") == 1 and _util.GetConversationCount() == 0 then
      if _util.GetSelf() == _id.M1C2_FakeSpyPodHalf1 then
        _util.AddInventoryItem(_id.M1C2_SpyPodHalf1)
        _util.DelItem(_util.GetSelf())
      elseif _util.GetSelf() == _id.M1C2_FakeSpyPodHalf2 then
        _util.AddInventoryItem(_id.M1C2_SpyPodHalf2)
        _util.DelItem(_util.GetSelf())
      end
      _util.SetConversationCount(0)
    end
  end
end
