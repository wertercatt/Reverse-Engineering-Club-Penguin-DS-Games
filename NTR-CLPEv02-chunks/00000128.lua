function testMain()
  print()
  begin("Test Framework functionality")
  evaluate()
  test.basicTypes()
  test.localVariables()
  test.flowControl()
  test.operators()
  test.loadingBuffers()
  test.mathLibrary()
  test.tableLibrary()
  test.stringLibrary()
  print([[

Finished testMain()]])
end
test = {}
function begin(A0_0)
  assert(type(A0_0) == "string", "Invalid parameter type.")
  print("TESTING ", A0_0, "...")
end
function evaluate(A0_1)
  if A0_1 == nil then
    A0_1 = true
  end
  if A0_1 == true then
    print("Successful.\n")
  else
    print("Failed.\n")
  end
end
eval = evaluate
function test.basicTypes()
  begin("Basic Type Checking")
  myGlobalNumber = 0
  myGlobalString = ""
  myGlobalTable = {}
  myGlobalBoolean = false
  myGlobalNil = nil
  function myGlobalFunction()
    local L0_2, L1_3
  end
  numberTypeCorrect = type(myGlobalNumber) == "number"
  stringTypeCorrect = type(myGlobalString) == "string"
  tableTypeCorrect = type(myGlobalTable) == "table"
  booleanTypeCorrect = type(myGlobalBoolean) == "boolean"
  nilTypeCorrect = type(myGlobalNil) == "nil"
  functionTypeCorrect = type(myGlobalFunction) == "function"
  evaluate(numberTypeCorrect and stringTypeCorrect and tableTypeCorrect and booleanTypeCorrect and nilTypeCorrect and functionTypeCorrect)
  myGlobalNumber = nil
  myGlobalString = nil
  myGlobalTable = nil
  myGlobalBoolean = nil
  myGlobalNil = nil
  myGlobalFunction = nil
  numberTypeCorrect = nil
  stringTypeCorrect = nil
  tableTypeCorrect = nil
  booleanTypeCorrect = nil
  nilTypeCorrect = nil
  functionTypeCorrect = nil
end
function test.localVariables()
  local L0_4, L1_5, L2_6, L3_7
  L0_4 = begin
  L1_5 = "Local Scope Declarations"
  L0_4(L1_5)
  L0_4 = "a unique value"
  aVariable = L0_4
  L0_4 = "a different unique value"
  L1_5 = false
  L2_6 = "yet another unique value"
  L1_5 = L2_6 == "yet another unique value"
  L2_6 = L0_4 == "a different unique value"
  L3_7 = _G
  L3_7 = L3_7.aVariable
  L3_7 = L3_7 == "a unique value"
  evaluate(L1_5 and L2_6 and L3_7)
  L0_4 = nil
end
function test.flowControl()
  local L0_8, L1_9, L2_10, L3_11, L4_12, L5_13, L6_14, L7_15
  L0_8 = begin
  L1_9 = "Flow Control"
  L0_8(L1_9)
  L0_8 = false
  L1_9 = true
  if L1_9 then
    L0_8 = true
  end
  if not L1_9 then
    L0_8 = false
  else
    L0_8 = true
  end
  L2_10 = false
  if not L1_9 then
    L0_8 = false
  elseif not L2_10 then
    L0_8 = true
  else
    L0_8 = false
  end
  L3_11 = 0
  L4_12 = false
  while true do
    L3_11 = L3_11 + 1
    if L3_11 >= 10 then
      break
    end
    L5_13 = assert
    L6_14 = L3_11 < 100
    L5_13(L6_14)
  end
  if L3_11 == 10 then
    L4_12 = true
  end
  L5_13 = false
  L3_11 = 0
  for _FORV_9_ = 1, 15 do
    L3_11 = L3_11 + 1
  end
  if L3_11 == 15 then
    L5_13 = true
  end
  L7_15.someKey = 6
  L7_15.someOtherKey = 7
  L7_15.andSomeOtherKeyEnitrely = 8
  L3_11 = 0
  for _FORV_11_, _FORV_12_ in pairs(L7_15) do
    L3_11 = L3_11 + 1
  end
  evaluate(L0_8 and L4_12 and L5_13 and L6_14)
