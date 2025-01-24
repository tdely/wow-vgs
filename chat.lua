VGS.Chat = {}

function VGS.Chat:chat(msg)
  SendChatMessage(msg)
  VGS:reset()
end

function VGS.Chat:global()
  VGS:reset()
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
  VGS:debug("VGS global")
  vgs_frame.text:SetText([[
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

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Chat:compliment()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_GC_AWESOME")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_GC_GOODGAME")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_GC_YOUROCK")
  VGS:debug("VGS compliment")
  vgs_frame.text:SetText([[
[A] Awesome
[G] Good game
[R] You rock

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Chat:respond()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_GR_ANYTIME")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_C_GR_DONTKNOW")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_C_GR_THANKS")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_GR_WAIT")
  VGS:debug("VGS respond")
  vgs_frame.text:SetText([[
[A] Any time
[D] Don't know
[T] Thanks
[W] Wait

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Chat:taunt()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_C_GT_BEST")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_GT_GREATEST")
  SetOverrideBinding(vgs_frame, true, "T", "VGS_C_GT_GRACEFUL")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_GT_WHEN")
  VGS:debug("VGS taunt")
  vgs_frame.text:SetText([[
[B] Best you can do?
[G] I am the greatest!
[T] THAT was graceful!
[W] When will you learn?

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Chat:battle()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_B_ATTACK")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_B_RETREAT")
  SetOverrideBinding(vgs_frame, true, "D", "VGS_C_B_COVER")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_C_B_CHASE")
  SetOverrideBinding(vgs_frame, true, "F", "VGS_C_B_FIRE")
  SetOverrideBinding(vgs_frame, true, "W", "VGS_C_B_WAIT")
  SetOverrideBinding(vgs_frame, true, "Z", "VGS_C_B_CROWDCONTROL")
  VGS:debug("VGS battle")
  vgs_frame.text:SetText([[
[A] Attack
[R] Retreat
[D] Cover me!
[C] Chase
[F] Fire!
[W] Wait
[Z] Crowd control

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Chat:self()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "A", "VGS_C_S_ATTACK")
  SetOverrideBinding(vgs_frame, true, "R", "VGS_C_S_RETREAT")
  SetOverrideBinding(vgs_frame, true, "C", "VGS_C_S_COVER")
  SetOverrideBinding(vgs_frame, true, "Z", "VGS_C_S_CROWDCONTROL")
  VGS:debug("VGS self")
  vgs_frame.text:SetText([[
[A] Attack
[R] Retreat
[C] Cover
[Z] Crowd control

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end

function VGS.Chat:exec()
  VGS:reset()
  SetOverrideBinding(vgs_frame, true, "Q", "VGS_RESET")
  SetOverrideBinding(vgs_frame, true, "G", "VGS_C_CAT_GLOBAL")
  SetOverrideBinding(vgs_frame, true, "B", "VGS_C_CAT_BATTLE")
  SetOverrideBinding(vgs_frame, true, "S", "VGS_C_CAT_SELF")
  VGS:debug("VGS active")
  vgs_frame.text:SetText([[
|cnDARKYELLOW_FONT_COLOR:[G] Global|r
|cnDARKYELLOW_FONT_COLOR:[B] Battle|r
|cnDARKYELLOW_FONT_COLOR:[S] Self|r

|cnPAPER_FRAME_EXPANDED_COLOR:[Q] quit|r
]])
end
