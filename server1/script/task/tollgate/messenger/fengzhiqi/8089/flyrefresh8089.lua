-------------------------------------------------------------------------
-- FileName		:	enemy_flyrefresh8089.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-13 11:10:14
-- Desc			:   ��֮��ؿ���boss����ˢ����[80-89��]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\fengzhiqi\\enemy_flyrefresh.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --ȡ������
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --���ü�ʱ��
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --���ͬ�������ı���

FLYREFRESH_EXP =  tonumber( TabFile_GetCell( "tollprize" ,3,"shuachu_exp"))   --boss����ˢ��С�־���
FLYREFRESH_MAPID= 388  --��֮��ĵ�ͼid
FLYREFRESH_MESSENGEREXP= tonumber( TabFile_GetCell( "tollprize" ,3 ,"shuachu_jifen"))  --��֮���boss����ˢ��С�����������ʹ����


function OnDeath()
	if mod(tonumber(GetLocalDate("%H")), 2) ~= 0 then
		return Say("Hi�n t�i th�i gian Phong k� �� h�t, c�c h� ph�i quay v� th�i!", 1, "Ta bi�t r�i!/losemessengertask")
	end
	local name = GetName()
	local Uworld1215 = nt_getTask(1215)  --boss����ˢ�ֵĴ�ֿ���
	if (  messenger_middletime() == 10 ) then --����ڵ�ͼ�е�ʱ��
		Msg2Player("Xin l�i! "..name.."! B�n �� h�t th�i gian th�c hi�n nhi�m v� T�n s�! Nhi�m v� th�t b�i!.")
		losemessengertask()
	--elseif ( Uworld1215 == 0 ) then  --û��ˢ�ֵ�����
	--	Msg2Player("����һ��Ѿ������˰��ˣ�������ǲ������κν����á�")
	--	return
	else
		messenger_killrefresh()
	end
end