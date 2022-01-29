-- Author: Xxxulu
-- Addon Name: "Guild Applicants Fix"
-- Version: 1.0.0

local GuildApplicantsFixAddonName, GuildApplicantsFixAddon = ...;
local CreateFrame = CreateFrame;

GuildApplicantsFixAddon.GAF = {};
local GAF = GuildApplicantsFixAddon.GAF;

GAF.version = "1.0.0";

GAF.GAFFrame = CreateFrame("FRAME", "GuildApplicantsFixFrame");

GAF.OnEvent = function(self, event, ...)
	if (event == "ADDON_LOADED") then
		local addonName = ...;
		
		if addonName == GuildApplicantsFixAddonName then
			self:UnregisterEvent("ADDON_LOADED");
			self:RegisterEvent("GUILD_ROSTER_UPDATE");
		end
	
	elseif (event == "GUILD_ROSTER_UPDATE") then
		local communitiesFrame = CommunitiesFrame;
		
		if communitiesFrame then
			--print ("GAF: Firing CLUB_FINDER_APPLICATIONS_UPDATED event");
			communitiesFrame:OnEvent("CLUB_FINDER_APPLICATIONS_UPDATED");
			--print ("GAF: Fired CLUB_FINDER_APPLICATIONS_UPDATED event to Blizzard Guild Roster");
		end
	end
end

GAF.GAFFrame:SetScript("OnEvent", GAF.OnEvent);
GAF.GAFFrame:RegisterEvent("ADDON_LOADED");
