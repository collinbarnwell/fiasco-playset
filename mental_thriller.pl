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
right_unique(cult_member/cult_master).
roles_relation(ego/alter-ego).

relation(siblings).
symmetric(siblings).
antireflexive(siblings).

roles_realtion(hacker/hirer).
roles_relation(hitman/hirer).




roles_relation(ghost/murderer).
roles_relation(ghost/person_who_lost_father).
right_unique(ghost/person_who_lost_father).
unique_role(ghost).

%%
%Objects
%%
object(kilo_of_heroine).
object(revolver_one_bullet).
object(shotgun_empty).
object(seven_eleven_job).
object(access_to_a_government_database).
object(bloodied_weapon).


%%
%Needs
%%

need(money).
need(heroine).
need(crack).
need(protection_from_feds).
need(protection_from_mob_boss).

role_need(ghost, finish_deed_left_undone).

%%
%Locations
%%
location(abadoned_soap_factory).
location(abadoned_arcade).
location(crack_den).
location(burned_down_apartment_complex).
location(dark_room).

