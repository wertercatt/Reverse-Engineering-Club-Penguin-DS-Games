local L0_0
L0_0 = _util
L0_0 = L0_0.GetVar
L0_0 = L0_0("gameInitialized")
if L0_0 == 0 then
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("hor1Location", 3)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("hor2Location", 3)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("vert1Location", 3)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("vert2Location", 3)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("vert3Location", 3)
  L0_0 = _util
  L0_0 = L0_0.SetVar
  L0_0("gameInitialized", 1)
end
L0_0 = _util
L0_0 = L0_0.GetVar
L0_0 = L0_0("M9_canFixMine")
if L0_0 < 2 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L0_0 = L0_0("showedTut")
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.SetVar
    L0_0("showedTut", 1)
    function L0_0()
      _util.DisableInput()
      repeat
        scriptWait()
      until 0 + 1 > 40
      _util.EnableInput(true)
      _util.StartCutscene(_const.TROUGH_TUT)
    end
    scriptPlay(L0_0)
  end
end
L0_0 = _util
L0_0 = L0_0.DisablePuffleWhistle
L0_0()
L0_0 = _util
L0_0 = L0_0.SetPuffle
L0_0(_id.Inventory_NoPuffle)
L0_0 = _util
L0_0 = L0_0.HideMap
L0_0()
