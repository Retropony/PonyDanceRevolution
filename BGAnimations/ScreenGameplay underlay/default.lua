local text = ""
local SongNumberInCourse = 0

if GAMESTATE:IsCourseMode() then
	text = THEME:GetString("ScreenGameplay", "Stage") .. " 1"
else
	text = THEME:GetString("ScreenGameplay", "Event")
end

local t = Def.ActorFrame {};
	t[#t+1] = LoadActor("ScreenFilter");

	t[#t+1] = Def.Quad {
			InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
			OnCommand=cmd(sleep,0.3;smooth,1.2;diffusealpha,0;);
	};
	t[#t+1] = LoadActor("glow") .. {
		InitCommand=cmd(CenterX;y,SCREEN_TOP-20;diffuse,GameColor.PonyGlow[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;addy,66;);
	};
	t[#t+1] = LoadActor("frame") .. {
		InitCommand=cmd(CenterX;y,SCREEN_TOP-20;diffuse,GameColor.PonyMane[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.4;decelerate,0.3;addy,66;);
	};
if GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_OnePlayerTwoSides" or GAMESTATE:GetCurrentStyle():GetStyleType() == "StyleType_TwoPlayersSharedSides" or Center1Player() then
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "/ScreenWithMenuElements header/timer")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-140;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,-12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "/ScreenWithMenuElements header/timer")) .. {
		InitCommand=cmd(x,SCREEN_CENTER_X+140;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,-90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
else
	t[#t+1] = LoadActor("slot") .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-30;zoom,0;diffuse,GameColor.PonySkin[ ThemePrefs.Get("BestPony") ]);
		OnCommand=cmd(sleep,0.6;decelerate,0.6;zoom,0.6;);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("", "/ScreenWithMenuElements header/timer")) .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-30;zoom,0);
		OnCommand=cmd(rotationz,-90;sleep,0.6;decelerate,0.6;zoom,0.42;rotationz,12;smooth,0.3;zoom,0.4;rotationz,0;);
	};
end ;
	t[#t+1] = Def.ActorFrame{
		LoadFont("_celestia redux 33px")..{
		Text=text,
		InitCommand=cmd(CenterX;y,SCREEN_TOP+60;diffusealpha,0;strokecolor,color("#444444");zoom,0.6),
		OnCommand=cmd(sleep,3;linear,0.5;diffusealpha,1;),
		CurrentSongChangedMessageCommand=function(self)
			if GAMESTATE:IsCourseMode() then
				SongNumberInCourse = SongNumberInCourse + 1
				self:settext( THEME:GetString("ScreenGameplay", "Stage") .. " " .. SongNumberInCourse )
			end
		end
		};
	};
	
	t[#t+1] = LoadActor("_screenstage") .. {
        OnCommand=cmd(sleep,0.3;queuecommand,("Play"));
		PlayCommand=cmd(play;);
	};

	t[#t+1] = Def.Quad {
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
			OnCommand=cmd(smooth,0.3;diffusealpha,0;);
	};

return t