vgs.Emote = {}

function vgs.Emote:perform(emote)
  vgs:debug(emote)
  DoEmote(emote)
  vgs:reset()
end

function vgs.Emote:global()
  vgs:reset()
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
  vgs:debug("VGS global")
  vgs:write([[
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

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:compliment()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CHEER")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_APPLAUD")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_COMMEND")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_CONGRATULATE")
  SetOverrideBinding(vgs_frame, true, "Z", "VGS_E_AMAZE")
  vgs:debug("VGS compliment")
  vgs:write([[
[C] Cheer|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[A] Applaud|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[W] Well done|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Congratulate|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[Z] Amazed

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:respond()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_LAUGH")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_SHRUG")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_WAIT")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_THANK")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FAIL")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GOODLUCK")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CONFUSED")
  vgs:write([[
[A] Laugh|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Shrug|T587715:11|t
[W] Wait|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[T] Thanks|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[F] Failed|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Good luck
[C] Confused|T587715:11|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:taunt()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_SPIT")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_RUDE")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_TAUNT")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GOLFCLAP")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CHICKEN")
  SetOverrideBinding(vgs_frame, true, "V", "VGS_E_VIOLIN")
  vgs:debug("VGS taunt")
  vgs:write([[
[S] Spit
[R] Rude|T587715:11|t
[T] Taunt|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[G] Golfclap|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[C] Chicken|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[V] Violin|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:social()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_ANGRY")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_SILLY")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_E_DRINK")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_WHISTLE")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_ROAR")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_THREATEN")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FROWN")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_GASP")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_E_CRY")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_E_BECKON")
  SetOverrideBinding(vgs_frame, true, "X", "VGS_E_LAUGH")
  vgs:debug("VGS social")
  vgs:write([[
[A] Angry|T587715:11|t
[S] Silly|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[D] Drink|T587715:11|t
[W] Whistle|T587714:11|t
[R] Roar|T587715:11|t
[T] Threaten
[F] Frown
[G] Gasp|T587715:11|t
[C] Cry|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[B] Beckon
[X] Laugh|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:battle()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_ATTACKMYTARGET")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_STOPATTACK")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_WAIT")
  SetOverrideBinding(vgs_frame, true, "E", "VGS_E_HEALME")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_READY")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FLEE")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_OOM")
  SetOverrideBinding(vgs_frame, true, "X", "VGS_E_INCOMING")
  vgs:debug("VGS battle")
  vgs:write([[
[A] Attack|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Stop attacking
[W] Wait|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[E] Heal me|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[R] Ready
[F] Flee|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[T] Out of mana|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[X] Incoming|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:veryquick()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_E_ATTACKMYTARGET")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_STOPATTACK")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_E_INCOMING")
  SetOverrideBinding(vgs_frame, true, "E", "VGS_E_HEALME")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_E_READY")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_E_FLEE")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_E_OOM")
  vgs:debug("VGS battle")
  vgs:write([[
[A] Attack|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[S] Stop attacking
[W] Incoming|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[E] Heal me|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[R] Ready
[F] Flee|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t
[T] Out of mana|TInterface/ChatFrame/UI-ChatIcon-ArmoryChat:14:14:0:0:16:16:0:16:0:16:73:177:73|t

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Emote:exec()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_E_CAT_GLOBAL")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_E_CAT_BATTLE")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_E_CAT_SOCIAL")
  vgs:debug("VGS active")
  vgs:write([[
|cnDARKYELLOW_FONT_COLOR:[G] Global|r
|cnDARKYELLOW_FONT_COLOR:[B] Battle|r
|cnDARKYELLOW_FONT_COLOR:[S] Social|r

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end
