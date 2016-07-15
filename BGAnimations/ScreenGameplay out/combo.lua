--FullCombo base from moonlight by AJ

local pn = ...;
assert(pn);

local t = Def.ActorFrame{};

local IsUsingSoloSingles = PREFSMAN:GetPreference('Center1Player');
local NumPlayers = GAMESTATE:GetNumPlayersEnabled();
local NumSides = GAMESTATE:GetNumSidesJoined();

local pStats = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);

local function GetPosition(pn)
	if IsUsingSoloSingles and NumPlayers == 1 and NumSides == 1 then return SCREEN_CENTER_X; end;
	
	local strPlayer = (NumPlayers == 1) and "OnePlayer" or "TwoPlayers";
	local strSide = (NumSides == 1) and "OneSide" or "TwoSides";

	return THEME:GetMetric("ScreenGameplay","Player".. ToEnumShortString(pn) .. strPlayer .. strSide .."X");

end;

--FANTABULARIFFIC
t[#t+1] = LoadFont("_celestia redux 33px")..{
	Text=tostring(THEME:GetString("FullComboLine","W1"));
	InitCommand=cmd(x,GetPosition(pn);y,SCREEN_CENTER_Y+80;diffuse,color("#6abacb"););	
	OffCommand=function(self)
		local fct = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
		if fct:FullComboOfScore('TapNoteScore_W1') == true then
				self:zoom(1);
				self:diffusealpha(0);
				self:addx(-20);
				self:sleep(0.5);
				self:decelerate(0.4);
				self:addx(20);
				self:diffusealpha(1);
				self:sleep(1);
				self:accelerate(0.3);
				self:zoomy(0);
		elseif fct:FullComboOfScore('TapNoteScore_W2') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W3') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W4') == true then
			self:visible(false);
		else
			self:visible(false);
		end;
	end;	
};

--SUPER DUPER
t[#t+1] = LoadFont("_celestia redux 33px")..{
	Text=tostring(THEME:GetString("FullComboLine","W2"));
	InitCommand=cmd(x,GetPosition(pn);y,SCREEN_CENTER_Y+80;diffuse,color("#ffc977"););	
	OffCommand=function(self)
		local fct = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
		if fct:FullComboOfScore('TapNoteScore_W1') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W2') == true then
				self:zoom(1);
				self:diffusealpha(0);
				self:addx(-20);
				self:sleep(0.5);
				self:decelerate(0.4);
				self:addx(20);
				self:diffusealpha(1);
				self:sleep(1);
				self:accelerate(0.3);
				self:zoomy(0);
		elseif fct:FullComboOfScore('TapNoteScore_W3') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W4') == true then
			self:visible(false);
		else
			self:visible(false);
		end;
	end;	
};

--AWESOME
t[#t+1] = LoadFont("_celestia redux 33px")..{
	Text=tostring(THEME:GetString("FullComboLine","W3"));
	InitCommand=cmd(x,GetPosition(pn);y,SCREEN_CENTER_Y+80;diffuse,color("#55ff4c"););	
	OffCommand=function(self)
		local fct = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
		if fct:FullComboOfScore('TapNoteScore_W1') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W2') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W3') == true then
				self:zoom(1);
				self:diffusealpha(0);
				self:addx(-20);
				self:sleep(0.5);
				self:decelerate(0.4);
				self:addx(20);
				self:diffusealpha(1);
				self:sleep(1);
				self:accelerate(0.3);
				self:zoomy(0);
		elseif fct:FullComboOfScore('TapNoteScore_W4') == true then
			self:visible(false);
		else
			self:visible(false);
		end;
	end;	
};

--FullCombo
t[#t+1] = LoadFont("_celestia redux 33px")..{
	Text=tostring(THEME:GetString("FullComboLine","FullCombo"));
	InitCommand=cmd(x,GetPosition(pn);y,SCREEN_CENTER_Y+100;diffuse,color("#cccccc"));	
	OffCommand=function(self)
		local fct = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
		if fct:FullComboOfScore('TapNoteScore_W1') == true then
				self:zoomx(0);
				self:zoomy(0.5);
				self:sleep(1);
				self:decelerate(0.3);
				self:zoomx(0.6);
				self:smooth(0.1);
				self:zoomx(0.5);
				self:sleep(0.5);
				self:accelerate(0.3);
				self:zoomy(0);
		elseif fct:FullComboOfScore('TapNoteScore_W2') == true then
				self:zoomx(0);
				self:zoomy(0.5);
				self:sleep(1);
				self:decelerate(0.3);
				self:zoomx(0.6);
				self:smooth(0.1);
				self:zoomx(0.5);
				self:sleep(0.5);
				self:accelerate(0.3);
				self:zoomy(0);
		elseif fct:FullComboOfScore('TapNoteScore_W3') == true then
				self:zoomx(0);
				self:zoomy(0.5);
				self:sleep(1);
				self:decelerate(0.3);
				self:zoomx(0.6);
				self:smooth(0.1);
				self:zoomx(0.5);
				self:sleep(0.5);
				self:accelerate(0.3);
				self:zoomy(0);
		elseif fct:FullComboOfScore('TapNoteScore_W4') == true then
			self:visible(false);
		else
			self:visible(false);
		end;
	end;	
};

--OKIE DOKI LOKEY
t[#t+1] = LoadFont("_celestia redux 33px")..{
	Text=tostring(THEME:GetString("FullComboLine","Great"));
	InitCommand=cmd(x,GetPosition(pn);y,SCREEN_CENTER_Y+80;diffuse,color("#ffffff"));	
	OffCommand=function(self)
		local fct = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
		if fct:FullComboOfScore('TapNoteScore_W1') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W2') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W3') == true then
			self:visible(false);
		elseif fct:FullComboOfScore('TapNoteScore_W4') == true then
				self:zoom(1);
				self:diffusealpha(0);
				self:addx(-20);
				self:sleep(0.5);
				self:decelerate(0.4);
				self:addx(20);
				self:diffusealpha(1);
				self:sleep(1);
				self:accelerate(0.3);
				self:zoomy(0);
		else
			self:visible(false);
		end;
	end;	
};

return t;