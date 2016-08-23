local fTileSize = 32;
local iTilesX = math.ceil( SCREEN_WIDTH/fTileSize );
local iTilesY = math.ceil( SCREEN_HEIGHT/fTileSize );
local fSleepTime = THEME:GetMetric( Var "LoadingScreen","ScreenInDelay");
local t = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=cmd(sleep,fSleepTime);
};

return t