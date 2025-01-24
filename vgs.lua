vgs_frame = CreateFrame("frame", nil, UIParent)

-- todo: draggable frame?
--vgs_frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
--vgs_frame:SetPoint("CENTER",650,-100)
vgs_frame:SetPoint("CENTER",0,0)
vgs_frame:SetSize(40, 40)
vgs_frame:SetAlpha(.90)
vgs_frame.text = vgs_frame:CreateFontString(nil,"ARTWORK")
vgs_frame.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
vgs_frame.text:SetPoint("CENTER",0,0)
vgs_frame.text:SetJustifyH("LEFT");
vgs_frame:SetMovable(true)
vgs_frame:EnableMouse(true)
vgs_frame:Show()
vgs_debug = false

VGS = {}

function VGS:debug(msg)
  if vgs_debug == true then
    print(msg)
  end
end

vgs_frame:Show()

function VGS:reset()
  ClearOverrideBindings(vgs_frame)
  VGS:debug("VGS reset")
  vgs_frame.text:SetText()
end

function VGS:exec()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "E", "VGS_EMOTE_EXEC")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_CHAT_EXEC")
  VGS:debug("VGS exec")
  vgs_frame.text:SetText([[
|cnDARKYELLOW_FONT_COLOR:[E] Emote|r
|cnDARKYELLOW_FONT_COLOR:[C] Chat|r

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end
