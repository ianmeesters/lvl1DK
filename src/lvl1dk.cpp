#include "lvl1dk.h"



void Lvl1dk::OnLogin(Player* player)
{
    if (sConfigMgr->GetOption<bool>("Lvl1dk.AnnounceOnLogin", true) && (sConfigMgr->GetOption<bool>("Lvl1dk.Enable", true)))
        ChatHandler(player->GetSession()).SendSysMessage(sConfigMgr->GetOption<std::string>("Lvl1dk.OnLoginMessage", "This server is running a Lvl1dk Module.").c_str());
}

void Lvl1dk::OnCalculateTalentsPoints(Player const* player, uint32& talentPointsForLevel)
{
    talentPointsForLevel = player->GetLevel();
}


