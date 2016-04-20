%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Collin Barnwell & Jakub Jezusek
% crb331 & jjp855
% 04/18/2016
% Mental Thriller Fiasco Playset
% Inspired by Fight Club, Mr. Robot, etc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%Relationships
%%

roles_relation(drug_dealer/drug_addict).

roles_relation(cult_member/cult_member).

roles_relation(cult_member/cult_master).
right_unique(cult_member/cult_master).
implies(role(X, cult_master),
	role(X, cult_member)).

relation(alter_ego).
symmetric(alter_ego).
antireflexive(alter_ego).

relation(siblings).
symmetric(siblings).
antireflexive(siblings).

relation(roommates).
symmetric(roommates).
antireflexive(roommates).

roles_relation(hacker/hacker_hirer).

roles_relation(hitman/hitman_hirer).

roles_relation(anarchist/communist).

roles_relation(ghost/murderer).

roles_relation(ghost/son_or_daughter_of_ghost).
right_unique(ghost/son_or_daughter_of_ghost).
unique_role(ghost).

roles_relation(mob_boss/on_the_run_from_mob).
unique_role(mob_boss).

conflicting_roles([cult_member, cult_master]).
conflicting_roles([ghost, alter_ego]).
conflicting_roles([ghost, son_or_daughter_of_ghost, murderer]).
conflicting_roles([communist, anarchist]).
conflicting_roles([drug_dealer, drug_addict]).
conflicting_roles([ghost, mob_boss]).
conflicting_roles([ghost, cult_master]).
conflicting_roles([mob_boss, drug_dealer]).

contradiction(relationship(X, roommates, _),
	      role(X, mob_boss)).
contradiction(relationship(X, siblings, Y),
	      relationship(X, alter_ego, Y)).

implies(relationship(X, siblings, Y),
	relationship(X, close_friends, Y)).
implies(relationship(X, roommates, Y),
	relationship(X, close_friends, Y)).

%%
%Objects
%%
object(kilo_of_heroine).
object(revolver_one_bullet).
object(shotgun_empty).
object(access_to_a_government_database).
object(bloodied_weapon).
object(girlfriend_or_boyfriend_back_home).
object(suitcase_full_of_money).
object(at_least_a_billion_dollars).
object(stolen_hard_drive).
object(dead_man_in_your_basement).
object(the_fabled_penant_of_the_sacred_owl).

contradiction(role(X, mob_boss),
	      has(X, girlfriend_or_boyfriend_back_home)).

%%
%Needs
%%

need(money).
need(heroine).
need(avoid_cops).
need(avoid_mob_boss).
need(to_run_away_from_home).
need(revenge).
need(a_place_to_sleep).
need(find_out_where_you_came_from).
need(find_out_who_you_really_are).
role_need(ghost, finish_deed_left_undone).

contradiction(needs(C, money),
	      has(C, suitcase_full_of_money)).
contradiction(needs(C, money),
	      has(C, at_least_a_billion_dollars)).
contradiction(needs(C, avoid_mob_boss),
	      role(C, mob_boss)).
contradiction(needs(C, money),
	      role(C, mob_boss)).

%%
%Locations
%%
location(abadoned_soap_factory).
location(abadoned_arcade).
location(crack_den).
location(burned_down_apartment_complex).
location(dark_room).
location(office_building).
location(the_kitchen_of_a_fancy_restaurant).
location(anonymous_online_chatroom).
location(catholic_church).
location(crime_scene).
location(the_wealthy_part_of_town).
location(enterprise_software_convention).
