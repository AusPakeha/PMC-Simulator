class CfgFunctions {
    class A3M {
        class data {
            class getData {};
            class setData {};
            class putData {};
            class delData {};
        };
        class main {
            class createList {};
        };
        class fleet {
            class buyVehicle {};
            class handleFleetPurchase {};
            class handleVModClick {};
            class handleFleetUIEvents {};
            class initFleetClass { preInit = 1; };
            class openFleetUI {};
            class vBuyButton {};
        };
        class store {
            class initStoreClass { preInit = 1; };
            class openStoreUI {};
            class handleStoreUIEvents {};
            class buyButton {};
            class buyItem {};
            class handleItemPurchase {};
            class handleIModClick {};
        };
        class travel {
            class initTravelClass { preInit = 1; };
            class openUI {};
            class handleUIEvents {};
        };
        class homepage {
            class initLaptopClass {};
            class openHUI {};
            class handleHUIEvents {};
        };
        class bank {
            class initBankClass { preInit = 1; };
            class openBankUI {};
            class handleBankUIEvents {};
        };
        class email {
            class initEmailClass { preInit = 1; };
            class openEmailUI {};
            class handleEmailUIEvents {};
        };
        class admin {
            class initAdminClass { preInit = 1; };
            class openAdminUI {};
            class handleAdminUIEvents {};
        };
        class treatment {
            class initTreatmentClass { preInit = 1; };
            class openTreatmentUI {};
            class handleTreatmentUIEvents {};
        };
        class player {
            class playerRespawn {};
        };
        class serviceCenter {
            class initSCClass { preInit = 1; };
            class openSCUI {};
            class handleSCUIEvents {};
            class garageEditor {};
            class reloadVehicle {};
        };
    };
    #include "scripts\LARs\LARs_spawnComp.cpp"
};

class SimTools_Compositions {
};
class LARs_spawnComp {
    tag = "LARs";
    class Compositions {
        file = "SimTools\Compositions\LARs\functions";
        class createComp{};
        class spawnComp{};
    };
    class Compositions_debug {
        file = "SimTools\Compositions\LARs\functions\Debug";
        class drawBounds{};
    };
    class Compositions_utilities {
        file = "SimTools\Compositions\LARs\functions\Utilities";
        class deleteComp{};
        class getCompObjects{};
        class getCompItem{};
        class getItemComp{};
    };
};
