
-- LVL 1 DK

local ENABLE_LVL_1_DK = true

local ANNOUNCE_ON_LOGIN = true
local ANNOUNCEMENT = "This server is running the |cFF00B0E8Lvl1DK |rlua script."


if not ENABLE_LVL_1_DK then return end


local function lvl1Dk(event, player)
    if (ANNOUNCE_ON_LOGIN and event) then
        player:SendBroadcastMessage(ANNOUNCEMENT)
    end
    
    if event == 30 and player:GetClass() == 6 then
        -- Do quest that lets you leave DK starting area
        player:AddQuest(12801)
        player:CompleteQuest(12801)
        player:RewardQuest(12801)
        
        -- Remove starter DK items
        player:RemoveItem(38633, 1)
        player:RemoveItem(34652, 1)
        player:RemoveItem(34650, 1)
        player:RemoveItem(34656, 1)
        player:RemoveItem(34653, 1)
        player:RemoveItem(34649, 1)
        player:RemoveItem(34648, 1)
        player:RemoveItem(34651, 1)
        player:RemoveItem(34655, 1)
        player:RemoveItem(34659, 1)
        player:RemoveItem(34657, 1)
        player:RemoveItem(34658, 1)
        player:RemoveItem(38147, 1)
        player:RemoveItem(41751, 10)
        player:RemoveItem(38145, 4)

        -- Remove all spells except blood strike
        player:RemoveSpell(48266) -- Blood Presence
        player:RemoveSpell(49410) -- Forceful Deflection
        -- player:RemoveSpell(55095) -- Frost Fever
        player:RemoveSpell(45477) -- Icy Touch
        player:RemoveSpell(61455) -- Runic Focus
        -- player:RemoveSpell(55078) -- Blood Plague
        player:RemoveSpell(47541) -- Death Coil
        -- player:RemoveSpell(50977) -- Death Gate
        player:RemoveSpell(49576) -- Death Grip
        player:RemoveSpell(45462) -- Plague Strike
        
        player:AddItem(6948) -- Hearhstone

        -- Add & equip lvl 1 item set
        player:EquipItem(23212, 3) -- Shirt
        player:EquipItem(6126, 6) -- Pants
        player:EquipItem(20898, 7) -- Feet
        player:EquipItem(1386, 15) -- 2h Axe

        -- Setup random account things
        player:SetCoinage(0)
        player:SetLevel(1)

        -- Tele player to correct (A/H) city
        if player:IsAlliance() then
            player:Teleport(0, -8833.37, 628.62, 94.00, 1.06) -- Stormwind
        elseif player:IsHorde() then
            player:Teleport(1, 1637.62, -4440.22, 15.78, 2.42) -- Ogrimmar
        end
    end
end


RegisterPlayerEvent(3, lvl1Dk) -- PLAYER_EVENT_ON_LOGIN
RegisterPlayerEvent(30, lvl1Dk) -- PLAYER_EVENT_ON_FIRST_LOGIN
