Include("\\script\\activitysys\\config\\44\\variables.lua") 

local nTask_HuDie		= 1
local nTask_XinXin		= 2
local nTask_ZhuXin_YuanXin		= 3
local nTask_ChenDu		= 4
local nTask_DaLi		= 5
local nTask_FengXiang		= 6
local nTask_XiangYang		= 7
local nTask_BianJin		= 8
local nTask_LinAn		= 9
local nTask_YangZhou		= 10
local nTask_GiveCount		= 11
local nTask_Activi_Point		= 2794
-------局部变量定义 结束---
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "催怪但莲藕饼",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"5"} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "催怪但⑻豆饼",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"5"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "催怪但鱼头",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"1"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "玩家点击勤劳老农",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Чi S� L穙 L穙"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>S� c� la r蕋 l� ngon, i hi謕 c� th� t苙g cho c竎 i hi謕 n�. Чi hi謕 mu鑞 S�-c�-la g� y ?"} },
		{"AddDialogOpt",	{"Ta mu鑞 i S� c� la.",5} },
                {"AddDialogOpt",	{"Nh薾 ph莕 thng s� d鬾g s� c� la.",10} },
                
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "合成划分等级",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C竎 h� mu鑞 h頿 th祅h lo筰 s� c� la n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H頿 th祅h S� c� la lo筰 4",6} },
		{"AddDialogOpt",	{"H頿 th祅h S� c� la lo筰 3",7} },
		{"AddDialogOpt",	{"H頿 th祅h S� c� la lo筰 2",8} },
		{"AddDialogOpt",	{"H頿 th祅h S� c� la lo筰 1",9} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h s�-c�-la lo筰 4",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H頿 th祅h s�-c�-la lo筰 4",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo筰 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"100000 lng",{nJxb=100000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3525,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h s�-c�-la lo筰 3",
	nStartDate = 201408090000,
	nEndDate  = 201410110000,
	tbMessageParam = {"H頿 th祅h s�-c�-la lo筰 3",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo筰 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S� C� La lo筰 4",{tbProp={6,1,3525,1,0,0},},10} },
                {"AddOneMaterial",	{"200000 lng",{nJxb=200000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3526,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h s�-c�-la lo筰 2",
	nnStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H頿 th祅h s�-c�-la lo筰 2",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo筰 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S� C� La lo筰 3",{tbProp={6,1,3526,1,0,0},},10} },
                {"AddOneMaterial",	{"300000 lng",{nJxb=300000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3527,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h s�-c�-la lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"H頿 th祅h s�-c�-la lo筰 1",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S� C� La lo筰 5",{tbProp={6,1,3524,1,0,0},},10} },
                {"AddOneMaterial",	{"S� C� La lo筰 2",{tbProp={6,1,3527,1,0,0},},10} },
                {"AddOneMaterial",	{"400000 lng",{nJxb=400000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3528,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "Nh薾 thng s� c� la",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"<npc>C竎 h� mu鑞 i lo筰 l錸g n c bi謙 n祇 ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 100 c竔 S� c� la lo筰 1",12} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 200 c竔 S� c� la lo筰 1",13} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 400 c竔 S� c� la lo筰 1",14} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 600 c竔 S� c� la lo筰 1",15} },
                {"AddDialogOpt",	{"Nh薾 ph莕 thng 800 c竔 S� c� la lo筰 1",16} },
		{"AddDialogOpt",	{"Nh薾 ph莕 thng 1000 c竔 S� c� la lo筰 1",17} },
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d鬾g s� c� la lo筰 1",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {{tbProp={6,1,3528,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� s� d鬾g",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[T輓h n╪g socola][S� d鬾g S� c� la lo筰 1]"} },
                {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
		{"ThisActivity:AddTask",	{nTask_HuDie,1} },
	},
}
tbConfig[12] = --一个细节
{
	nId = 12, 
        szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 100 c竔 S� c� la lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,2,"Чi hi謕 kh玭g  s� d鬾g 100 chi誧 S� c� la lo筰 1, kh玭g th� nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet100Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d鬾g 100 chi誧 S� c� la lo筰 1 nh薾 thng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet100Award,1} }, 
        }, 
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 200 c竔 S� c� la lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,200,"Чi hi謕 kh玭g  s� d鬾g 200 chi誧 S� c� la lo筰 1, kh玭g th� nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet200Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d鬾g 200 chi誧 S� c� la lo筰 1 nh薾 thng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet200Award,1} }, 
        }, 
}
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 400 c竔 S� c� la lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,400,"Чi hi謕 kh玭g  s� d鬾g 400 chi誧 S� c� la lo筰 1, kh玭g th� nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet300Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d鬾g 400 chi誧 S� c� la lo筰 1 nh薾 thng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet300Award,1} }, 
        }, 
}
tbConfig[15] = --一个细节
{
	nId = 15,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 600 c竔 S� c� la lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,600,"Чi hi謕 kh玭g  s� d鬾g 600 chi誧 S� c� la lo筰 1, kh玭g th� nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet400Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d鬾g 600 chi誧 S� c� la lo筰 1 nh薾 thng."} },
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} }, 
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet400Award,1} }, 
        }, 
}
tbConfig[16] = --一个细节
{
	nId = 16,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 800 c竔 S� c� la lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,800,"Чi hi謕 kh玭g  s� d鬾g 800 chi誧 S� c� la lo筰 1, kh玭g th� nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet500Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d鬾g 800 chi誧 S� c� la lo筰 1 nh薾 thng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,2157,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet500Award,1} }, 
        }, 
}
tbConfig[17] = --一个细节
{
	nId = 17,
	szMessageType = "nil", 
        szName = "Nh薾 ph莕 thng 1000 c竔 S� c� la lo筰 1", 
        nStartDate = nil, 
        nEndDate = nil, 
        tbMessageParam = {nil}, 
        tbCondition = 
        { 
                 {"PlayerFunLib:CheckTotalLevel", {80,"default",">="} }, 
                 {"ThisActivity:CheckTask", {nTask_HuDie,1000,"Чi hi謕 kh玭g  s� d鬾g 1000 chi誧 S� c� la lo筰 1, kh玭g th� nh薾 thng",">="} }, 
                 {"ThisActivity:CheckTask", {TaskVarIdx_IsGet600Award,0,"Ngi  nh薾 thng.","=="} }, 
        }, 
        tbActition = 
        { 
                 {"PlayerFunLib:AddExp", {Get300Award,1,"S� d鬾g 1000 chi誧 S� c� la lo筰 1 nh薾 thng."} }, 
                  {"PlayerFunLib:GetItem",	{{tbProp={6,1,3483,1,0,0},},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
                 {"ThisActivity:AddTask", {TaskVarIdx_IsGet600Award,1} }, 
        }, 
}

