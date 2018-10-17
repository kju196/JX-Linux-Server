-- ====================== 文件信息 ======================

-- 剑侠情缘网络版越南版 - 胖豪猪死亡脚本
-- 文件名　：haozhu_death.lua
-- 创建者　：子非魚
-- 创建时间：2009-05-31 10:58:17
-- Modified by bil4i3n

-- ======================================================

Include("\\script\\task\\task_addplayerexp.lua");	-- 用于叠加经验
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");	-- 
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")
IncludeLib("RELAYLADDER");
Include("\\script\\_event\\activitys.lua")

function OnDeath( nNpcIndex )
	_EVENT:Activity_NBP()

	local bilNowDay = tonumber(date("%y%m%d"))
	if Bil_GetTask(25) < bilNowDay and Bil_GetTask(25) ~= 0 then
		Bil_SetTask(22, 0)
	end
	if (Bil_GetTask(22) >= 10) then
		Msg2Player("H玬 nay  s╪ b総 10 Nh輒 b衞 ph� r錳, ng祔 mai h穣 n l筰 nh�.");
		return
	end
	-- local x, y, nMapIndex = GetNpcPos(nNpcIndex);
	bilActivity_DeathNhimBeoPhi()
	Bil_SetTask(25, tonumber(date("%y%m%d")))
	Bil_SetTask(22, Bil_GetTask(22) + 1)
	Bil_SetTask(24, Bil_GetTask(24) + 1)
	Ladder_NewLadder(10232, GetName(), Bil_GetTask(24),1);
end

function OnTimer(nNpcIndex, nTimeOut)
	DelNpc(nNpcIndex)
end
