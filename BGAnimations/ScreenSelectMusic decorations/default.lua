local t = LoadFallbackB();

t[#t+1] = Def.Sprite {
		name="SongJacket";
        InitCommand=cmd(x,SCREEN_CENTER_X-118;y,SCREEN_TOP+116;); 
		OffCommand=cmd(bouncebegin,0.15;zoomx,0;);
		OnCommand=cmd(draworder,-1;visible,true;ztest,1;addy,-SCREEN_CENTER_Y;decelerate,0.1;addy,SCREEN_CENTER_Y+36);
		ChangedCommand=cmd(finishtweening;smooth,0.2;zoomx,0.8);
		TransitionCommand=cmd(finishtweening;zoomx,0.8;diffusealpha,0;decelerate,0.2;zoom,1;diffusealpha,1;);
        CurrentSongChangedMessageCommand=cmd(playcommand,"Set"); 
        CurrentCourseChangedMessageCommand=cmd(playcommand,"Set"); 
        SetCommand=function(self) 
        	local song = GAMESTATE:GetCurrentSong();
			if song then
                if song:HasJacket() then
					self:playcommand("Changed")
                    self:Load(song:GetJacketPath())
                    self:scaletoclipped(160,160)
					self:playcommand("Transition")
                elseif song:HasBackground() then
					self:playcommand("Changed")
                    self:Load(song:GetBackgroundPath())
                    self:scaletoclipped(214,160)
					self:playcommand("Transition")
                elseif song:HasBanner() then
					self:playcommand("Changed")
                    self:Load(song:GetBannerPath())
	                self:scaletoclipped(214,66)
					self:playcommand("Transition")
                else
	local musicwheel = SCREENMAN:GetTopScreen():GetMusicWheel();
	local selection = musicwheel:GetSelectedSection();
	local group = SONGMAN:GetSongGroupBannerPath(selection);
		if group ~= "" then
			self:playcommand("Changed")
                self:Load(SONGMAN:GetSongGroupBannerPath(selection))
                self:scaletoclipped(160,160)
		self:playcommand("Transition")
                else
					self:playcommand("Changed")
                    self:Load(THEME:GetPathG("Common fallback", "banner"))
					self:scaletoclipped(160,160)
					self:playcommand("Transition")
                end;end;
			else
				self:diffusealpha(0)
            end;
        end;
		};

if GAMESTATE:IsCourseMode() == false then
-- Yes. Preview videos.
 
t[#t+1] = Def.Sprite {
        name="PreviewVideo";
        InitCommand=cmd(scaletoclipped,284,160;x,SCREEN_CENTER_X-152;y,SCREEN_TOP+152;);
        CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
        OffCommand=cmd(bouncebegin,0.15;zoomx,0;);
        SetCommand=function(self)
            local song = GAMESTATE:GetCurrentSong();
            if song then
					if song:HasPreviewVid() then
						self:diffusealpha(0)
						self:zoomx(1)
						self:Load(song:GetPreviewVidPath())
						self:sleep(0.8)
						self:decelerate(0.5)
						self:diffusealpha(1)
					else
						self:stoptweening()
						self:decelerate(0.3)
						self:zoomx(0)
						self:diffusealpha(0)
					end
				end
			end;
		};

t[#t+1] = LoadFont("Common normal") .. { 
          InitCommand=cmd(x,SCREEN_CENTER_X-294;y,SCREEN_CENTER_Y+8;maxwidth,220;horizalign,left;diffuse,color("#FFFFFF");zoom,0.5;uppercase,true;); 
		  OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.6;smooth,0.4;addx,10;diffusealpha,1;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentSongChangedMessageCommand=cmd(playcommand,"Set"); 
          CurrentCourseChangedMessageCommand=cmd(playcommand,"Set"); 
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self) 
               local song = GAMESTATE:GetCurrentSong(); 
               if song then
					self:finishtweening();
					self:smooth(0.2);
					self:diffusealpha(0);
					self:addx(10);
                    self:settext(song:GetGenre()); 
                    self:playcommand("Refresh");
					(cmd(stoptweening;addx,-6;diffusealpha,0.0;smooth,0.2;addx,6;diffusealpha,1))(self)
				else
					self:settext("");
					self:playcommand("Refresh");
               end 
          end;
};

