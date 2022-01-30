# Guild Applicants Fix Addon

## Blizzard Guild Applicants Disabled Bug

Many guilds are not able to invite guild applicants who have applied to join their guilds through the Blizzard Guild Finder. For some guilds, a bug exists in the Blizzard Guild Roster addon which causes the Guild Roster drop-down menu options to be greyed-out for the Applicants and Applicant History menu options. An orange diamond is displayed that indicates that guild applicants exist, but the Applicants menu options cannot be clicked, so the guild applicants cannot be displayed. This is very frustrating for guild officers not to be able to view the guild applicants and not be able to invite them to the guild. 

For some guilds, when the Blizzard Guild Roster addon calls the ```C_ClubFinder.RequestApplicantList(clubType)``` Lua API then it fails and it does **not** fire a ```CLUB_FINDER_APPLICATIONS_UPDATED``` event. This causes the Applicants drop-down menu options to be greyed-out and not able to be clicked on. This bug has not been fixed yet by Blizzard after several months, so it seems that there will be no bug fix soon.

## Bug Fix
As a temporary workaround, this _**GuildApplicantsFix**_ addon will automatically fire a ```CLUB_FINDER_APPLICATIONS_UPDATED``` event whenever a ```GUILD_ROSTER_UPDATE``` event occurs.
This will **enable** the drop-down menu list options for Applicants and Applicant History, so that they are **not** greyed-out and they are **clickable**. This allows the Guild Applicants list to be viewed and actioned by a guild officer to **invite** applicants to the guild.
The _**GuildApplicantsFix**_ addon will **auto-refresh** the Guild Applicants display when a new applicant is added to the list, when an applicant is invited by a guild officer and when an applicant is removed from the list.

Note: Click on the Blizzard Guild Roster tab to cause the Blizzard Guild Roster and Blizzard Guild Applicants to be loaded. The Applicants drop-down menu options will then be **enabled** with this  _**GuildApplicantsFix**_ addon installed.

## One-Line Macro Bug Fix Alternative
As an alternative to this addon you can make a one-line macro containing:

```/script CommunitiesFrame:OnEvent("CLUB_FINDER_APPLICATIONS_UPDATED");```

Then bind the macro to a key-combo or drag the macro to an action bar slot, so you can key-press or action-button-click whenever you want to **manually refresh** the Guild Applicants display.

Note: The one-line macro is a simple solution but it requires you to press or click a button each time that you want to refresh the Applicants display. 

This _**GuildApplicantsFix**_ addon is a **better workaround** because it will refresh the Guild Applicants display **automatically** for you, so that you do **not need a macro** and you do **not need to press/click a macro button to refresh the Guild Applicants display**.

## Blizzard Forum Posts

US Bug Report Forum:
[Guild “Applicants” Tab Greyed Out… AGAIN](https://us.forums.blizzard.com/en/wow/t/guild-applicants-tab-greyed-out-again/1145449/14 "Guild “Applicants” Tab Greyed Out… AGAIN") 

US Tech Support Forum:
[Guild Recruitment not working](https://us.forums.blizzard.com/en/wow/t/guild-recruitment-not-working/1143809/18 "Guild Recruitment not working")

EU Tech Support Forum:
[Guild Applicants and Guild Applicants History Missing](https://eu.forums.blizzard.com/en/wow/t/guild-applicants-and-guild-applicants-history-missing/329413/16 "Guild Applicants and Guild Applicants History Missing")

## Addon Source on GitHub

[GitHub GuildApplicantsFix Addon Source Code](https://github.com/Xatan/GuildApplicantsFix "GitHub GuildApplicantsFix Source Code")



___

