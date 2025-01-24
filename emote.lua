VGS.Emote = {}

function VGS.Emote:emote(emote)
  VGS:debug(emote)
  DoEmote(emote)
  VGS:reset()
end

function VGS.Emote:global()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CAT_COMPLIMENT")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_CAT_RESPOND")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_CAT_TAUNT")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_AGREE")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_E_NO")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GREET")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_E_BYE")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_APOLOGIZE")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_WAVE")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FOLLOWME")
  VGS:debug("VGS global")
  vgs_frame.text:SetText([[
|cnDARKYELLOW_FONT_COLOR:[C] Compliment|r
|cnDARKYELLOW_FONT_COLOR:[R] Respond|r
|cnDARKYELLOW_FONT_COLOR:[T] Taunt|r
[A] Agree
[D] Deny|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Greet|T587715:11|t
[B] Bye|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Sorry
[W] Wave|T587715:11|t
[F] Follow me|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:compliment()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CHEER")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_APPLAUD")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_COMMEND")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_CONGRATULATE")
  SetOverrideBinding(vgs_frame, true, "Z", "VGS_E_AMAZE")
  VGS:debug("VGS compliment")
  vgs_frame.text:SetText([[
[C] Cheer|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[A] Applaud|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[W] Well done|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Congratulate|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[Z] Amazed

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:respond()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_LAUGH")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_SHRUG")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_WAIT")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_THANK")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FAIL")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GOODLUCK")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CONFUSED")
  vgs_frame.text:SetText([[
[A] Laugh|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Shrug|T587715:11|t
[W] Wait|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[T] Thanks|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[F] Failed|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Good luck
[C] Confused|T587715:11|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:taunt()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_SPIT")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_RUDE")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_TAUNT")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GOLFCLAP")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CHICKEN")
  SetOverrideBinding(vgs_frame, true, "V", "VGS_E_VIOLIN")
  VGS:debug("VGS taunt")
  vgs_frame.text:SetText([[
[S] Spit
[R] Rude|T587715:11|t
[T] Taunt|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Golfclap|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[C] Chicken|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[V] Violin|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:social()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_ANGRY")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_SILLY")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_E_DRINK")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_WHISTLE")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_ROAR")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_THREAT")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FROWN")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GASP")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CRY")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_E_BECKON")
  SetOverrideBinding(vgs_frame, true, "X", "VGS_E_LAUGH")
  VGS:debug("VGS social")
  vgs_frame.text:SetText([[
[A] Angry|T587715:11|t
[S] Silly|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[D] Drink|T587715:11|t
[W] Whistle|T587714:11|t
[R] Roar|T587715:11|t
[T] Threaten [broken]
[F] Frown
[G] Gasp|T587715:11|t
[C] Cry|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[B] Beckon
[X] Laugh|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:battle()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_ATTACKMYTARGET")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_STOPATTACK")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_INCOMING")
  SetOverrideBinding(vgs_frame, true, "E", "VGS_E_HEALME")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_READY")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FLEE")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_OOM")
  VGS:debug("VGS battle")
  vgs_frame.text:SetText([[
[A] Attack|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Stop attacking
[W] Incoming|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[E] Heal me|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[R] Ready
[F] Flee|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[T] Out of mana|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:veryquick()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_ATTACKMYTARGET")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_STOPATTACK")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_INCOMING")
  SetOverrideBinding(vgs_frame, true, "E", "VGS_E_HEALME")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_READY")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FLEE")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_OOM")
  VGS:debug("VGS battle")
  vgs_frame.text:SetText([[
[A] Attack|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Stop attacking
[W] Incoming|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[E] Heal me|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[R] Ready
[F] Flee|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[T] Out of mana|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Emote:exec()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_CAT_GLOBAL")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_E_CAT_BATTLE")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_CAT_SOCIAL")
  VGS:debug("VGS active")
  vgs_frame.text:SetText([[
|cnDARKYELLOW_FONT_COLOR:[G] Global|r
|cnDARKYELLOW_FONT_COLOR:[B] Battle|r
|cnDARKYELLOW_FONT_COLOR:[S] Social|r

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end
