class RscTitles {
	//Single Currency
	class ZSC_Money_Display {
		idd = -1;
		fadeout=0;
		fadein=0;
		duration = 20;
		name= "ZSC_Money_Display";
		onLoad = "uiNamespace setVariable ['ZSC_Money_Display', _this select 0]";
		class controlsBackground {
			class ZSC_Status
			{
				idc = 4900;
				type = 13;
				size = 0.040;
				x = safezoneX + (safezoneW -0.35);
				y = safezoneY + 0.40 * safezoneW;
				w = 0.35; h = 0.20;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				style = 0x02;
				shadow = 2;
				font = "Zeppelin32";
				sizeEx = 0.023;
				class Attributes {
					align = "right";
				};
			};
		};
	};
	//Server Water mark
	class wm_disp {
		idd = -1;
		onLoad = "uiNamespace setVariable ['wm_disp', _this select 0]";
		fadein = 0;
		fadeout = 0;
		duration = 10e10;
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class wm_text2 {
				idc = 1;
				x = safeZoneX+0.027;//safeZoneW*0.01;
				y = safeZoneY+safeZoneH-0.16;
				w = 1.151*safeZoneH;
				h = 0.057*safeZoneH;
				shadow = 2;
				class Attributes
				{
					font = "EtelkaNarrowMediumPro";
					color = "00d5ff";
					align = "left"; // put "center" here if you want some background
					valign = "middle";
					shadow = 2;
				};
				colorBackground[] = { 1, 0.3, 0, 0 };  // uncomment and increase 4th number to have a background
				font = "EtelkaNarrowMediumPro";
				size = 0.06*safeZoneH;
				type = 13;
				style = 0;
				text="";
			};
		};
	};
	//Death Screen
	class DeathScr {
		  idd = -1;
		  movingEnable = 0;
		  duration = 10;
		  fadein = 2;
		  fadeout = 2;
		  name="DeathScr";
		  controls[]={"Picture"};
		  class Picture {
			x = safezoneX; y = safezoneY; w = safezoneW; h = safezoneH;
			text="IMG\DEATH\DeathScreen.jpg";
			sizeEx = -1;
			type=0;
			idc=-1;
			style=48;
			colorBackground[]={0,0,0,0};
			colorText[]={1,1,1,1};
			font="Bitstream";
		  };
	};
	//GUI
	class playerStatusGUI {
        idd = 6900;
        movingEnable = 0;
        duration = 100000;
        name = "statusBorder";
        onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
        class ControlsBackground {
			//FOOD BACKGROUND
            class RscPicture_1901: RscPictureGUI
            {
                idc = 1901;
                text = "IMG\GUI\status\status_bg.paa";
                x = 0.905 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;//2
                w = 0.075;
                h = 0.10;
            };
			//FOOD BORDER
            class RscPicture_1201: RscPictureGUI
            {
                idc = 1201;
                text = "IMG\GUI\status\status_food_border_ca.paa";
                x = 0.905 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;//2
                w = 0.075;
                h = 0.10;
            };
			//BLOOD BACKGROUND
            class RscPicture_1900: RscPictureGUI
            {
                idc = 1900;
                text = "IMG\GUI\status\status_bg.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//BLOOD BORDER
            class RscPicture_1200: RscPictureGUI
            {
                idc = 1200;
                text = "IMG\GUI\status\status_blood_border_ca.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93* safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//THIRST BACKGROUND
            class RscPicture_1902: RscPictureGUI
            {
                idc = 1902;
                text = "IMG\GUI\status\status_bg.paa";
                x = 0.935 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //1
                w = 0.075;
                h = 0.10;
            };
			//THIRST BORDER
            class RscPicture_1202: RscPictureGUI
            {
                idc = 1202;
                text = "IMG\GUI\status\status_thirst_border_ca.paa";
                x = 0.935 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //1
                w = 0.075;
                h = 0.10;
            };
			//TEMP BACKGROUND
            class RscPicture_1908: RscPictureGUI
            {
                idc = 1908;
                text = "IMG\GUI\status\status_bg.paa";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//TEMP BORDER
            class RscPicture_1208: RscPictureGUI
            {
                idc = 1208;
                text = "IMG\GUI\status\status_temp_outside_ca.paa";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//BROKEN LEG
            class RscPicture_1203: RscPictureGUI
            {
                idc = 1203;
                text = "IMG\GUI\status\status_effect_brokenleg.paa";
                x = 0.810 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,1};
            };
			//NOISE BACKGROUND
            class RscPicture_1205: RscPictureGUI
            {
                idc = 1205;
                text = "IMG\GUI\status\status_bg.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.825 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//VISIBLE BACKGROUND
            class RscPicture_1206: RscPictureGUI
            {
                idc = 1206;
                text = "IMG\GUI\status\status_bg.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.875 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            /*--------------------------------------------*/
            //SURVIVOR ICON
			class RscPicture_1307: RscPictureGUI
            {
                idc = 1307;
                text = "IMG\GUI\status\st_humanity_survivor.paa";
                x = 0.670 * safezoneW + safezoneX;
                y = 0.933 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
			//BANDIT ICON
            class RscPicture_1309: RscPictureGUI
            {
                idc = 1309;
                text = "IMG\GUI\status\st_humanity_bandit.paa";
                x = 0.713 * safezoneW + safezoneX;
                y = 0.933 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
			//ZOMBIE ICON
            class RscPicture_1310: RscPictureGUI
            {
                idc = 1310;
                text = "IMG\GUI\status\zombie.paa";
                x = 0.756 * safezoneW + safezoneX;
                y = 0.933 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
        };
        class Controls {
			//FOOD ICON
            class RscPicture_1301: RscPictureGUI
            {
                idc = 1301;
                //text = "IMG\GUI\status\status_food_inside_ca.paa";
                x = 0.905 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//BLOOD ICON
            class RscPicture_1300: RscPictureGUI
            {
                idc = 1300;
                //text = "IMG\GUI\status\status_blood_inside_ca.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//THIRST ICON
            class RscPicture_1302: RscPictureGUI
            {
                idc = 1302;
                //text = "IMG\GUI\status\status_thirst_inside_ca.paa";
                x = 0.935 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//TEMP ICON
            class RscPicture_1306: RscPictureGUI
            {
                idc = 1306;
                //text = "IMG\GUI\status\status_temp_ca.paa";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//BLOOD ICON - BLEEDING
            class RscPicture_1303: RscPictureGUI
            {
                idc = 1303;
                text = "IMG\GUI\status\status_bleeding_ca.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,0.5};
            };
			//NOISE ICON
            class RscPicture_1304: RscPictureGUI
            {
                idc = 1304;
                text = "IMG\GUI\status\status_noise.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.825 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//VISIBLE ICON
            class RscPicture_1305: RscPictureGUI
            {
                idc = 1305;
                text = "IMG\GUI\status\status_visible.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.875 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            /*-----------------------------------------------*/
            //SURVIVOR KILLS
			class RscText_1400: RscTextGUIK
            {
                idc = 1400;
                text = "1000";
                x = 0.683 * safezoneW + safezoneX;
                y = 0.931 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//BANDIT KILLS
            class RscText_1402: RscTextGUIK
            {
                idc = 1402;
                text = "1000";
                x = 0.726 * safezoneW + safezoneX;
                y = 0.931 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//ZOMBIE KILLS
            class RscText_1403: RscTextGUIK
            {
                idc = 1403;
                text = "1000";
                x = 0.769 * safezoneW + safezoneX;
                y = 0.931 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//BLOOD AMOUNT
			class RscText_1420: RscTextGUIK
            {
                idc = 1420;
                text = "1000";
                x = 0.915 * safezoneW + safezoneX;
                y = 0.842 * safezoneH + safezoneY;
                w = 0.040 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {0.8,0.07,0.06,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//HUMANITY AMOUNT
			class RscText_1421: RscTextGUIK
            {
                idc = 1421;
                text = "1000";
                x = 0.915 * safezoneW + safezoneX;
                y = 0.862 * safezoneH + safezoneY;
                w = 0.040 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//BLOOD LABEL
			class RscText_1423: RscTextGUIK
            {
                idc = 1423;
                text = "Blood:";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.842 * safezoneH + safezoneY;
                w = 0.08 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//HUMANITY LABEL
			class RscText_1424: RscTextGUIK
            {
                idc = 1424;
                text = "Humanity:";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.862 * safezoneH + safezoneY;
                w = 0.08 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
        };
	};
	/*
	//Group Management
	class DZGMHud_Rsc
	{
		idd = -1;
		movingEnable = 1;
		enableSimulation = 1;
		enableDisplay = 1;

		onLoad = "uiNamespace setVariable ['dzgmHudDisp',_this select 0];";

		duration = 99999999999999999;
		fadein  = 0;
		fadeout = 0;
		class controls
		{
			class Icons : w_RscStructuredText
			{
				idc = -1;
				style = 0x00;
				x = 0.9;
				y = 0.9;
				w = 0.9;
				h = 0.9;
				size = 0.08;
				colorBackground[] = {0,0,0,0};
				colortext[] = {0,0,0,0.7};
				text ="";
				class Attributes {
					align = "left";
				};		
			};
			class PlayerIcon00:Icons {idc = 46300 +  0;};
			class PlayerIcon01:Icons {idc = 46300 +  1;};
			class PlayerIcon02:Icons {idc = 46300 +  2;};
			class PlayerIcon03:Icons {idc = 46300 +  3;};
			class PlayerIcon04:Icons {idc = 46300 +  4;};
			class PlayerIcon05:Icons {idc = 46300 +  5;};
			class PlayerIcon06:Icons {idc = 46300 +  6;};
			class PlayerIcon07:Icons {idc = 46300 +  7;};
			class PlayerIcon08:Icons {idc = 46300 +  8;};
			class PlayerIcon09:Icons {idc = 46300 +  9;};
			class PlayerIcon10:Icons {idc = 46300 + 10;};
			class PlayerIcon11:Icons {idc = 46300 + 11;};
			class PlayerIcon12:Icons {idc = 46300 + 12;};
			class PlayerIcon13:Icons {idc = 46300 + 13;};
			class PlayerIcon14:Icons {idc = 46300 + 14;};
			class PlayerIcon15:Icons {idc = 46300 + 15;};
			class PlayerIcon16:Icons {idc = 46300 + 16;};
			class PlayerIcon17:Icons {idc = 46300 + 17;};
			class PlayerIcon18:Icons {idc = 46300 + 18;};
			class PlayerIcon19:Icons {idc = 46300 + 19;};
			class PlayerIcon20:Icons {idc = 46300 + 20;};
			class PlayerIcon21:Icons {idc = 46300 + 21;};
			class PlayerIcon22:Icons {idc = 46300 + 22;};
			class PlayerIcon23:Icons {idc = 46300 + 23;};
			class PlayerIcon24:Icons {idc = 46300 + 24;};
			class PlayerIcon25:Icons {idc = 46300 + 25;};
			class PlayerIcon26:Icons {idc = 46300 + 26;};
			class PlayerIcon27:Icons {idc = 46300 + 27;};
			class PlayerIcon28:Icons {idc = 46300 + 28;};
			class PlayerIcon29:Icons {idc = 46300 + 29;};
			class PlayerIcon30:Icons {idc = 46300 + 30;};
			class PlayerIcon31:Icons {idc = 46300 + 31;};
			class PlayerIcon32:Icons {idc = 46300 + 32;};
			class PlayerIcon33:Icons {idc = 46300 + 33;};
			class PlayerIcon34:Icons {idc = 46300 + 34;};
			class PlayerIcon35:Icons {idc = 46300 + 35;};
			class PlayerIcon36:Icons {idc = 46300 + 36;};
			class PlayerIcon37:Icons {idc = 46300 + 37;};
			class PlayerIcon38:Icons {idc = 46300 + 38;};
			class PlayerIcon39:Icons {idc = 46300 + 39;};
			class PlayerIcon40:Icons {idc = 46300 + 40;};
		};
	};
	*/
};