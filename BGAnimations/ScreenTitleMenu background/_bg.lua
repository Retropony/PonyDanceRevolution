local t = Def.ActorFrame {};
t[#t+1] = Def.ActorFrame {
	LoadActor("_grid") .. {
	};
	LoadActor("_lightgrid") .. {
		InitCommand=cmd(rotationz,-90;);
		OnCommand=cmd(texcoordvelocity,0,0.5);
	};
	LoadActor("_lightgrid") .. {
		OnCommand=cmd(texcoordvelocity,0,0.36);
	};
};
	
return t