--region *.lua
--Date
--此文件由[BabeLua]插件自动生成


--设置位标记
function Tool_BitSet(num , pos )
	if pos <= 0 or pos > 32 then
		return num
	end
   return bit:_or(num,bit:_lshift(0x00000001,pos - 1)) 
end

--位检测
function Tool_BitTest(num , pos )
	if pos <= 0 or pos > 32 then
		return false
	end
    return bit:_and(bit:_rshift(num,pos - 1),0x00000001) == 1
end
--endregion
