--description: ����ɽ �����������桡����40������
--author: yuanlan	
--date: 2003/4/26
-- Update: Dan_Deng(2003-08-16)

function OnDeath()
	UTask_tw = GetTask(3)
	if (UTask_tw == 40*256+50) and (HaveItem(93) == 0) and (random(0,99) < 50) then
		AddEventItem(93)
		Msg2Player("�õ���������Ƭ. ")
		AddNote("������ɽ��������ܻ������õ���Ƭ. ")
	end
end;	
