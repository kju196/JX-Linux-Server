function TaskShedule()
	--��ַ��������
	TaskName("Phong L�ng ��")
	local nStartHour = tonumber(date("%H")) + 1;
	
	if (nStartHour >= 24) then
		nStartHour = 0;
	end;
	
	TaskTime(nStartHour, 0);
	
	--��ַ���ʱ�䣬��λΪ����
	TaskInterval(720) --60����һ��
	
	--��ַ����������0��ʾ���޴���
	TaskCountLimit(0)
	OutputMsg("=================Phong l�ng ��==================");
end

function TaskContent()
    GlobalExecute("dwf \\script\\missions\\fengling_ferry\\fldmap_boat1.lua fenglingdu_main()")
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end