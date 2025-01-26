vgs_debug = false
vgs_align = "right"
vgs_chat_emote = true -- chat also emotes if sound

local backdropInfo =
{
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
 	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
 	tile = true,
 	tileEdge = true,
 	tileSize = 8,
 	edgeSize = 8,
 	insets = { left = 1, right = 1, top = 1, bottom = 1 },
}

vgs_frame = CreateFrame("frame", nil, UIParent, "BackdropTemplate")
vgs_frame:SetBackdrop(backdropInfo)
vgs_frame:SetBackdropColor(0, 0, 0, .4)
vgs_frame:SetBackdropBorderColor(.95, .90, .60)

-- todo: draggable frame?
vgs_frame:SetSize(140, 190)
vgs_frame:SetAlpha(.90)
vgs_frame.text = vgs_frame:CreateFontString(nil, "ARTWORK")
vgs_frame.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
vgs_frame.text:SetPoint("TOPLEFT", 7, -7)
vgs_frame.text:SetJustifyH("LEFT");
vgs_frame:SetMovable(true)
vgs_frame:EnableMouse(true)
vgs_frame:SetPoint("CENTER", 150, -50)
vgs_frame:Hide()

vgs = {}

function vgs:debug(msg)
  if vgs_debug == true then
    print(msg)
  end
end

function vgs:reset()
  ClearOverrideBindings(vgs_frame)
  vgs:debug("VGS reset")
  vgs_frame:Hide()
end

function vgs:write(text)
  vgs_frame.text:SetText(text)
  vgs_frame:Show()
end


function vgs:exec()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "E", "VGS_EMOTE_EXEC")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_CHAT_EXEC")
  vgs:debug("VGS exec")
  vgs:write([[
|cnDARKYELLOW_FONT_COLOR:[E] Emote|r
|cnDARKYELLOW_FONT_COLOR:[C] Chat|r

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end
