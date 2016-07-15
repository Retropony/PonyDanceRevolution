local t = Def.ActorFrame{};

if GAMESTATE:GetCoinMode() ~= 'CoinMode_Home' then
t[#t+1] = Def.ActorFrame {
	Name="ArcadeOverlay.Text";
	InitCommand=function(self)
		ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen")
	end;
	LoadFont("Common Normal") .. {
		InitCommand=cmd(zoom,0.75;shadowlength,1;glowshift;strokecolor,Color("Outline");diffuse,Color("Orange");diffusetopedge,Color("Yellow");textglowmode,'TextGlowMode_Inner');
		Text="...";
		OnCommand=cmd(playcommand,"Refresh");
		CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
			local bReady = GAMESTATE:GetNumSidesJoined() > 0;
			if bCanPlay or bReady then
				self:settext(THEME:GetString("ScreenTitleJoin","HelpTextJoin"));
			else
				self:settext(THEME:GetString("ScreenTitleJoin","HelpTextWait"));
			end
		end;
	};
};
end;

return t;