end
function test.operators()
  local L0_16, L1_17, L2_18, L3_19, L4_20, L5_21, L6_22, L7_23, L8_24, L9_25, L10_26, L11_27, L12_28, L13_29, L14_30, L15_31, L16_32, L17_33, L18_34, L19_35, L20_36, L21_37, L22_38, L23_39, L24_40, L25_41, L26_42
  L0_16 = begin
  L1_17 = "Operator Functionality"
  L0_16(L1_17)
  L0_16 = 2
  L1_17 = 3
  L2_18 = L0_16 + L1_17
  L2_18 = L2_18 == 5
  L3_19 = L0_16 - L1_17
  L3_19 = L3_19 == -1
  L4_20 = L0_16 * L1_17
  L4_20 = L4_20 == 6
  L5_21 = L0_16 / L1_17
  L5_21 = L5_21 == 0
  L6_22 = L0_16 % L1_17
  L6_22 = L6_22 == 2
  L7_23 = L0_16 ^ L1_17
  L7_23 = L7_23 == 8
  L8_24 = L2_18 and L3_19 and L4_20 and L5_21 and L6_22 and L7_23
  L9_25 = L0_16 ~= L1_17
  L10_26 = false
  L11_27 = L0_16 < L1_17
  L12_28 = L1_17 <= L1_17
  L13_29 = L0_16 < L1_17
  L14_30 = L0_16 <= L0_16
  L10_26 = L11_27 and L12_28 and L13_29 and L14_30
  L11_27 = false
  L12_28 = true
  L13_29 = true
  L11_27 = L12_28 and L13_29
  L12_28 = L9_25 and L10_26 and L11_27
  L13_29 = {
    L14_30,
    L15_31,
    L16_32,
    L17_33,
    L18_34,
    L19_35,
    L20_36
  }
  L14_30 = 1
  L15_31 = 2
  L16_32 = 3
  L17_33 = 4
  L18_34 = 5
  L19_35 = "six"
  L20_36 = "seven"
  L14_30 = #L13_29
  L14_30 = L14_30 == 7
  L15_31 = L0_16
  L16_32 = L1_17
  L17_33 = L16_32
  L16_32 = L15_31
  L15_31 = L17_33
  L17_33 = L15_31 == L1_17 and L16_32 == L0_16
  L18_34 = "Hello"
  L19_35 = "world"
  L20_36 = L18_34
  L21_37 = " "
  L22_38 = L19_35
  L23_39 = "!"
  L20_36 = L20_36 .. L21_37 .. L22_38 .. L23_39
  L21_37 = L20_36 == "Hello world!"
  L22_38 = false
  L23_39 = {}
  L23_39.value = 23
  function L24_40(A0_43)
    local L1_44
    L1_44 = A0_43.value
    L1_44 = L1_44 == 23
    _UPVALUE0_ = L1_44
  end
  L23_39.testMemberMethod = L24_40
  L25_41 = L23_39
  L24_40 = L23_39.testMemberMethod
  L24_40(L25_41)
  L24_40 = false
  function L25_41()
    _UPVALUE0_ = ... == 1 and ... == 3 and ... == 5 and ... == 7
  end
  L26_42 = L25_41
  L26_42(1, 3, 5, 7)
  L26_42 = L14_30 and L17_33 and L21_37 and L22_38 and L24_40
  evaluate(L8_24 and L12_28 and L26_42)
end
function test.loadingBuffers()
  local L0_45
  L0_45 = doscript
  L0_45("luatest_embeddingtest")
  L0_45 = eleventyHundred
  L0_45 = L0_45()
  L0_45 = L0_45 == 111
  evaluate(preLoadedBuffersWork and L0_45)
end
function test.mathLibrary()
  begin("Math Library functionality")
  print("Not Implemented")
end
function test.tableLibrary()
  begin("Table Library functionality")
  print("Not Implemented")
end
function test.stringLibrary()
  begin("String Library functionality")
  print("Not Implemented")
end
function test.loadingManyBuffers()
  local L0_46, L1_47, L2_48, L3_49
  L0_46(L1_47)
  startTime = L0_46
  for L3_49 = 1, 200 do
    doscript("testCardScript")
    print([[

Loaded script number ]], L3_49, "\n")
  end
  L0_46()
  totalTime = L0_46
  L3_49 = "\n"
  L0_46(L1_47, L2_48, L3_49)
end
testMain()
