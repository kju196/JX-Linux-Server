--citydefence.lua
-- 卫国战争之烽火连城

function TaskShedule()
	TaskName("Phong hoa lien thanh");	

	-- 一天一次，单位分钟
	TaskInterval(1440);
	-- 设置触发时间
	TaskTime(00, 20);
	OutputMsg(format("=====> PHONG HOA LIEN THANH BAT DAU %d:%d...", 02, 20));
	-- 执行无限次
	TaskCountLimit(0);

end

function TaskContent()
		OutputMsg("'Thu Thanh' Phe Tong da mo ghi danh.");
		GlobalExecute("dw NewCityDefence_OpenMain(1)");
	zMsg2SubWorld  = "<color=yellow>Chi課 trng<color> <color=green>Phong H醓 Li猲 Th祅h<color>, <color=green>Phe Th� Th祅h<color>  n gi� b竜 danh, c竎 nh﹏ s� giang h� nhanh ch﹏ n Ba L╪g Huy謓 L� Quan  b竜 danh, Th阨 gian b竜 danh l� <color=pink>10<color> ph髏."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
