--江南区 临安府 长江㈦头船夫对话
--suyu
--20031029

CurWharf = 11;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")

function main(sel)
	if (GetLevel() >= 50) then
		Say("Thuy襫 phu : thuy襫 c馻 ta tuy kh玭g ph秈 l� thuy襫 l韓 g�, nh璶g ai qua y u ph秈 nh� ta, nh譶 ngi c騨g kh玭g n n鏸 b莕, c� ti襫 th� qua s玭g.", 3, "Ng錳 thuy襫/WharfFun", "kh玭g ng錳/OnCancel", "<#>Уo hoa o ["..AEXP_TICKET.."<#>]/go_thd");
	else
		Say("Thuy襫 phu : thuy襫 c馻 ta tuy kh玭g ph秈 l� thuy襫 l韓 g�, nh璶g ai qua y u ph秈 nh� ta, nh譶 ngi c騨g kh玭g n n鏸 b莕, c� ti襫 th� qua s玭g.", 2, "Ng錳 thuy襫/WharfFun", "kh玭g ng錳/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","Thuy襫 phu : kh玭g c� ti襫 th� ng 甶 thuy襫")
end;

function go_thd()
	nRet = aexp_gotothd(235);
	-- if (nRet == 1) then
	--	Msg2Player("船夫：最近去桃花岛的人可真兜。好吧，你坐好刀！")
	if (nRet == -1) then
		Talk(1,"","<#> o hoa o"..AEXP_TICKET.."<#>ngi  chu萵 b�  ti襫 ch璦 ?.")
	end
end
