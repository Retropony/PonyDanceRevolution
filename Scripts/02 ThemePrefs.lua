-- StepMania 5 Default Theme Preferences Handler with Custom Preferences (parce que je code avec le cul)
local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	BestPony =
	{
		Default = "pinkie",
		Choices = { "Adagio Dazzle", "Aloe", "Apple Bloom", "Applejack", "Aria Blaze", "Babs Seed", "Berry Punch", "BonBon", "Carrot Top", "Cheerilee", "Cheese Sandwich", "Cherry Jubilee", "Cloud Kicker", "Cloudchaser", "Coco Pommel", "ColoratuRara", "Countess Coloratura", "Daring Do", "Derpy Hooves", "Diamond Tiara", "Double Diamond", "Dr. Hooves", "Fleetfoot", "Flitter", "Fluttershy", "Lightning Dust", "Limestone Pie", "Lotus Blossom", "Lyra Heartstrings", "Marble Pie", "Maud Pie", "Minuette", "Moondancer", "Night Glider", "Nightmare Moon", "Nurse Redheart", "Octavia Melody", "Party Favor", "Pinkie Pie", "Princess Cadance", "Princess Celestia", "Princess Luna", "Queen Chrysalis", "Rainbow Dash", "Rarity", "Scootaloo", "Shining Armor", "Silver Spoon", "Soarin", "Sonata Dusk", "Spitfire", "Starlight Glimmer", "Sugar Belle", "Sunset Shimmer", "Sweetie Belle", "Tree Hugger", "Trixie Lulamoon", "Twilight Sparkle", "Vinyl Scratch" },
		Values = { "adagio", "aloe", "applebloom", "applejack", "aria", "babsseed", "punch", "bonbon", "carrottop", "cheerilee", "cheese", "cherry", "cloudkicker", "cloudchaser", "coco", "coloratura", "countess", "daringdo", "derpy", "diamondtiara", "doublediamond", "doctor", "fleetfoot", "flitter", "fluttershy", "lightning", "limestone", "lotus", "lyra", "marble", "maudpie", "minuette", "moondancer", "nightglider", "nmmoon", "nurse", "octavia", "partyfavor", "pinkie", "cadance", "celestia", "luna", "chrysalis", "dash", "rarity", "scootaloo", "shining", "silverspoon", "soarin", "sonata", "spitfire", "starlight", "sugarbelle", "sunset", "sweetie", "treehugger", "trixie", "twilight", "vinyl" }
	},
	ExtraModifier =
	{
		Default = "default,2x,reverse",
		Choices = { "Reverse (default)", "Speed 1.5x", "Hyper Speed 4x", "ASSHOLE", "No modifier" },
		Values = { "default,2x,reverse", "default,1.5x", "default,4x", "default,2x,drunk,dizzy,confusion,mini,50% tornado,tipsy,bumpy,beat,45% xmode,twirl,roll,wide,big,quick,bmrize,skippy,echo,stomp,planted,twister", "default"}
	},
	EEModifier =
	{
		Default = "default,2x,reverse",
		Choices = { "Reverse (default)", "Speed 1.5x", "Hyper Speed 4x", "ASSHOLE", "No modifier" },
		Values = { "default,2x,reverse", "default,1.5x", "default,4x", "default,2x,drunk,dizzy,confusion,mini,50% tornado,tipsy,bumpy,beat,45% xmode,twirl,roll,wide,big,quick,bmrize,skippy,echo,stomp,planted,twister", "default"}
	},
	ExtraStage =
	{
		Default = "failimmediatecontinue,norecover",
		Choices = { "No recover (default)", "6 lives", "5 lives", "4 lives", "No modifier" },
		Values = { "failimmediatecontinue,norecover", "failimmediate,6 lives,battery", "failimmediate,5 lives,battery", "failimmediate,4 lives,battery", "default"}
	},
	EEStage =
	{
		Default = "failimmediate,suddendeath",
		Choices = { "Sudden Death (default)", "3 lives", "2 lives", "1 life", "No modifier" },
		Values = { "failimmediate,suddendeath", "failimmediate,3 lives,battery", "failimmediate,2 lives,battery", "failimmediate,1 lives,battery", "default"}
	},
	JudgmentGraphic =
	{
		Default = "TM2",
		Choices = { "Stepmania 3.9", "In the Groove 2", "Pinkie Pie Style", "Simply Love", "Trotmania Chrystalize", "Trotmania III" },
		Values = { "3_9", "ITG2", "Pinkie", "Love", "TM2", "TM3" }
	},
	AutoSetStyle =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowStepsDisplay = 
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayShowScore =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ShowLotsaOptions =
	{
		Default = true,
		Choices = { OptionNameString('Many'), OptionNameString('Few') },
		Values = { true, false }
	},
	LongFail =
	{
		Default = false,
		Choices = { OptionNameString('Short'), OptionNameString('Long') },
		Values = { false, true }
	},
	NotePosition =
	{
		Default = true,
		Choices = { OptionNameString('Normal'), OptionNameString('Lower') },
		Values = { true, false }
	},
	ComboOnRolls =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FlashyCombo =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ComboUnderField =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	FancyUIBG =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	TimingDisplay =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GameplayFooter =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	GreatContinuesCombo =
	{
		Default = 'TapNoteScore_W3',
		Choices = { OptionNameString('GreatJudge'), OptionNameString('GoodJudge') },
		Values = { 'TapNoteScore_W3', 'TapNoteScore_W4' }
	},
	ArrowsNearCenter =
	{
		Default = true,
		Choices = { OptionNameString('EdgeOfScreen'), OptionNameString('CloseToCenter') },
		Values = { true, false }
	},
}

