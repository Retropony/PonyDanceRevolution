local function CurGameName()
	return GAMESTATE:GetCurrentGame():GetName()
end

function GameCompatibleModes()
	local Modes = {
		dance = "Single,Double,Solo,Versus,Couple",
		pump = "PSingle,PDouble,HalfDouble,PVersus,PCouple,Routine",
		beat = "5Keys,7Keys,10Keys,14Keys,FiveKeysVersus,SevenKeysVersus",
		kb7 = "KB7",
		para = "Para",
		maniax = "Single,Double,Versus",
		techno = "TSingle4,TSingle5,TSingle8,TDouble4,TDouble5,TDouble8,TVersus4,TVersus5,TVersus8",
		lights = "Lights", -- lights shouldn't be playable
		kickbox = "Human,Quadarm,Insect,Arachnid,HVersus,QVersus,IVersus,AVersus",
	}
	return Modes[CurGameName()]
end