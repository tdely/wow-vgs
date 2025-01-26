vgs.Chat = {}

function vgs.Chat:perform(msg)
  vgs:debug(msg)
  SendChatMessage(msg)
  vgs:reset()
end

function vgs.Chat:global()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_C_CAT_COMPLIMENT")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_CAT_RESPOND")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_C_CAT_TAUNT")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_G_YES")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_C_G_NO")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_G_HI")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_C_G_BYE")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_C_G_QUIET")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_G_WOOHOO")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_C_G_FOLLOWME")
  SetOverrideBinding(vgs_frame, true, "X", "VGS_C_G_OOPS")
  vgs:debug("VGS global")
  vgs:write([[
|cnDARKYELLOW_FONT_COLOR:[C] Compliment|r
|cnDARKYELLOW_FONT_COLOR:[R] Respond|r
|cnDARKYELLOW_FONT_COLOR:[T] Taunt|r
[A] Agree
[D] Deny
[G] Greet
[B] Bye
[S] Silence
[W] Woohoo
[F] Follow me
[X] Oops

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Chat:compliment()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_GC_AWESOME")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_GC_GOODGAME")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_GC_YOUROCK")
  vgs:debug("VGS compliment")
  vgs:write([[
[A] Awesome
[G] Good game
[R] You rock

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Chat:respond()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_GR_ANYTIME")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_C_GR_DONTKNOW")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_C_GR_THANKS")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_GR_WAIT")
  vgs:debug("VGS respond")
  vgs:write([[
[A] Any time
[D] Don't know
[T] Thanks
[W] Wait

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Chat:taunt()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_C_GT_BEST")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_GT_GREATEST")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_C_GT_GRACEFUL")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_GT_WHEN")
  vgs:debug("VGS taunt")
  vgs:write([[
[B] Best you can do?
[G] I am the greatest!
[T] THAT was graceful!
[W] When will you learn?

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Chat:battle()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_B_ATTACK")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_B_RETREAT")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_C_B_COVER")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_C_B_CHASE")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_C_B_FIRE")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_B_WAIT")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_C_B_OOM")
  SetOverrideBinding(vgs_frame, true, "Z", "VGS_C_B_CROWDCONTROL")
  SetOverrideBinding(vgs_frame, true, "X", "VGS_C_B_INCOMING")
  vgs:debug("VGS battle")
  vgs:write([[
[A] Attack
[R] Retreat
[D] Cover me!
[C] Chase
[F] Fire!
[W] Wait
[T] Out of mana
[Z] Crowd control
[X] Incoming!

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Chat:self()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_S_ATTACK")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_S_RETREAT")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_C_S_COVER")
  SetOverrideBinding(vgs_frame, true, "Z", "VGS_C_S_CROWDCONTROL")
  vgs:debug("VGS self")
  vgs:write([[
[A] Attack
[R] Retreat
[C] Cover
[Z] Crowd control

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end

function vgs.Chat:exec()
  vgs:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_CAT_GLOBAL")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_C_CAT_BATTLE")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_C_CAT_SELF")
  vgs:debug("VGS active")
  vgs:write([[
|cnDARKYELLOW_FONT_COLOR:[G] Global|r
|cnDARKYELLOW_FONT_COLOR:[B] Battle|r
|cnDARKYELLOW_FONT_COLOR:[S] Self|r

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] Quit|r
]])
end