ThemePrefs.InitAll(Prefs)

function InitUserPrefs()
	local Prefs = {
		UserPrefScoringMode = 'DDR Extreme',
        UserPrefSoundPack   = 'default',
		UserPrefProtimingP1 = false,
		UserPrefProtimingP2 = false,
	}
	for k, v in pairs(Prefs) do
		-- kind of xxx
		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
		if GetPref(k) == nil then
			SetUserPref(k, v)
		end
	end

	-- screen filter
	setenv("ScreenFilterP1",0)
	setenv("ScreenFilterP2",0)
end

--[[ option rows ]]

-- screen filter
function OptionRowScreenFilter()
	local t = {
		Name="ScreenFilter",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = { THEME:GetString('OptionNames','Off'), '0.1', '0.2', '0.3', '0.4', '0.5', '0.6', '0.7', '0.8', '0.9', '1.0', },
		LoadSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local filterValue = getenv("ScreenFilter"..pName)
			if filterValue ~= nil then
				local val = scale(tonumber(filterValue),0,1,1,#list )
				list[val] = true
			else
				setenv("ScreenFilter"..pName,0)
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local pName = ToEnumShortString(pn)
			local found = false
			for i=1,#list do
				if not found then
					if list[i] == true then
						local val = scale(i,1,#list,0,1)
						setenv("ScreenFilter"..pName,val)
						found = true
					end
				end
			end
		end,
	};
	setmetatable(t, t)
	return t
end

-- protiming
function OptionRowProTiming()
	local t = {
		Name = "ProTiming",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = false,
		ExportOnChange = false,
		Choices = {
			THEME:GetString('OptionNames','Off'),
			THEME:GetString('OptionNames','On')
		},
		LoadSelections = function(self, list, pn)
			if GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn)) then
				local bShow = GetUserPrefB("UserPrefProtiming" .. ToEnumShortString(pn))
				if bShow then
					list[2] = true
				else
					list[1] = true
				end
			else
				list[1] = true
			end
		end,
		SaveSelections = function(self, list, pn)
			local bSave = list[2] and true or false
			SetUserPref("UserPrefProtiming" .. ToEnumShortString(pn), bSave)
		end
	}
	setmetatable(t, t)
	return t
end

--[[ end option rows ]]
