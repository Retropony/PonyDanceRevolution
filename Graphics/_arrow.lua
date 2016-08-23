local t = Def.ActorFrame {};
	
t[#t+1] = LoadActor("glowarrow") .. {
		OnCommand=cmd(diffusealpha,1;diffuseshift;effectclock,'beat';effectcolor1,color("1,1,1,0");effectcolor2,color("1,1,1,0.6"););
    	};
t[#t+1] = LoadActor("arrow") .. {
		OnCommand=cmd();
	};		
	
return t