t[#t+1] = LoadFont("Common bold") .. { 
	  Text=Screen.String("Artist");
          InitCommand=cmd(x,SCREEN_CENTER_X-296;y,SCREEN_CENTER_Y-20;maxwidth,220;horizalign,left;diffuse,color("#FFFFFF");zoom,0.5;uppercase,true;); 
	  OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.6;smooth,0.4;addx,10;diffusealpha,0.6;);
	  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
};

t[#t+1] = LoadFont("Common bold") .. { 
          InitCommand=cmd(x,SCREEN_CENTER_X-296;y,SCREEN_CENTER_Y-14;horizalign,left;vertalign,top;diffuse,color("#FFFFFF");zoom,0.75;uppercase,false;maxwidth,420;); 
		  BeginCommand=cmd(playcommand,"Set");
		  OnCommand=cmd(addx,-10;diffusealpha,0;sleep,0.6;smooth,0.4;addx,10;diffusealpha,1;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          CurrentSongChangedMessageCommand=cmd(playcommand,"Set"); 
          CurrentCourseChangedMessageCommand=cmd(playcommand,"Set"); 
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self) 
               local song = GAMESTATE:GetCurrentSong(); 
               if song then 
					self:finishtweening();
					self:smooth(0.2);
					self:diffusealpha(0);
					self:addx(10);
                    self:settext(song:GetDisplayArtist()); 
                    self:playcommand("Refresh");
					(cmd(stoptweening;addx,-6;diffusealpha,0.0;smooth,0.2;addx,6;diffusealpha,1))(self)
				else
					self:settext("");
					self:playcommand("Refresh"); 
               end 
          end;
};

t[#t+1] = LoadActor("_p1pane") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y+32;horizalign,left;zoom,0.7;visible,GAMESTATE:IsHumanPlayer(PLAYER_1););
	OnCommand=cmd(diffusealpha,0;sleep,0.5;decelerate,0.2;diffusealpha,1);
		PlayerJoinedMessageCommand=function(self,param)
			if param.Player == PLAYER_1 then
				(cmd(visible,true;diffusealpha,0;sleep,0.5;decelerate,0.2;diffusealpha,1))(self);
			end;
		end;
	}

t[#t+1] = LoadActor("_p2pane") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y+32;horizalign,left;zoom,0.7;visible,GAMESTATE:IsHumanPlayer(PLAYER_2););
	OnCommand=cmd(diffusealpha,0;sleep,0.5;decelerate,0.2;diffusealpha,1);
	PlayerJoinedMessageCommand=function(self,param)
		if param.Player == PLAYER_2 then
				(cmd(visible,true;diffusealpha,0;sleep,0.5;decelerate,0.2;diffusealpha,1))(self);
			end;
		end;
	}

t[#t+1] = LoadFont("Common normal") .. {
	Text=Screen.String("Score");
	InitCommand=cmd(x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y+121;horizalign,center;zoom,0.6;diffuse,color("#FFFFFF")); 
	OnCommand=cmd(diffusealpha,0;addx,-3;decelerate,0.4;diffusealpha,1;addx,3;);
	OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,-3;);
};


t[#t+1] = LoadFont("Common bold") .. { 
		  InitCommand=cmd(x,SCREEN_CENTER_X-161;y,SCREEN_CENTER_Y-21;horizalign,left;zoom,0.6;diffuse,color("#FFFFFF");visible,not GAMESTATE:IsCourseMode();); 
		  OnCommand=cmd(diffusealpha,0;sleep,0.6;smooth,0.4;diffusealpha,1;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,10;);
          BeginCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self) 
				self:settext("BPM");
          end;
};
t[#t+1] = StandardDecorationFromFileOptional("GrooveRadar","GrooveRadar");
end;

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

t[#t+1] = LoadActor(THEME:GetPathG("", "/_pony")) .. {
	InitCommand=cmd(x,SCREEN_CENTER_X-306;y,SCREEN_BOTTOM-80;zoom,0.6;);
	OnCommand=cmd(addy,240;sleep,0.5;decelerate,0.4;addy,-240;);
	OffCommand=cmd(accelerate,0.4;addy,240;);
	}

return t