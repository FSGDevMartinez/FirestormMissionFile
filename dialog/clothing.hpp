class Life_Clothing {
	idd = 3100;
	name= "Life_Clothing";
	movingEnable = 1;
	enableSimulation = 1;
	//onLoad = "[] execVM 'core\client\keychain\init.sqf'";

	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 3 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 4.5 * GUI_GRID_H;
		};

		class MainBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = -22 * GUI_GRID_W + GUI_GRID_X;
			y = -7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 25 * GUI_GRID_W;
			h = 31 * GUI_GRID_H;
		};
	};

	class controls
	{
		class ClothingList : Life_RscListBox
		{
			idc = 3101;
			text = "";
			onLBSelChanged = "[_this] call life_fnc_changeClothes;";
			x = -21.5 * GUI_GRID_W + GUI_GRID_X;
			y = -7 * GUI_GRID_H + GUI_GRID_Y;
			w = 24 * GUI_GRID_W;
			h = 24.5 * GUI_GRID_H;
			sizeEx = 1.25 * GUI_GRID_H;
		};

		class PriceTag : Life_RscStructuredText
		{
			idc = 3102;
			text = ""; //--- ToDo: Localize;
			x = -21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			sizeEx = 1.25 * GUI_GRID_H;
		};

		class TotalPrice : Life_RscStructuredText
		{
			idc = 3106;
			text = "";
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 22 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			sizeEx = 1.25 * GUI_GRID_H;
		};

		class FilterList : Life_RscCombo
		{
			idc = 3105;
			colorBackground[] = {0,0,0,0.7};
			onLBSelChanged  = "_this call life_fnc_clothingFilter";
			x = -21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 24 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};

		class CloseButtonKey : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0; [] call life_fnc_playerSkins;";
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 20 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};

		class BuyButtonKey : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Buy";
			onButtonClick = "[] call life_fnc_buyClothes;";
			x = -21.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20 * GUI_GRID_H + GUI_GRID_Y;
			w = 11.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};

		class FrontButtonKey : Life_RscButtonMenu
		{
			idc = -1;
			text = "View Back";
			onButtonClick = "[] call life_fnc_viewBack;";
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = -7 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};

		class BackButtonKey : Life_RscButtonMenu
		{
			idc = -1;
			text = "View Front";
			onButtonClick = "[] call life_fnc_viewBack;";
			x = 3.5 * GUI_GRID_W + GUI_GRID_X;
			y = -5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10.5 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
		};
	};
};
