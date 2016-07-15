local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("headertitle") .. {
		InitCommand=cmd(zoom,0.5;x,SCREEN_LEFT-240;y,SCREEN_TOP-34;);
		OnCommand=cmd(decelerate,0.5;addy,74;smooth,0.5;addx,350;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
	LoadActor("headertimer") .. {
		InitCommand=cmd(zoom,0.5;x,SCREEN_RIGHT-80;y,SCREEN_TOP-34;);
		OnCommand=cmd(decelerate,0.5;addy,74;smooth,0.5;addx,-79;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
	LoadActor("timer") .. {
		InitCommand=cmd(zoom,0.5;x,SCREEN_RIGHT-34;y,SCREEN_TOP-40;);
		OnCommand=cmd(decelerate,0.5;addy,74;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
--[[ LoadActor("_pinkie") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X-472;y,SCREEN_BOTTOM-50;zoom,0.5;queuecommand,"Pinkie";);
		OnCommand=cmd(queuecommand,"Pinkie");
		PinkieCommand=cmd(sleep,60;linear,20;addx,954;sleep,0.001;addx,-954;);
		OffCommand=cmd(smooth,0.5;diffusealpha,0;stopcommand,"Pinkie";);
	};--]]
	LoadFont("_celestia redux 33px") .. {
		Name="HeaderText";
		Text=string.upper( Screen.String("HeaderText") );
		InitCommand=cmd(x,SCREEN_LEFT+80;y,SCREEN_TOP+30;horizalign,left;diffuse,color("#E1F6FD");maxwidth,320;shadowlength,1;);
		OnCommand=cmd(diffusealpha,0;zoomx,0;sleep,0.5;diffusealpha,1;smooth,0.5;zoomx,1);
		OffCommand=cmd(accelerate,0.5;addy,-74);
		UpdateScreenHeaderMessageCommand=function(self,param)
			self:settext(param.Header);
		end;
	};
};

return t