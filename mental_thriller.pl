%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Collin Barnwell & Jakub Jezusek
%jjp855
%04/18/2016
%Mental Thriller Fiasco Playset
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%Relationships
%%
roles_relation(drug_dealer/drug_addict).
roles_relation(cult_member/cult_member).
roles_relation(cult_member/cult_master).
roles_relation(ego/alter-ego).

relation(siblings).
symmetric(siblings).
antireflexive(siblings).






%%
%Objects
%%
object(kilo_of_heroine).
object(revolver_one_bullet).
object(shotgun_empty).
object(seven_eleven_job).


%%
%Needs
%%

need(money).
need(heroine).
need(crack).
need(protection_from_feds).
need(protection_from_mob_boss).

%%
%Locations
%%
location(abadoned_soap_factory).
location(abadoned_arcade).
location(crack_den).
