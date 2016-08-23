local t = Def.ActorFrame {};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.8;addy,-24;addx,111;);
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					self:settext(stepsP1:GetAuthorCredit())
				else
					self:settext("")
				end
			else
				self:settext("")
			end
          end
};

-- Taps
t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,50;playcommand,"Set");
		  OnCommand=cmd(diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			self:settext("TAPS")
		  end;
};

t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,50;addy,20;playcommand,"Set");
		  OnCommand=cmd(diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			self:settext("HOLDS")
		  end;
};

t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,50;addy,40;playcommand,"Set");
		  OnCommand=cmd(diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			self:settext("JUMPS")
		  end;
};

t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,50;addy,60;playcommand,"Set");
		  OnCommand=cmd(diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			self:settext("MINES")
		  end;
};

t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,50;addy,80;playcommand,"Set");
		  OnCommand=cmd(diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			self:settext("HANDS")
		  end;
};

t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,50;addy,100;playcommand,"Set");
		  OnCommand=cmd(diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			self:settext("LIFTS")
		  end;
};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,110;diffuse,PlayerColor(PLAYER_1););
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					local Getp1Radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1);
					local P1Taps = Getp1Radar:GetValue('RadarCategory_TapsAndHolds')+Getp1Radar:GetValue('RadarCategory_Jumps')+Getp1Radar:GetValue('RadarCategory_Hands');
					self:settext(P1Taps);
				else
					self:settext("")
				end
			else
				self:settext("")
			end
         end
};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,110;addy,20;diffuse,PlayerColor(PLAYER_1););
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					local Getp1Radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1);
					local P1Holds = Getp1Radar:GetValue('RadarCategory_Holds');
					self:settext(P1Holds);
				else
					self:settext("")
				end
			else
				self:settext("")
			end
         end
};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,110;addy,40;diffuse,PlayerColor(PLAYER_1););
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					local Getp1Radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1);
					local P1Holds = Getp1Radar:GetValue('RadarCategory_Jumps');
					self:settext(P1Holds);
				else
					self:settext("")
				end
			else
				self:settext("")
			end
         end
};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,110;addy,60;diffuse,PlayerColor(PLAYER_1););
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					local Getp1Radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1);
					local P1Mines = Getp1Radar:GetValue('RadarCategory_Mines');
					self:settext(P1Mines);
				else
					self:settext("")
				end
			else
				self:settext("")
			end
         end
};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,110;addy,80;diffuse,PlayerColor(PLAYER_1););
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					local Getp1Radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1);
					local P1Mines = Getp1Radar:GetValue('RadarCategory_Hands');
					self:settext(P1Mines);
				else
					self:settext("")
				end
			else
				self:settext("")
			end
         end
};

t[#t+1] = LoadFont("Common normal") .. { 
		  InitCommand=cmd(horizalign,right;zoom,0.75;addx,110;addy,100;diffuse,PlayerColor(PLAYER_1););
		  OnCommand=cmd(queuecommand,"Transition";);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set";playcommand,"Transition";); 
		  TransitionCommand=cmd(finishtweening;diffusealpha,0;addy,-3;smooth,0.2;diffusealpha,1;addy,3;);
		  PlayerJoinedMessageCommand=cmd(playcommand,"Set";diffusealpha,0;smooth,0.3;diffusealpha,1;);
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self)
			stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1)
			local song = GAMESTATE:GetCurrentSong();
			if song then 
				if stepsP1 ~= nil then
					local Getp1Radar = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1);
					local P1Mines = Getp1Radar:GetValue('RadarCategory_Lifts');
					self:settext(P1Mines);
				else
					self:settext("")
				end
			else
				self:settext("")
			end
         end
};

return t