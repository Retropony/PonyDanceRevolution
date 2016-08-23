local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("", "/icons/music")) .. {
		InitCommand=cmd(zoom,0.5;x,SCREEN_LEFT+34;y,SCREEN_TOP-40;shadowlength,1);
		OnCommand=cmd(decelerate,0.5;addy,74;sleep,0.5;);
		OffCommand=cmd(accelerate,0.5;addy,-74;);
	};
};

t[#t+1] = StandardDecorationFromFileOptional("StageDisplay","StageDisplay");
t[#t+1] = StandardDecorationFromFileOptional("SortOrder","SortOrderText") .. {
	BeginCommand=cmd(playcommand,"Set");
	SortOrderChangedMessageCommand=cmd(playcommand,"Set");
	SetCommand=function(self)
		local s = GAMESTATE:GetSortOrder()
		if s ~= nil then
			local s = SortOrderToLocalizedString( s )
			self:settext( s )
			self:playcommand("Sort")
		else
			return
		end
	end;
};

return t;

