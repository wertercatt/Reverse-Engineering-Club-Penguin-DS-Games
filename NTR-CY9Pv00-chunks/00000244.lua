local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.COMBINE)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCH then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("GrabCam")
  if L0_0 == 1 then
    function L0_0()
      _util.DisableInput()
      _util.AddInventoryItem(_id.M9_SpyCamera)
      repeat
        scriptWait()
      until _util.IsPopUpVisible()
      _util.EnableInput()
      repeat
        scriptWait()
      until not _util.IsPopUpVisible()
      _util.DisableInput()
      repeat
        scriptWait()
      until 40 - 1 == 0
      _util.EnableInput()
    end
    scriptPlay(L0_0)
  end
end
