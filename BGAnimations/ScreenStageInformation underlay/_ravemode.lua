local t = Def.ActorFrame {};

local playMode = GAMESTATE:GetPlayMode()

local sStage = ""
sStage = GAMESTATE:GetCurrentStage()

if playMode ~= 'PlayMode_Regular' and playMode ~= 'PlayMode_Rave' and playMode ~= 'PlayMode_Battle' then
  sStage = playMode;
end;

if not (GAMESTATE:IsCourseMode() or GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2()) then
        local tRemap = {
                Stage_Event             = 0,
                Stage_1st               = 1,
                Stage_2nd               = 2,
                Stage_3rd               = 3,
                Stage_4th               = 4,
                Stage_5th               = 5,
                Stage_6th               = 6,
                Stage_Final               = 7,
                Stage_Extra1               = 8,
                Stage_Extra2              = 9,
        };

        local nSongCount = tRemap[sStage] + (GAMESTATE:GetCurrentSong():GetStageCost()-1);

        if nSongCount >= PREFSMAN:GetPreference("SongsPerPlay") then
        sStage = "Stage_Final";
        else
                sStage = sStage;
        end;
end;

local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000");diffusealpha,0);
		OnCommand=cmd(sleep,3.5;smooth,0.7;diffuse,color("#000000")sleep,0.6;);
};	

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-34);	
	LoadActor("ScreenStageInformation Stage " .. ToEnumShortString(sStage) ) .. {
		OnCommand=cmd(diffusealpha,0;zoom,0;sleep,1;smooth,1;zoom,0.4;diffusealpha,1;sleep,2;smooth,1;diffusealpha,0;zoom,0;);
	};
};

t[#t+1] = LoadActor("competitionmode") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(zoom,1;diffusealpha,0;sleep,1;smooth,1;diffusealpha,1;sleep,2.5;smooth,0.5;diffusealpha,0;zoom,0.6;);
	};


t[#t+1] = Def.ActorFrame {
		LoadActor("raveglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0;rotationz,90;zoom,4;sleep,0.2;smooth,0.1;diffusealpha,0.5;smooth,1;rotationz,0;zoom,1;sleep,0.5;smooth,1;diffusealpha,0;);
	};
		LoadActor("raveglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0;rotationz,90;zoom,4;sleep,0.1;smooth,0.1;diffusealpha,0.5;smooth,1;rotationz,0;zoom,1;sleep,0.5;smooth,1;diffusealpha,0;);
	};
		LoadActor("raveglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0;rotationz,90;zoom,4;smooth,0.1;diffusealpha,0.5;smooth,1;rotationz,0;zoom,1;sleep,0.5;smooth,1;diffusealpha,0;);
	};
		LoadActor("raveglow") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-100);
		OnCommand=cmd(diffusealpha,0.5;rotationz,90;zoom,4;smooth,1;rotationz,0;zoom,1;sleep,0.5;smooth,1;diffusealpha,0;smooth,1;diffusealpha,0.5;sleep,1;smooth,0.5;diffusealpha,0;zoom,0.6;);
	};
};

t[#t+1] = Def.Sprite {
	BeginCommand=function(self)
	sPath = GAMESTATE:GetCurrentSong():GetBannerPath() or  THEME:GetPathG("Common", "fallback banner")
	self:LoadBanner(sPath);
	end;
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100;cropto,256,80;shadowlength,1;diffusealpha,0);
	OnCommand=cmd(zoom,2.0;sleep,1;smooth,1;zoom,0.75;diffusealpha,1;decelerate,0.5;addx,-140;sleep,1;smooth,0.5;diffusealpha,0;);
	OffCommand=cmd(;);
};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(x,SCREEN_CENTER_X+107;y,SCREEN_CENTER_Y+100);
	LoadFont("Common Normal") .. {
		Text=GAMESTATE:GetCurrentSong():GetDisplayFullTitle();
		InitCommand=cmd(strokecolor,Color("Outline");y,-20;maxwidth,300);
		OnCommand=cmd(diffusealpha,0;sleep,1;smooth,1;diffusealpha,1;addy,10;sleep,1.5;smooth,0.5;diffusealpha,0;);
	};
	LoadFont("Common Normal") .. {
		Text=GAMESTATE:GetCurrentSong():GetDisplayArtist();
		InitCommand=cmd(strokecolor,Color("Outline");zoom,0.75);
		OnCommand=cmd(diffusealpha,0;sleep,1;smooth,1;diffusealpha,1;addy,10;sleep,1.5;smooth,0.5;diffusealpha,0;);
	};
};
	
t[#t+1] = LoadActor("_screenstage.ogg") .. {
        OnCommand=cmd(queuecommand,("Play"));
		PlayCommand=cmd(play;);
    };
	
t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#6BE0FE");diffusealpha,1);
		OnCommand=cmd(smooth,0.3;diffusealpha,0;);
};		

return t