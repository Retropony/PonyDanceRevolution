local ratio = SCREEN_WIDTH / SCREEN_HEIGHT

return Def.ActorFrame {
	LoadActor( "background" )..{
		InitCommand=cmd(Center;scaletoclipped,SCREEN_WIDTH,303.75*ratio;diffusealpha,1;);
		OnCommand=cmd(sleep,15.9;diffusealpha,0;);
	};
}