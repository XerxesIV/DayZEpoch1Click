/*** Created by 0verHeaT ***/
class SettingsDialog
{
	idd = 50000;
	movingenable = 0;
	onLoad = "uiNamespace setVariable ['SettingsDialog', _this select 0]";
	
	class Controls 
	{
		class RscText_50000: RscTextT
		{
			idc = -1;
			x = 0.266666 * safezoneW + safezoneX;
			y = 0.237037 * safezoneH + safezoneY;
			w = 0.466666 * safezoneW;
			h = 0.533333 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscStructuredText_50001: RscStructuredText
		{
			idc = 5100;
			x = 0.266666 * safezoneW + safezoneX;
			y = 0.237037 * safezoneH + safezoneY;
			w = 0.466666 * safezoneW;
			h = 0.059259 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RcsButton_50002: RcsButton
		{
			idc = -1;
			text = "Close";
			x = 0.650000 * safezoneW + safezoneX;
			y = 0.711111 * safezoneH + safezoneY;
			w = 0.066666 * safezoneW;
			h = 0.029629 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RcsButton_50003: RcsButton
		{
			idc = -1;
			text = "Info & Rules";
			x = 0.283333 * safezoneW + safezoneX;
			y = 0.711111 * safezoneH + safezoneY;
			w = 0.066666 * safezoneW;
			h = 0.029629 * safezoneH;
			onButtonClick = "call ClientRules; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscStructuredText_50004: RscStructuredText
		{
			idc = 5101;
			x = 0.525000 * safezoneW + safezoneX;
			y = 0.340740 * safezoneH + safezoneY;
			w = 0.191666 * safezoneW;
			h = 0.207407 * safezoneH;
			colorBackground[] = {0,0,0,0.1};
		};
		class RscStructuredText_50005: RscStructuredText
		{
			idc = 5102;
			x = 0.283333 * safezoneW + safezoneX;
			y = 0.340740 * safezoneH + safezoneY;
			w = 0.191666 * safezoneW;
			h = 0.207407 * safezoneH;
			colorBackground[] = {0,0,0,0.1};
		};
		class RscStructuredText_50006: RscStructuredText
		{
			idc = 5103;
			x = 0.283333 * safezoneW + safezoneX;
			y = 0.592592 * safezoneH + safezoneY;
			w = 0.325000 * safezoneW;
			h = 0.029629 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class RcsButton_50007: RcsButton
		{
			idc = -1;
			text = "Set";
			x = 0.650000 * safezoneW + safezoneX;
			y = 0.637037 * safezoneH + safezoneY;
			w = 0.066666 * safezoneW;
			h = 0.029629 * safezoneH;
			onButtonClick = "call ClientSetViewDistance; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscSlider_50008
		{
			idc = 5104;
			x = 0.283333 * safezoneW + safezoneX;
			y = 0.637037 * safezoneH + safezoneY;
			w = 0.325000 * safezoneW;
			h = 0.029629 * safezoneH;
			type = CT_SLIDER;
			style = SL_HORZ;
			color[] = {1,1,1,0.5}; 
			coloractive[] = {1,1,1,1};
			onSliderPosChanged = "call ViewDistanceUpdate;";
		};
	};
};

class RulesDialog
{
	idd = 50001;
	movingenable = 0;
	onLoad = "uiNamespace setVariable ['RulesDialog', _this select 0]";
	
	class Controls 
	{
		class RscText_50009: RscTextT
		{
			idc = -1;
			x = 0.266666 * safezoneW + safezoneX;
			y = 0.237037 * safezoneH + safezoneY;
			w = 0.466666 * safezoneW;
			h = 0.533333 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscStructuredText_50010: RscStructuredText
		{
			idc = 5105;
			x = 0.266666 * safezoneW + safezoneX;
			y = 0.237037 * safezoneH + safezoneY;
			w = 0.466666 * safezoneW;
			h = 0.059259 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RcsButton_50011: RcsButton
		{
			idc = -1;
			text = "Close";
			x = 0.650000 * safezoneW + safezoneX;
			y = 0.711111 * safezoneH + safezoneY;
			w = 0.066666 * safezoneW;
			h = 0.029629 * safezoneH;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RcsButton_50012: RcsButton
		{
			idc = -1;
			text = "Back";
			x = 0.283333 * safezoneW + safezoneX;
			y = 0.711111 * safezoneH + safezoneY;
			w = 0.066666 * safezoneW;
			h = 0.029629 * safezoneH;
			onButtonClick = "[] spawn player_clientsettings; ((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
		class RscStructuredText_50013: RscStructuredText
		{
			idc = 5106;
			x = 0.283333 * safezoneW + safezoneX;
			y = 0.325925 * safezoneH + safezoneY;
			w = 0.433333 * safezoneW;
			h = 0.355555 * safezoneH;
			colorBackground[] = {0,0,0,0.1};
		};
	};
};