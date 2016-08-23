-- Coded by Lirodon for TrotMania III

local function Difficulty(pn)
	local r = Def.ActorFrame{};
	
	r[#r+1] = Def.Quad{
		InitCommand=function(self)
			local fadeAmt = 0.25;
			
			if pn == PLAYER_1 then
				self:addx(-4);
				self:horizalign(left);
				self:faderight(fadeAmt);
			else
				self:horizalign(right);
				self:addx(4);
				self:fadeleft(fadeAmt);
			end;
			
			self:addy(1);
			
			self:zoomx(96);
			self:zoomy(18);
			if pn then
				self:diffuse( DifficultyDarkColor( GAMESTATE:GetCurrentSteps(pn):GetDifficulty() ) );
			end;
			self:diffusealpha(0.5);
		end;
		BeginCommand=function(self)
			if GAMESTATE:IsSideJoined(pn) or GAMESTATE:IsPlayerEnabled(pn) or GAMESTATE:IsDemonstration() then
				self:visible(true)
			else self:visible(false);
			end;
		end;
	};
	
	r[#r+1] = LoadFont("normal")..{
		Name="Difficulty"..pn;
		InitCommand=cmd(zoom,0.6;shadowlength,1);
		BeginCommand=function(self)
			if GAMESTATE:IsSideJoined(pn) or GAMESTATE:IsPlayerEnabled(pn) or GAMESTATE:IsDemonstration() then
				self:visible(true)
			else self:visible(false);
			end;
			
			if pn == PLAYER_1 then self:horizalign(left);
			else self:horizalign(right);
			end;
			
		end;
		OnCommand=function(self)
			if not self:GetVisible() then return; end;
			-- get difficulty
			local steps = GAMESTATE:GetCurrentSteps(pn);
			local difficulty = steps:GetDifficulty();
			local diffString = ( string.sub(difficulty,12) );
			self:diffuse( DifficultyColor(difficulty) );
			self:settext(diffString .. " [" ..steps:GetMeter().."]");
			self:diffusetopedge( color("#FFFFFF") );
		end;
	};
	
	return r;
end;

-- SongNumber(pn)
-- Returns a text actor with the current song number.

local t = Def.ActorFrame{
};

--FullComboColor from Default Extended by A.C
local function GetFullComboEffectColor(pss)
	local r;
		if pss:FullComboOfScore('TapNoteScore_W1') == true then
			r=GameColor.Judgment["JudgmentLine_W1"];
		elseif pss:FullComboOfScore('TapNoteScore_W2') == true then
			r=GameColor.Judgment["JudgmentLine_W2"];
		elseif pss:FullComboOfScore('TapNoteScore_W3') == true then
			r=GameColor.Judgment["JudgmentLine_W3"];
		end;
	return r;
end;

for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = LoadActor("combo", pn) .. {
	--[[
					OffCommand = function(self)
						local pss = STATSMAN:GetCurStageStats():GetPlayerStageStats(pn);
						self:diffuse(GetFullComboEffectColor(pss));
					end;
	--]]
	};
end;

return t;