-------------------------------------------------------------------------
-- FileName		:	enemy_flyrefresh90.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-13 11:19:14
-- Desc			:   ��֮��ؿ���boss����ˢ���������ű�[90���ϼ�]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\fengzhiqi\\enemy_flyrefresh.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --ȡ������
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --���ü�ʱ��
Include("\\script\\task\\tollgate\\messenger\\bil_newfengzhiqi.lua")
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --���ͬ�������ı���

FLYREFRESH_EXP = tonumber( TabFile_GetCell( "tollprize" ,4 ,"shuachu_exp"))   --boss����ˢ��С�־���
FLYREFRESH_MAPID= 389  --��֮��ĵ�ͼid
FLYREFRESH_MESSENGEREXP= tonumber( TabFile_GetCell( "tollprize" ,4 ,"shuachu_jifen"))  --��֮���boss����ˢ��С�����������ʹ����


function OnDeath()
	if mod(tonumber(GetLocalDate("%H")), 2) ~= 0 then
		return Say("Hi�n t�i th�i gian Phong k� �� h�t, c�c h� ph�i quay v� th�i!", 1, "Ta bi�t r�i!/messenger_comeback")
	end
	-- local name = GetName()
	-- local Uworld1215 = nt_getTask(1215)  --boss����ˢ�ֵĴ�ֿ���
	-- if (  messenger_middletime() == 10 ) then --����ڵ�ͼ�е�ʱ��
		-- Msg2Player("Xin l�i! "..name.."! B�n �� h�t th�i gian th�c hi�n nhi�m v� T�n s�! Nhi�m v� th�t b�i!.")
		-- losemessengertask()
	--elseif ( Uworld1215 == 0 ) then  --û��ˢ�ֵ�����
	--	Msg2Player("����һ��Ѿ������˰��ˣ�������ǲ������κν����á�")
	--	return
	if ( GetTask(1212) >= _BIL_TIME_EVENT_ON_PLAYER ) then 
		Talk(1, "", "Th�t xin l�i , h�m nay th�i gian � nhi�m v� t�n s� �� h�t, xin m�i ng�y mai tr� l�i")
		messenger_comeback()
	else
		messenger_killrefresh()
	end
end