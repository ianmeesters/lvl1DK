/*
* Converted from the original LUA script to a module for Azerothcore (Sunwell)
*/

#include "ScriptMgr.h"
#include "Player.h"
#include "Configuration/Config.h"
#include "Chat.h"

class Lvl1dk : public PlayerScript
{
public:
    Lvl1dk() : PlayerScript("Lvl1dk") { }

    void OnLogin(Player* player) override;
    void OnCalculateTalentsPoints(Player const* player, uint32& talentPointsForLevel) override;
};

void AddLvl1dkScripts()
{
    new Lvl1dk();
}
