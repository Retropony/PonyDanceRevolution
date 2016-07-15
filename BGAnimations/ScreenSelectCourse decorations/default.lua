local t = LoadFallbackB();

t[#t+1] = StandardDecorationFromFileOptional("CourseContentsList","CourseContentsList") .. {
}

t[#t+1] = Def.Sprite {
		name="CourseBanner";
        InitCommand=cmd(x,SCREEN_CENTER_X-118;y,SCREEN_TOP+116;); 
		OffCommand=cmd(bouncebegin,0.15;zoomx,0;);
		OnCommand=cmd(draworder,-1;visible,true;ztest,1;addy,-SCREEN_CENTER_Y;decelerate,0.1;addy,SCREEN_CENTER_Y+36);
		ChangedCommand=cmd(finishtweening;smooth,0.2;zoomx,0.8);
		TransitionCommand=cmd(finishtweening;zoomx,0.8;diffusealpha,0;decelerate,0.2;zoom,1;diffusealpha,1;);
        CurrentSongChangedMessageCommand=cmd(playcommand,"Set"); 
        CurrentCourseChangedMessageCommand=cmd(playcommand,"Set"); 
        SetCommand=function(self) 
            local course = GAMESTATE:GetCurrentCourse(); 
			if course then
                if course:HasBanner() then
					self:playcommand("Changed")
                    self:Load(course:GetBannerPath())
					self:playcommand("Transition")
                    self:scaletoclipped(160,160)
                else
					self:playcommand("Changed")
                    self:Load(THEME:GetPathG("Common fallback", "banner"))
					self:scaletoclipped(160,160)
					self:playcommand("Transition")
                end
			else
				self:diffusealpha(0)
            end
        end;
		};

t[#t+1] = LoadFont("Common normal") .. {
	Text=Screen.String("Score");
	InitCommand=cmd(x,SCREEN_CENTER_X-114;y,SCREEN_CENTER_Y+35;horizalign,center;zoom,0.6;diffuse,color("#FFFFFF")); 
	OnCommand=cmd(diffusealpha,0;addx,-3;decelerate,0.4;diffusealpha,1;addx,3;);
	OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,3;);
};

t[#t+1] = StandardDecorationFromFileOptional("DifficultyList","DifficultyList");
t[#t+1] = StandardDecorationFromFileOptional("SongTime","SongTime") .. {
	SetCommand=function(self)
		local curSelection = nil;
		local length = 0.0;
		if GAMESTATE:IsCourseMode() then
			self:settext("");
		else
			curSelection = GAMESTATE:GetCurrentSong();
			self:playcommand("Reset");
			if curSelection then
				length = curSelection:MusicLengthSeconds();
				if curSelection:IsLong() then
					self:playcommand("Long");
				elseif curSelection:IsMarathon() then
					self:playcommand("Marathon");
				else
					self:playcommand("Reset");
				end
			else
				length = 0.0;
				self:playcommand("Reset");
			end;
			self:settext( SecondsToMSS(length) );
		end;
	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");
};
t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");
t[#t+1] = StandardDecorationFromFileOptional("Banner","Banner");

t[#t+1] = LoadActor(THEME:GetPathG("", "/_pony")) .. {
	InitCommand=cmd(x,SCREEN_CENTER_X-306;y,SCREEN_BOTTOM-80;zoom,0.6;);
	OnCommand=cmd(addy,240;sleep,0.5;decelerate,0.4;addy,-240;);
	OffCommand=cmd(accelerate,0.4;addy,240;);
	}

return t