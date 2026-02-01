--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: ability_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ability_type (ability_type) FROM stdin;
Passive
Active
Arcane
\.


--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abilities (id, name, type, description, energy_cost, range, pulse, once_per_turn, once_per_game, needs_reloading) FROM stdin;
e2836c92-af85-425c-867d-e6d27678749c	Exsanguinating Claws	Passive	If this character deals Slicing or Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
8b627890-a50a-40cf-95de-2ef14553f3f8	Weeping Miasma	Passive	Whilst this model is in play, friendly Faeries treat enemies with at least one Bleed as gaining +1 to their Evade Stat.	\N	\N	f	f	f	f
efb6024d-b8a0-4893-82dc-636e9b520bd7	Ghastly Scream	Arcane	\N	4	6	f	f	f	f
07c617ed-3ac2-4117-aaa0-eb8f31821e27	Ear Splitting Screech	Arcane	\N	3	6	f	f	f	f
629ac625-dd80-4ae7-9bc2-4720ab0e5375	Barnacle Encrusted Shell	Passive	Reduce all non-Magical Dmg suffered by -1.	\N	\N	f	f	f	f
17c882d9-b4c9-4ae7-84a2-ed35421dbdf3	Stocked to the Gills	Active	Target Pirate with the Reload [...] ability may immediately use the Reload [...] ability without spending energy.	1	4	f	t	f	f
8f175c12-22b0-44dc-b5da-900a09dd411b	Junk Toss	Arcane	\N	1	4	f	t	f	f
0eebec3b-60cc-4758-8600-105ca0a59472	Gone Fishin'	Arcane	Resolve this action with +2 Arcane Stat if there is a Water Feature within 4" of this model.	2	4	f	f	f	f
66d1068a-caa5-4dac-9ca6-9c49cd804f0b	Two Heads are Better than One	Passive	During a round of Melee, after cards are drawn but before they are revealed, you may discard 1 energy to play 2 different cards. If you do, after cards are revealed you may choose which card is used. The other card is discarded.	\N	\N	f	f	f	f
12b72919-4ca4-4e63-9541-31e2baf67889	Cleaver & Club	Passive	If this character deals Impact or Slicing Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
6cd1d4ef-edac-4371-9556-87c3fd38a19a	Fortunate	Active	Look at the top 3 cards of the Arcane Deck. Put any number on the top of the deck in any order and put the remainder on the bottom of the deck in any order.	1	\N	f	t	f	f
62e6276f-2954-4d96-9743-756b5cf860a3	Valhalla!!	Passive	When another friendly Norse or a friendly Young Jack within 6" starts a Jog action, it may move +2", provided the move ends with the character engaging an enemy. (Models with Slow are still limited to 2" as normal).	\N	\N	f	f	f	f
89d7f0c3-6361-46f2-8b9a-c78653c90bf8	Buttermilk Elixir	Arcane	\N	2	6	f	f	f	f
eb229ab3-f139-4ece-9973-93613656b645	Cockatrice Companion	Passive	When targetting an enemy character that has no energy with a Melee Attack or Petrifying Gaze action, increase any Dmg dealt by +1.	\N	\N	f	f	f	f
eef59a42-8a08-429f-875a-2fe5a2a3f138	Petrifying Gaze	Arcane	\N	2	4	f	f	f	f
ceacfbbb-a05d-46ff-8b68-2702da9960f9	Wily Old Weasel	Passive	If a friendly Rogue takes an Arcane action within 6" you may reduce its energy cost by -1.	\N	\N	f	t	f	f
a8eda789-87a5-4a7b-a662-15e2df291d7f	Blinding Powder	Arcane	\N	1	4	f	f	f	f
fe433bf9-4478-4612-84de-7f7cb4ad3ca5	Premonition	Passive	If an enemy character declares this model as a target of an action, you may interrupt the action to make a reaction step by discarding one energy. If you do, the enemy must complete the action if possible and may not choose a new target.	\N	\N	f	f	f	f
f86a93ac-9edb-4d53-9032-ca094f9a319a	The Bigger They Are...	Passive	During a round of melee with an enemy that has Evade Stat +1 or higher, this character ignores Weakling, deals +X Melee Dmg and reduces all Melee Dmg suffered by -X, where X is the Evade Stat of the enemy.	\N	\N	f	f	f	f
49ce94f9-548c-4383-8b96-d63af2b45fc1	Sedatives	Passive	Whilst this model is in play, the first time each enemy gains Weakling in a turn, they lose 1 energy.	\N	\N	f	f	f	f
c7e394f7-882a-4e21-b05a-b02c34b1a4b6	Sleepy Time	Arcane	This attack is not modified by Evade Stat.	3	6	f	t	f	f
24260115-9127-4cc9-8970-02bcf8b54296	Spirits of the Fallen	Passive	Once per turn this model may use an Arcane Ability printed on a friendly slain model, ignoring any Once Per Game restrictions, paying its cost as normal.	\N	\N	f	f	f	f
9050d7df-f10d-4197-aca5-6e41693734b6	Reload [Faerie Fire Pistol]	Passive	The name ability can be used again. This ability cannot be used while engaged.	\N	\N	f	f	f	f
d7cdb62f-e0cb-4aa2-9d82-887d300c7f75	Faerie Fire Pistol	Arcane	\N	1	8	f	f	t	f
215c3950-afa9-4a41-a4f2-cbd1fa6e896b	Poor Unfortunate Souls	Arcane	\N	3	6	f	t	f	f
89821dda-f52d-467b-a866-9e55dde52d72	Digger	Passive	When this model takes a Harvest action, flip an Arcane Card and reduce the Depth Value by X, where X is the value of the card.	\N	\N	f	f	f	f
29283a14-28a5-41be-a784-1b120e2a0deb	Chaaarge!!	Active	Move this model 4" directly towards target enemy model. If this character’s next action this turn is a Melee Attack against the same target it deals +2 Dmg.	2	\N	f	f	f	f
b47200ab-2b9d-4a56-a597-143b9b4b71e0	Conservation	Passive	If a friendly Animal within 4" and LoS suffers Dmg, you may have this character suffer all that Dmg instead.	\N	\N	f	t	f	f
11418c12-71e5-456e-8b8d-a1adef6f907f	Healing	Arcane	\N	2	8	f	f	f	f
fa0f082f-11c2-4cbe-ae5d-06b91bc309e2	Symbiosis	Arcane	\N	4	8	f	f	f	f
2f0e303e-30b1-45e2-b1c8-264f01024dea	Explorer's Handbook	Passive	When this character uses an Arcane Ability targetting a friendly Animal that is not at full health, you may reduce the energy cost by -1.	\N	\N	f	t	f	f
f7a0afd4-238c-452a-af63-142a8b577133	Shifter	Passive	This character may Jog over Water Features and Wooded Patches.	\N	\N	f	f	f	f
c5aec934-55a7-45ba-844a-8672f6758d53	Reload [Shoot Crossbow]	Active	The named ability can be used again. This ability cannot be used while this model is engaged.	2	\N	f	f	f	f
769a00e8-f3a9-471e-9154-10c4f1e69dac	Chaaarge!!	Active	Move this model 4" directly towards target enemy model. If this character’s next action this turn is a Melee Attack against the same target it deals +2 Dmg.	2	6	f	f	f	f
58fb8e9f-4c4c-4726-b6d2-990cbe046c8a	X Marks The Spot	Active	Target Moonstone or enemy in possession of a Moonstone. All friendly Pirates within 4" of the target move 1" directly towards it.	2	8	f	f	f	f
8460cd01-c813-4f6c-a48d-9fd08518b268	Treasure Map	Passive	Immediately after models have been deployed but before turn 1 begins, you may have a friendly Pirate take a free bonus Jog action.	\N	\N	f	f	f	f
dac6fb03-ce1e-4cda-bb19-a75d09d831f4	Evolution [Grub]	Passive	This character cannot be taken into a Troupe containing the named character or vice versa.	\N	\N	f	f	f	f
31a77003-a096-4441-afe1-9466169fac15	Wither	Arcane	\N	3	6	f	f	f	f
1ca7b52a-eeaf-4321-97f9-414b9c69a132	Storm of Fae Blades	Passive	If this character deals Slicing or Piercing Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
715a1b54-9faf-4bbd-a2b7-b755dccd96fb	Dance in Concert	Passive	When another friendly Faerie within 6" makes a Reaction Step whilst engaged by an enemy model, this character may spend the energy instead of the Faerie performing the Reaction Step.	\N	\N	f	f	f	f
612d3939-4dd3-4d22-85ab-5ee5d620a65e	Perfect Form	Passive	After a friendly Faerie within 6" reveals a Melee Card, it may discard 1 energy then swap the revealed card with a Melee Card in hand.	\N	\N	f	f	t	f
964dfbed-0500-48d8-a87b-c7d5939d4629	Perplex	Active	Target loses 1 energy. Then another friendly Faerie within 6" of the target gains that much energy.	3	6	f	f	f	f
5fd6f9ca-7761-49d5-b9d6-a36daeecdee2	Rusty Anchor	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
94c9ab8d-7fbc-4f31-9f07-9f649bd8869d	Bedeviled Seas	Passive	At the start of the Replenish Step this model gains +1 energy if there is a Water Feature within 4".	\N	\N	f	f	f	f
51064fd4-7b6f-49b8-b08e-143f347c2313	Rise From The Deep	Passive	When this character uses Reanimate it may place the model entering play within a Water Feature within 4" instead of base contact. When this model or another friendly model enters play via Reanimate within a Water Feature it gains +1 energy and may Jog freely over Water Features until end of turn.	\N	\N	f	f	f	f
d3fbd78c-f8df-4e81-8451-c8d55eeefaf3	Dead Troll's Finger	Arcane	\N	2	4	f	t	f	f
b2ec9be1-85ce-49bb-b19e-8a614e3bba43	Dirk	Passive	If this character deals Slicing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
7a5d828a-339f-41d5-8d2c-b740f05ca5ba	Shoot Crossbow	Arcane	\N	1	14	f	f	t	f
0462eebf-6b74-47aa-b51f-9e30d6e15324	Reload [Blunderbuss]	Active	The named ability can be used again. This ability cannot be used while this model is engaged.	2	\N	f	f	f	f
25d28622-77d7-4453-a761-33ebe6ecb35a	Bingy	Passive	When making a Reaction Step whilst engaged by an enemy, this model may spend (0) energy instead of (1).	\N	\N	f	t	f	f
e4f80d09-5929-4e49-b129-8a8c9842622f	Boingy	Active	Place this model within 2" and LoS. This model cannot take Harvest actions until end of turn.	2	\N	f	t	f	f
83e7ce59-e14e-4e96-a4ff-390172484a50	Astrazan Tactics	Passive	This character immediately takes a Melee Attack or Blunderbuss action against an enemy in range, without spending energy. In either case, increase any Dmg dealt by +2, then place this model within 1" of itself and LoS after resolving the attack.	\N	\N	f	t	f	f
a6e01e3b-92e5-4e7c-b630-f38537b01ecb	Sun Shield	Passive	If this character suffers Impact or Magical Dmg, reduce the Dmg suffered by -1.	\N	\N	f	f	f	f
527148d7-d1c1-4310-a13b-d78e2ecb0c38	Volta	Passive	Reduce Piercing Dmg suffered by -2.	\N	\N	f	f	f	f
02330b23-1456-487a-8638-a0f151becdc1	Weakling	Passive	Reduce all Melee Dmg this character deals by -1. Harvest actions cost this model +1 energy.	\N	\N	f	f	f	f
b76ae28c-ef2b-4ab9-978a-1fec177479c1	Needle	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
843d016b-7b0e-4313-b464-a4907a4e65d2	Enfeeble	Arcane	\N	3	4	f	f	f	f
24da9082-4166-4e15-bac6-465fbe03dba4	Spirit Link	Passive	During the Replenish Step, this character gains +1 energy for each friendly slain character.	\N	\N	f	f	f	f
abf92569-9e5d-4869-94af-e3f32a1861c1	Rigor Mortis	Arcane	\N	3	6	f	f	f	f
078f860f-fb39-4c40-8b0a-9cc6f6954b62	Reanimate	Arcane	\N	3	\N	f	f	f	f
bcc7aca2-e2a0-47e9-a9d4-85fada01a054	Ancestral Shield	Passive	Reduce all Dmg suffered by -1.	\N	\N	f	f	f	f
7c341a3d-921e-4a60-937a-ab5aceded11c	Magic Brew	Arcane	\N	1	\N	f	t	f	f
560433cb-8af6-4fd4-ab59-a56056fd0f13	Ancestral Sword	Passive	If this character deals Slicing Melee Dmg, increase the Dmg dealt by +2. If this character deals Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
7562a546-ccac-4e60-8120-6675ae339eac	Lucky	Active	Look at the top 5 cards of the Arcane Deck. Put any number on the top of the deck in any order and put the remainder on the bottom of the deck in any order.	1	\N	f	t	f	f
0944c9f2-fcae-4c6c-a617-8bee4065ee50	Brute Strength	Passive	Increase all Melee Dmg dealt by +2.	\N	\N	f	f	f	f
e8f0cde7-b8b0-4484-abbd-3df0bd5fdd34	Ooga-booga!	Active	Move target enemy Goblin 2" directly away.	1	4	f	f	f	f
68865207-a89d-4522-aace-685cdd0a35d3	Butterfingers	Arcane	\N	2	6	f	f	f	f
c8e6886d-62f0-4b46-8686-1291848dde5c	Roley-Poley	Passive	Move 2" then reduce this character's Evade Stat by -2 until end of turn.	\N	\N	f	f	f	f
9fb2e9fb-a0e4-4e91-8fd2-973a0d8b928a	Juggling fate	Active	Gain +2 energy. Draw the top 3 cards of the Arcane Deck, look then place them face down: one on the top of the deck, one on the bottom of the deck and one besides this character card. At any point you can add the removed card to your Arcane or Arcane Resist Hand. If you do then at the end of the action, or if this character is slain, shuffle the card back into the Arcane Deck.	4	\N	f	f	f	f
56334d68-17be-4f7c-84c8-a2037cf7c22a	Transconbobulate	Arcane	\N	3	8	f	f	f	f
8b74c045-5faa-48b3-abdb-544cd324e5cd	Goblin Luck	Arcane	\N	2	8	f	f	f	f
13751d60-d856-4ca8-a496-0df424f97530	Goblin Mischief	Arcane	Deal an Arcane Card to each Goblin within the Pulse. They receive the following effects, then shuffle the cards back into the Arcane Deck.	2	6	t	t	f	f
2376b30d-2acf-4b06-a6cb-fd6b95c791fe	Whispered Secrets	Arcane	\N	2	6	f	t	f	f
7cca7c3b-1c1a-464d-9d44-2a207ff248ce	Short 'n Stabby	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
bee09d61-74ea-435c-9e87-7e2931a1bf09	Where’d You Come From!?	Arcane	\N	2	6	f	f	f	f
76965395-2818-4be6-961a-c7047c27ccd4	Arcane Reflection	Passive	If an enemy player targets this model with a Arcane Ability, after energy is spent but before Arcane Cards are drawn, you may discard 3 energy to reverse the caster and target (i.e. you play their Arcane Ability targeting them).	\N	\N	f	f	f	f
81bd4fef-fce4-444d-8e0d-ca5935f9d629	Enchanted Dagger	Passive	All Melee Dmg generated by this model count as Magical instead of the listed Dmg type.	\N	\N	f	f	f	f
6c636bf0-f5da-4664-a38c-0920fd994276	Javelin	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
e59bf74c-48d6-464c-968e-fcda87e0e4a2	Rage	Active	Target Faerie loses Weakling until end of turn.	3	8	f	f	f	f
a0dc4bc7-fda7-4757-b446-6d7123f6f9e3	Ancient Armour	Passive	Reduce all Dmg suffered by -1.	\N	\N	f	f	f	f
e806a732-d4e6-4b72-a9de-8812370941f0	Summon Reinforcements	Arcane	This action cannot bring a character into play if it is already in play.	2	\N	f	f	f	f
1b67693e-5ba2-44af-850b-74c6e2aa998c	Longsword	Passive	If this character deals Slicing or Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
21934a5d-8a8f-46d6-920b-eaf3dc358ba3	A Bone to Pick with You	Passive	Friendly Soldiers and Risen within 6" gain +1 Arcane Stat if targeting an enemy character that is not at full health and +1 Melee Stat if involved in a round of melee with an enemy character that is not at full health.	\N	\N	f	f	f	f
2b8eadec-1dea-4975-942b-01a058d2ee59	Runes of Power	Arcane	\N	1	8	f	f	f	f
d264d1dc-bd92-4b20-ab82-d4af59efffaa	A Generous Offer	Arcane	This attack is not modified by the evade stat.	1	2	f	t	f	f
f58b84e2-3fcf-439a-87df-96ddcb7513f3	Shower of Gold	Active	Target a single point on the board within 6" and LoS of this model. All other models within 4" of the chosen spot move 2" directly towards that point. The Kaufman player chooses the order of the moves.	2	6	f	f	f	f
5e3451fa-b2d2-471b-ac73-6f554d945aac	Money Bag	Active	Place a 30mm diameter Bag of Gold token within 6" and LoS of this model. The token remains in play but is immediately removed if any model is in base contact with it. Whenever another model takes a Jog or Step action while within 6" and LoS of a Bag of Gold token, it may not end the move further from the nearest Bag if Gold than it began.	2	6	f	f	f	f
287870ea-120a-4e0e-80ca-356f1be749af	Recluse	Passive	At the start of the Replenish Step this model gains +1 energy if there are no other models within 3".	\N	\N	f	f	f	f
f0ce8c12-15e1-4007-a6fa-7f602e59be1d	Trollish Remedies	Arcane	\N	3	8	f	t	f	f
96097772-8f72-475f-bf25-f3ee5133c448	Mimic	Arcane	\N	0	\N	f	t	f	f
44f59f56-447a-4627-b7e1-fd3ab7e0e206	Seen It All Before	Passive	If this character is attacker or defender in a round of melee, before each player selects their combat card, your opponent must reveal their hand.	\N	\N	f	f	f	f
9e42e0dc-15ba-4e9b-9acd-29edd10d9d78	Clumsy Cluts	Active	Target gains Weakling until end of turn.	2	6	f	f	f	f
20e6b69a-536f-4aab-9026-174f9cf0d554	Field Medic	Arcane	\N	1	4	f	f	f	f
77ffbe7f-5709-49d0-8e4e-c7c287713b70	Butterfingers	Passive	\N	\N	\N	f	f	f	f
d827e642-e991-45c4-951c-549b4cc5d87d	Reload [Blunderbuss]	Active	The named ability can be used again. This ability cannot be used while this model is engaged.	2	\N	f	f	f	f
3ed97f94-dbfd-4314-8074-cc1c40a768d1	Ramming Speed	Arcane	Move this model 6" directly towards target enemy model. If base contact is made with the target, flip an arcane card. The target suffers X+1 Impact Dmg then is moved X" directly away, where X is the value of the flipped card.	3	6	f	f	f	f
a56e8be7-0ad9-4073-842a-d310a4e7bf8a	High-ho Silver	Arcane	\N	2	\N	f	f	f	f
b3f80756-2ff3-4894-865e-576ea1e3ff70	Foul Gases	Active	All models within the pulse suffer 2 Magical Dmg.	2	2	t	f	f	f
718728f1-158e-46c2-84bc-6e8ca6408f13	Magic Resistance	Passive	Reduce Magical Dmg suffered by -1.	\N	\N	f	f	f	f
0f3763db-ab92-46bd-8c90-59e1d1bf8898	Stand Back!	Active	All other models within the pulse move 1" directly away.	1	2	t	t	f	f
566344e2-3388-465c-a472-3b1d3885350b	Faerie Tricks	Active	Swap places with target friendly Rogue.	2	8	f	f	f	f
ce03a185-0bf5-4612-8485-5f53dc955340	Acid Flask	Arcane	\N	3	4	f	f	f	f
a40962d6-2262-4a91-9971-3417ee630917	Drop of NightShades	Arcane	\N	3	1	f	f	f	f
36d04ea0-9e53-4bd9-8e5b-1f8954828759	Blunderbuss	Arcane	\N	1	4	f	f	t	f
80b4d117-38ff-4883-97bc-377b091d0620	Suckerpunch	Active	Target Goblin’s next Melee Attack this turn deals +2 Dmg.	2	8	f	f	f	f
1dfa68b8-e75f-4bf9-8670-fef6168a2cf9	You’ll never get this! Nah-na-na-na!	Arcane	\N	2	10	f	f	f	f
6de1b56e-e2b2-4712-91ea-7485331bf54c	Rejuvenate	Arcane	\N	3	8	f	f	f	f
c8afd7ac-02ae-496c-a97a-5419663aede7	Enchanted Javelin	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +2. Whenever this character deals any Piercing Dmg it may deal the same amount of Magical Dmg instead.	\N	\N	f	f	f	f
0cfd8fe4-7b66-4f7e-b286-305c0b18baaf	Leshavit's Shield	Passive	If this character would suffer Dmg, you may reduce that Dmg to ∅.	\N	\N	f	f	t	f
a31dbc90-9ece-47c8-aab2-2bc10ff54a50	Fireblast	Arcane	This ability cannot be used while this model is engaged.	2	8	f	f	f	f
0ee6fe18-6097-4236-85a6-0476f14ee502	Shoot Musket	Arcane	\N	1	12	f	f	t	f
ba15123a-d0af-430b-ad99-09a4996bf2a1	Reload [Shoot Musket]	Active	The named ability can be used again. This ability cannot be used while this model is engaged.	2	\N	f	f	f	f
4626a279-b4c8-4ac4-b319-bc9e02070ec3	Dizzy Spell	Arcane	\N	2	6	f	f	f	f
8f5b2545-b9e2-4211-84f1-3919e95e4a71	Fizzle-Pop	Arcane	\N	2	6	f	f	f	f
2f0f4ca8-7b62-4c73-a9fd-f30c5134c26f	Sage Advice	Passive	Friendly models within 4" may ignore Catastrophe effects.	\N	\N	f	f	f	f
592e01ef-f89f-4758-953a-bf81bd683dba	Snare Traps	Arcane	This attack is not modified by Evade Stat or Cover.	2	14	f	f	f	f
b7ca35ea-8359-4601-b2cd-4c6b60f45f4f	Smell a Lie	Passive	Enemy models targeting this model, or a model within 2", must reveal the arcane card as it is played.	\N	\N	f	f	f	f
88e7174e-91c8-4e3a-87a5-19bb9102e4b3	Quilted Armour	Passive	Reduce Slicing Dmg suffered by -1.	\N	\N	f	f	f	f
d376bfa6-4b60-4705-a2b1-1f4d6af35b72	Bug Spray	Arcane	This attack is not modified by Evade Stat or Cover.	2	2	f	f	f	f
759ae15e-d43b-4f2b-b71c-d49ec74c346b	Enchanted Secateurs	Passive	All Melee damage generated by this model count as Magical instead of the listed type.	\N	\N	f	f	f	f
766c31c2-25ae-4428-b248-e9d92588815b	Miner	Passive	When this model makes a Harvest action, gain possession of the Moonstone regardless of its depth value. This model ignores the Slow Carry rule whilst in possession of exactly one moonstone.	\N	\N	f	f	f	f
81097b4b-f4f5-40e6-b7aa-447d637b0038	Pick	Passive	If this character deals Slicing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
a8a02bc5-d831-410c-81bf-c69f8497ff90	Shove	Active	Move target other model 2" directly away.	0	1	f	t	f	f
788d5244-6a32-4b2f-98ac-3edf5cfa7054	Disappear in a Crowd	Passive	This character’s Evade Stat is -[#], where [#] is the number of other models within 3", excluding the originator of the ability.	\N	\N	f	f	f	f
d207527c-5619-48fd-b88d-f2db9faa5dd1	Slingshot	Arcane	\N	2	6	f	f	f	f
ca8fce0e-f9dc-45bc-a99f-a2bd1fc94b5c	Fire Cannon!	Arcane	\N	2	8	f	f	f	f
3eb94fe2-b0cf-4cb1-bea5-1f31221ee132	Woodspirit	Passive	This character may jog over Wooded Patches. Friendly Treefold within 12" ignore Wooded Patches and other friendly Treefolk for determining cover when using Arcane Abilities.	\N	\N	f	f	f	f
3413ee2a-a7c3-42ad-87ef-7dc9233c3583	We are Ruwt	Passive	Each time this character would be slain, it may instead drop any Moonstones as if it were slain and restore half it's health rounding up if it can be placed within a Wooded Patch created earlier this game within 12". Then remove the Wooded Patch.	\N	\N	f	f	f	f
5dfab766-7ccd-42f9-bd44-7150e142e9fc	Verdant Growth	Arcane	\N	2	\N	f	f	f	f
f5195cb5-26ca-4b1c-93f9-c898d6f76dfc	arhammer	Passive	If this character deals Slicing or Piercing Melee Dmg, reduce the Dmg to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
282757fa-fd67-432f-b4c0-a0cd5bb6b601	Ornithophobia	Passive	Whenever a Goblin character ends a move engaged by this model, for the first time this turn, it must discard 1 energy, if able.	\N	\N	f	f	f	f
d823054a-301b-46ac-9da4-2c797d38802e	Yell Out Commands	Active	Move target friendly non-Noble 1". If the target is a friendly Soldier move it 2" instead. You may only target each character once per turn.	1	6	f	f	f	f
fdae8484-1e4c-4f17-bcdb-f6ca0656ce07	Windfoot	Passive	This character may jog over Wooded Patches.	\N	\N	f	f	f	f
60333347-48a0-4ddf-8cb1-4605371790a8	Splintered Branches	Passive	If this character deals Impact or Piercing Melee dmg, increase the dmg dealt by +1.	\N	\N	f	f	f	f
8f9b6919-ae56-48b6-b8d9-c9525341f361	Deadwood Curse	Arcane	\N	3	8	f	f	f	f
a75affce-af02-4bb7-ab1b-1a9d56a0dda5	Buckler	Passive	Enemy characters cannot count Critical Hits against this character.	\N	\N	f	f	f	f
1792c0b6-977f-4e91-bff6-34a75b456d22	Cutlass	Passive	If this character deals Slicing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
5be3eccc-cd2a-435d-b1d4-7224193fb8b1	Inferiority Complex	Passive	If this character deals Melee Dmg to a Noble, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
4e344c93-0eb6-4032-b6d2-39f766aa62c5	Razor Claws	Passive	If this character deals Slicing Melee Dmg, increase the Dmg dealt by +2. If this character deals Impact or Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
14d8eab2-a540-475a-9678-2134262e19a2	Quite Terrifying	Passive	Whenever a non-Giant, non-Troll enemy character ends a move engaged by this model, for the first time this turn, it must discard 1 energy, if able.	\N	\N	f	f	f	f
ed39a831-f174-4899-b4a5-65fdb7cc1332	Intimidate	Active	Target Human or Goblin suffers -2 Arcane Stat and gains [Predictable Combatant: During a round of combat, before each player selects their combat card, you must reveal your hand to your opponent.] until end of the turn.	2	4	f	f	f	f
0df2c2c6-f463-4b9d-9d90-51a2930d720e	Network of Spies	Passive	Gain +1 to your initiative roll each turn.	\N	\N	f	f	f	f
c5373a42-34f1-49db-9aa8-84d82e07152b	Succubus	Arcane	\N	3	8	f	f	f	f
db7c16d1-6aaf-4edb-8476-63e3ea3974d1	Tough Skin	Passive	Reduce all Dmg suffered by -1.	\N	\N	f	f	f	f
b6e317ec-6ece-42e1-bb4c-7342f482f635	Calcify	Passive	Models engaged by this character during the Replenish Step generate -1 energy.	\N	\N	f	f	f	f
f355ce68-ffb4-40fc-a3dc-bd6c44156749	Pixie-Elf Elixer	Arcane	\N	2	\N	f	t	f	f
8f87de7d-d569-4092-b619-20c814ea6ee7	Revenge of the Forest Friends	Arcane	This attack is not modified by Cover.	2	18	f	f	f	f
b6cab585-32e1-4d26-8d55-3922af63d4cc	Älskling	Passive	Reduce all Dmg this character would suffer by -1 for each other friendly Gnome or Animal within 4", to a maximum of -2.	\N	\N	f	f	f	f
158720ac-d4b6-4286-be95-460385c7c99c	My Boys	Passive	Reduce all Dmg this character would suffer by -1 for each other friendly Gnome within 4", to a maximum of -2.	\N	\N	f	f	f	f
4fab4aae-fec8-4528-a36c-f9d48578bcc8	Cunning	Arcane	\N	3	8	f	f	f	f
a049585f-6beb-443b-9efa-8c62ca593c46	Bludgeon	Passive	If this character deals Slicing or Piercing Melee Dmg, reduce the Dmg to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
297e71e0-4581-4520-98ae-45384def045e	Expel	Passive	Whenever any character suffers a Catastrophe, after resolving the action, draw an Arcane card for each Catastrophe suffered. Look, then place it face down besides this character card. At any point you can add the removed card to your Arcane or Arcane Resist Hand. If you do then at the end of the action, or if this character is slain, shuffle the card back into the Arcane Deck. This character can hold a maximum number of cards at any time equal to the current turn number; if an additional card is drawn, choose a card to shuffle back into the Arcane Deck.	\N	\N	f	f	f	f
62687980-fb3e-4888-ada6-6420a26ea441	Amphibious	Passive	This character may Jog freely over Water Feature terrain and gains +1 energy during the Replenish Step if any part of its base is within a Water Feature.	\N	\N	f	f	f	f
d4857f97-ea34-41d7-95d3-7ae4de19aa07	Vomit	Arcane	\N	2	4	f	f	f	f
0c314540-dc50-4149-a989-38d9bf5b9694	Scaly Skin	Passive	Reduce non-Impact Dmg suffered by -1.	\N	\N	f	f	f	f
ef86ee53-ac3b-4680-ada0-147587aa6363	Rending Claws	Passive	If this character deals Melee Dmg, increase the Dmg dealt by +1. Melee Dmg from this character counts as Magical instead of the listed type.	\N	\N	f	f	f	f
1697df63-c002-4b20-88f4-2026dbf01898	Mind Control	Active	Target model immediately takes any action available to them that would normally have an energy cost of (1). This action is controlled by you even if the target is an enemy (they count as a friendly model for the duration of the action).	3	6	f	f	f	f
4f0454fe-f440-407c-b62e-f4d5b29ccfd7	Enticing Offer	Arcane	\N	2	10	f	f	f	f
9a2e3da5-acf3-42b8-acc0-979edbf29fc3	Drink Your Fill	Arcane	\N	1	2	f	t	f	f
904696c9-1275-4f27-a0ac-5110b9dfee46	Slightly Maddening	Passive	You may make one opponent re-roll their die when determining who activates first.	\N	\N	f	f	t	f
1b55ea63-1f92-464d-92bf-fe028f5353b1	Plant the Placard	Active	Move all other friendly characters within the pulse up to 1". This character cannot take Jog or Step actions, or make a Reaction Step until end of turn.	2	6	f	t	f	f
abea60ee-40ae-4256-a2eb-1419d98453d2	Bell Ringer	Arcane	\N	2	4	t	f	f	f
f80ccb5a-1676-49cc-97a5-2de4054784d8	The End is Nigh	Arcane	\N	4	\N	f	f	f	f
ac6648d0-54cf-405c-9066-ec5e0735d359	Look at the Shiny Thing	Passive	f this character is in possession of one or more Moonstones during the Replenish Step, you may have another friendly character within 4" and LoS gain +1 energy.	\N	\N	f	f	f	f
e092a6b7-4b91-45e6-a864-86bbe920915f	Seasick	Arcane	\N	2	6	f	f	f	f
1bc65806-8989-4c5f-8201-d7e6c2b208ab	Harpoon	Passive	If this character deals Impact or Slicing Melee Dmg, reduce the Dmg dealt by -1. If this character deals Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
02d69b81-d9ff-46bc-9a3d-c963cdfea140	Rough Tides	Arcane	\N	2	6	f	f	f	f
9e6a20c7-553c-4c9b-88b4-9d5a033bd340	Bawdy Jokes	Active	All Goblins within the pulse are moved 1" directly towards this model. Then, all other Goblins within 1" gain +1 energy.	2	4	t	t	f	f
8e164788-c206-4451-a6ca-518a872bbc52	Royal Privilege	Passive	Whenever this character would suffer Dmg, you may have a friendly Goblin within 4" and LoS suffer all that Dmg instead.	\N	\N	f	t	f	f
7c31d2c7-8ff6-4c1e-83a7-5ad992f94997	Sceptre of Almighty Power	Passive	If this character deals Slicing Melee dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
59499867-a0a7-4b33-a160-3b943e51b561	Gimme!	Active	Gain possession of one Moonstone carried by the target friendly Goblin.	2	8	f	f	f	f
81304296-2b63-4e28-bf3a-a491bd98defb	Flea Infested Pelt	Passive	Reduce Magical and Slicing Dmg suffered by -1.	\N	\N	f	f	f	f
7b468905-45e6-4c84-ac0f-b66692009a8e	Honour Amongst Thieves	Passive	Friendly Rogues within 6" gain +1 Arcane Stat.	\N	\N	f	f	f	f
66edb008-9cb3-4f35-98bf-fda480cc9c89	Sneaking	Active	This character gets -2 Evade Stat until end of turn.	1	\N	f	f	f	f
d756ffff-15b3-482c-8b93-6ded5fe59e64	Squeaking	Active	Move target enemy 1". Reaction Steps cannot be declared in response to this action.	1	6	f	f	f	f
026fda6b-a6dd-4d83-b0c9-987cb8bed56b	Sewer Rat	Active	You may only play this ability if Muridae is inside a building. This character is Removed From Play. At the start of the next Replenish Step, return this character to play inside any building.	1	\N	f	f	t	f
d1b6802a-aa3c-45de-8e93-4293fa9a7ee5	Plunder	Arcane	\N	1	2	f	f	f	f
b6da4112-3cbe-4143-b09a-5729b1e3ba68	Look of Innocence	Passive	When an enemy targets this character with an action, the active enemy model must discard 1 energy or the action is cancelled.	\N	\N	f	f	f	f
ac222a7f-d860-40ec-8ec4-58074eeba541	The Bright Side of Death	Passive	Immediately after models have been deployed but before turn 1 begins, friendly characters with Reanimate gain [Reanimate Jobie (0): Place a friendly slain Jobie in base contact with this model. Restore all it's health. It gains +2 energy. It may activate this turn. A friendly Jobie may only enter play via Reanimate Jobie once per turn], until end of game.	\N	\N	f	f	f	f
1067b5cc-e8b9-4aa2-a115-4fab25c09e15	A Cunning Plan	Active	This model may place one Moonstone it is in possession of, within 2" of itself at depth value of ‘1’. Then it is immediately slain.	1	\N	f	f	f	f
2afdff82-c2ee-4512-b823-185c29eb32bc	That's Mine, This is Mine	Active	This model gains possession of one Moonstone it is in base contact with, regardless of its depth value or enemy engagements.	3	\N	f	f	f	f
93fb7c60-aede-4e00-82c9-9394d9da676f	Second Hand Pistol	Arcane	\N	2	6	f	f	f	f
13585f6f-fd5c-4374-8319-694d34f576aa	Slow	Passive	This model's Jog actions are limited to 2".	\N	\N	f	f	f	f
74d3b976-7f16-4a8e-9dee-0945234f3c80	Whisper to the Wild Things	Active	Move target Animal 3".	2	8	f	f	f	f
5cd48606-9a6c-447e-ba1f-7784bc116783	Shadow Walk	Arcane	\N	2	\N	f	f	f	f
213f03c6-a752-477f-bc7b-c3967f1ff568	Smothering Darkness	Arcane	\N	3	6	f	f	f	f
df3b6626-41e5-4e25-9b9c-e141a5efa290	Ye Scurvy Dogs	Passive	Other friendly Goblin Pirates within 4" during the Replenish Step gain +1 energy.	\N	\N	f	f	f	f
94fc8b4d-51fc-4072-a511-64a2f1cd46c9	Hit	Active	This character’s next Melee Attack this turn deals +2 Dmg.	1	\N	f	t	f	f
4a71206f-4198-4fed-8870-b3277d698f6b	Shoot Pistol	Arcane	\N	1	8	f	f	t	f
5f2670df-e678-41f9-b2ee-0ecf5b4a4b7d	One with the Wind	Arcane	\N	2	8	f	f	f	f
d8cd28b6-7e4b-459d-8f7b-02c0653b06a4	Giant-Forged Blades	Passive	If this character deals Piercing or Slicing Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
000bef0e-0f1c-474f-b1c8-fae31dbc9551	Loyalty	Passive	If this character takes a Reaction Step it may move 3" directly towards the nearest friendly Noble instead of the normal 1" move.	\N	\N	f	f	f	f
e22b5337-d6c8-4a48-a8a0-d5240326b4fc	Shelter of the Shadowglade	Arcane	\N	3	6	f	f	f	f
4674e9fd-6458-4f2b-bbe5-4f39dbf1b7d7	Atrophy	Arcane	\N	3	6	f	f	f	f
fae4ff2b-8c1a-404c-9827-46672fc95bdf	Scry	Active	Draw the top card of the Arcane Deck, look then place it face down besides this character card. At any point you can add the card to your Arcane or Arcane Resist hand. If you do then at the end of the action, or if this character is slain, shuffle the card back into the Arcane Deck.	4	\N	f	f	f	f
14ef3034-8575-45de-a095-fd5cdeb5e710	Ethereal Allure	Arcane	\N	3	8	f	f	f	f
daa5bf22-ebe1-4c39-ad40-09a8ac1c0a2c	Shoot Bow	Arcane	This ability cannot be used while this model is engaged.	3	10	f	f	f	f
9064813e-12fd-4b1e-9b9f-0d273d8b8e9a	Claw and Hook	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
db50ae51-cbc0-4ae0-b2fd-063b82afae54	Pinch	Arcane	\N	2	2	f	f	f	f
bb6af0d2-5263-4dfd-aade-10642e3490f1	Punch	Arcane	\N	1	2	f	f	f	f
892691e9-cee6-4362-8065-104a850415fb	Egged-On	Passive	This character gains +1 Melee Stat for each other friendly Cultist within 6".	\N	\N	f	f	f	f
e747a2cc-bf4b-4346-af00-2cb29fd13742	Hold my Beer	Active	All characters within the Pulse suffer 1 Catastrophe printed on their card. The Klaus player chooses the catastrophe if a character has several, the targets if required and the order in which all effects occur.	4	4	t	f	f	f
6e463b30-7d1a-4a9f-ae23-8d90405a22ed	Feed on Fear	Arcane	\N	1	6	f	t	f	f
b1555c82-32af-4692-8743-1f9c5e0fb5a8	Horrifying Visions	Arcane	\N	2	6	f	f	f	f
ef9998f7-63b8-43f9-a21d-8de3b5cfb061	Blind Faith	Passive	This character may not take Harvest or Jog actions unless there is a friendly model within 4".	\N	\N	f	f	f	f
217257ca-5f06-421b-91b9-810f0ff3d6f5	Rouse	Active	Target Faun or Animal restores 1 wound and gains +2 energy.	3	6	f	f	f	f
0bf94a3e-6681-4f77-819f-e870d9eaf58d	Censer Chain	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
39e66a21-6452-402a-b56b-bd9492495c19	Righteous Fury	Active	This character gains +3 energy, +1 Melee Stat, +1 Arcane Stat and +1 to Melee Dmg until end of turn.	3	\N	f	t	f	f
88b7fded-17dc-45dc-bf1b-704dfe681b76	Haul In	Arcane	\N	1	3	f	f	f	f
a34ad0df-5beb-449b-a320-529def100d25	Herd Master	Passive	This character gains +1 energy during the Replenish Step for each friendly Murder Bunny in play.	\N	\N	f	f	f	f
ca62cf64-8616-4818-bd8c-e95f624e2cd5	Shepherd's Crook	Passive	If this character deals Slicing or Piercing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
b943a114-6080-47ce-97bc-71f6865f6d0b	Summon a Murder Bunny	Arcane	\N	3	\N	f	f	f	f
3a881f67-2015-4455-91ff-de1eca39dd75	Summon the Jackalope	Arcane	This action can only be taken if there is no friendly Jackalope in play.	5	\N	f	f	f	f
a4145c55-b5e1-49fc-a400-cf72ccf96746	Asleep on the Job	Passive	This model may not be chosen to be the player's first activation unless it is the only model which can activate. When this character activates it gets +1 Melee Stat and reduces it's Evade Stat by -1 until end of turn.	\N	\N	f	f	f	f
6f5b19c7-1c53-41a8-a1ac-58b71961722d	Halberd	Passive	If this character deals Piercing or Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
e6439629-8ffe-487d-a54c-49e10b1c9def	Secret Stash	Passive	This character cannot lose possession of a Moonstone due to an enemy model unless slain.	\N	\N	f	f	f	f
ccec4ac7-2be9-419b-a0e8-6adc43a40a02	Goblin City Guard	Passive	If a Goblin in possession of a Moonstone within 4" and LoS suffers Dmg, you may have this character suffer all that Dmg instead.	\N	\N	f	t	f	f
109bdc6f-03b3-4490-ab5e-f5aa02572fba	Stand to Attention!	Active	Target other friendly Goblin gains +1 energy. If the target is a Soldier it may also move 2".	2	4	f	t	f	f
c757f4fa-61ff-4b74-b850-cca491b3db36	Pirate Mascot	Passive	When another friendly Pirate within 8" makes a Melee Attack they may gain +2 Melee Stat for the action, or if they are targeted by an Arcane Ability, they may gain -1 Evade Stat for the action.	\N	\N	f	t	f	f
a8770842-db87-4611-9a1b-2640749c9436	Swig o' rum	Arcane	\N	2	2	f	f	f	f
6f6413fd-3fa8-4b65-a4d4-b816cecd930e	Agility	Passive	This character may move freely over Obstacles and Wooded Patches during Jog actions. Traverse actions cost this character 1 less energy.	\N	\N	f	f	f	f
91ed7b4b-a71f-48cd-9aac-af8f0ca43765	Summoned Being	Passive	You cannot choose this character for your Troupe.	\N	\N	f	f	f	f
9316bd1f-528d-4a5a-ab48-fa879e32b002	Blood Drinker	Passive	If an enemy is slain during a round of melee by this character, then this character gains +3 energy.	\N	\N	f	f	f	f
fe20f07d-22d1-4ff0-b162-b0e17f344614	Friskal Stimulus	Passive	When this character is involved in a round of melee it gains +X Melee Stat and reduces all Melee Dmg suffered by -X, where X is the number of Moonstones the enemy character is in possession of.	\N	\N	f	f	f	f
59fe01ae-ec91-4008-b294-85514537777c	Income Tax	Active	Target enemy character in possession of at least one Moonstone cannot take the Jog or Step Action or take Reaction Steps until end of turn. The enemy character may immediately spend X energy to cancel this effect, where X is the number of Moonstones they are in possession of. If they do, this character gains that much energy.	0	8	f	t	f	f
2f081dee-72a8-4e25-8b8d-0272defd7b8b	Stinger	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
9a592e5f-e14f-4ff7-ac66-86e5b8c43640	Antagonise	Active	Target gains +1 Melee Stat and +1 Evade Stat until end of turn.	1	6	f	f	f	f
1eef2f9a-6941-4382-9999-4ff1aff102af	Out of Reach	Active	This character cannot be targeted by a Melee Attack action and does not benefit from cover until end of turn.	1	\N	f	f	f	f
38f01485-d5c3-46e2-9276-d19d58b6e79e	Throw Javelin	Arcane	\N	2	6	f	f	f	f
1f4116ac-9ec8-4d57-8054-be873c915f45	Summoner's Delight	Passive	If the character that summoned this model is Slain or Removed from Play then this character is immediately considered to be Slain.	\N	\N	f	f	f	f
bb31bdea-f067-4e2b-a6c6-49ff6ae36993	Bearskin	Passive	Reduce non-Piercing Dmg suffered by -1.	\N	\N	f	f	f	f
df403b12-a04b-42c7-83b2-a2ae64b64ce0	Bear Charge	Active	Move this model 3" directly towards target enemy model. The target cannot play Signature Moves until end of this character's activation.	1	4	f	f	f	f
08491f73-81ab-4dcf-a99e-787101e825ef	Throwing Axe	Arcane	\N	2	4	f	f	f	f
b8973f7b-8f5d-4517-bd9a-6aeab69695b6	Vitality Draw	Arcane	\N	2	8	f	t	f	f
3131bf75-4132-44f1-b5c5-5c245fb9055f	Victimise	Active	Target gets +2 Evade Stat until end of turn.	2	8	f	f	f	f
4dae6e2a-94e3-47b2-9f55-31ff3064693f	Incubus	Arcane	\N	2	8	f	f	f	f
04904fec-802b-4ad3-83d0-d93f22568ef8	Divine Intervention	Passive	When an enemy targets this character with an Arcane Ability, or uses an Arcane Ability within 4" of this model, if your resist hand includes two or more Catastrophe cards, you may reveal them to cancel the ability and inflict the catastrophe result on the active character.	\N	\N	f	f	f	f
a05c9c53-c3bc-4512-b85c-64f9653e41a0	Candy Apples	Arcane	\N	3	8	f	f	f	f
bd5b58a9-11d4-49be-9d30-c8906d767d8a	Visions of the Present	Arcane	\N	3	6	f	f	f	f
6d2242fb-43a5-41c1-acf3-8cbc17cfbcf6	Puppeteer	Arcane	\N	2	8	f	f	f	f
cf406764-50fe-4b89-97df-7cf2219d30e4	Visions of the Past	Arcane	\N	2	6	f	f	f	f
0cd29bf5-2787-455a-8c99-48bd947f8690	Reload [Bolt Thrower]	Active	The named ability can be used again.	2	\N	f	f	f	f
11236699-8292-43e5-be8f-f4bef5422e45	Dropping Bombs	Arcane	\N	2	2	t	f	f	f
9365e02f-318c-4792-902c-142252412958	Bolt Thrower	Arcane	This attack is not modified by Cover.	1	10	f	f	t	f
8ce38614-175f-4e73-ba20-6dc5c818b0cf	Up, Up & Away	Passive	This character may move freely over all terrain and other miniatures during Jog and Step actions, provided it does not end the move with the base overlapping another model or barrier terrain. It cannot take the Harvest action or the Melee Attack action, cannot be targeted by Melee Attack actions and does not engage enemy models or become engaged by enemy models. It does not block LoS, provide Cover, or suffer from Falling. When targeted by Arcane actions, this character does not benefit from Cover.	\N	\N	f	f	f	f
36116281-3182-420c-92fa-6708196344d2	Hunting Horn	Arcane	This ability cannot be used while this model is engaged.	1	8	f	t	f	f
c755b4ce-9894-498f-bc86-61b7c9d31aaa	Furious Charge	Active	Move this model 3" directly towards target enemy model. If this character’s next action this turn is a Melee Attack against the same target then it deals +1 Dmg.	1	4	f	f	f	f
2eda5a96-eaae-4be0-9f67-ec292493cbc6	Razor Sharp Antlers	Passive	If this character deals Piercing Melee Dmg increase the Dmg dealt by +2.	\N	\N	f	f	f	f
c1046171-bb13-4d14-9926-03ef94af83b1	Hippity	Passive	You may move freely over intervening obstacles and models during Jog actions provided bases do not overlap at the end of the move.	\N	\N	f	f	f	f
8d1b382c-58bb-406e-b122-1d9c07c9521e	Fluffy	Passive	Reduce Impact Dmg suffered by -1.	\N	\N	f	f	f	f
22fa3301-6a72-44dc-8cc6-049dcd4afd5f	Burrowing Claws	Passive	This model gains posession of one Moonstone it is in base contact with regardless of its depth value. This ability cannot be used while this model is engaged.	\N	\N	f	f	f	f
db4ffb1f-7872-4f02-a546-009a8453ec69	Hop	Active	Move this model 4". You may move freely over intervening obstacles and models provided bases do not overlap at the end of the move.	2	\N	f	t	f	f
3fbed669-421f-427c-bb07-b8dc8fac87f2	Goblin Jazz Funk Solo	Active	All other models within the pulse move 1" directly away.	1	2	t	t	f	f
7a7c7654-89a6-4e8c-9480-a967a696b50b	Lullaby	Arcane	\N	1	6	f	t	f	f
1a3e486a-7f96-4e86-b492-139eb4e3fb7d	Blighted Elixir	Arcane	\N	1	2	f	t	f	f
77108372-1fb2-4421-bb6e-d1d6d7e3f135	Librarian's Scorn	Arcane	\N	1	6	f	f	f	f
9b2cabc5-85a7-408a-b382-243b8d144892	Caustic Contract	Arcane	\N	1	6	f	f	f	f
2d376265-59f4-4e79-8ac5-10e5d6fa6202	Energy Syphon	Arcane	Target a friendly model. Flip an Arcane card and redistribute up to X energy from that model to any combination of models within 8", where X is the value on the card.	0	8	f	t	f	f
8939b344-7c62-4be5-b645-f76fad95fb81	Poking Stick	Passive	If this character deals Slicing Melee Dmg, reduce the Dmg dealt to ∅.	\N	\N	f	f	f	f
aca4439d-a9ac-4220-8a3a-cd57e1a92b87	Visions of the Future	Active	Target other friendly character immediately suffers one Catastrophe printed on their card. If it requires a target, you may choose any target that meets the ability’s requirements.	2	8	f	t	f	f
6cabf681-8485-4010-872e-5990d04a7a60	Link to the Present	Passive	If a friendly Antonia, Noonday Witch was taken in this troupe at the start of the game then this character gains +1 energy during each Replenish Step.	\N	\N	f	f	f	f
785f9ed0-28ee-44d2-8469-b55f1fa4e727	Violent Impulse	Arcane	\N	1	\N	f	f	f	f
5a067454-0896-476e-8c8e-b598cabdd50b	Woodfoot	Passive	This character may jog over Wooded Patches.	\N	\N	f	f	f	f
52f16178-2664-4100-b031-08f775b24022	Ponderous	Passive	This character cannot take Reaction Steps.	\N	\N	f	f	f	f
6d3d0c6d-fb99-49e6-8d82-1940db88ebd9	Knotted Branches	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
3ecee621-5653-463f-916a-968c5d54fa45	Bark Skin	Passive	If this character suffers Piercing or Slicing Dmg, reduce the Dmg suffered by -1.	\N	\N	f	f	f	f
26e7167a-fde5-4bec-b015-f5e1014feff2	Call of the Woods	Arcane	\N	2	8	f	f	f	f
0d01c918-8b27-4c9d-b7ee-46e67d2d1820	Dagger	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
7398692b-b6d6-4cad-bb4d-af19cdfcb5b7	Conductor	Passive	Other friendly Cultists and Spirits within 4" gain +1 Arcane Stat.	\N	\N	f	f	f	f
f8ced3f8-6202-4c9e-b7fc-544be025b635	Paroxysm	Active	All other models within 3" suffer 4 Magical Dmg then are moved 3" directly away.	4	3	t	f	t	f
e6dba5ab-0333-4ff0-9379-f726455e3520	Leshavit's Caress	Arcane	\N	3	8	f	f	f	f
a5d9a1a9-3bde-4e1e-b953-46e39d70bd6b	Shadow Stride	Arcane	\N	2	\N	f	f	f	f
9e2967d3-aaf9-479f-9ad6-477cd4512f64	Hunting Ritual	Arcane	This attack is not modified by Evade Stat.	3	8	f	f	f	f
f5ace6dc-3209-48f8-892e-8fe81781b528	Summon the Forgotten King	Arcane	This action can only be taken if your chosen faction is Shades and there is no friendly Echo of the Forgotten King in play.	3	\N	f	f	f	f
16395180-21ba-45ed-87f5-70939c822ca3	Strength from Beyond	Passive	If at least one friendly model was slain this turn, this character gains +2 Arcane Stat until end of turn.	\N	\N	f	f	f	f
61ac76cc-bad7-4ff3-8083-894171907a34	Eternal Servitude	Arcane	\N	2	4	f	f	f	f
ac799b53-cd59-45bb-aea8-a722b480899c	Spare Parts	Arcane	\N	2	4	f	f	f	f
26cc76fb-8cb6-4abe-bc16-a5ba82ea3a68	A Noble Challenge	Passive	This character makes a Melee Attack action with +3 Melee Stat against target enemy character. If the target of this action is a Noble reduce Dmg suffered by this character to ∅ for the duration of the action.	\N	\N	f	t	f	f
1cd96093-b738-40de-b0af-fe06abb98983	Sink Hole	Arcane	\N	2	8	f	f	f	f
7c04f534-b023-41b9-96dd-e9e909348eea	Gravedigger	Passive	The first time each turn this character performs a Harvest action, you may reduce the depth value by 2, instead of 1.	\N	\N	f	f	f	f
f58fbd6b-5400-4091-b527-397fac8abe58	Waterfoot	Passive	This character may Jog freely over Water Features.	\N	\N	f	f	f	f
83e5b8ab-6d7a-400d-ae80-4ed8e8209826	Unholy Toughness	Passive	Reduce all Dmg suffered by -1.	\N	\N	f	f	f	f
eb14915d-70c7-47e7-9781-a9165ace9a72	A Busy Tyrant	Passive	This character may not enter play via Reanimate.	\N	\N	f	f	f	f
496a1ed5-e9c5-4bce-83d6-b1ec15a430a9	Terrorblast	Arcane	\N	2	8	f	t	f	f
3b06bf4d-2fc7-4af5-b906-8443fd17c579	Pavise	Passive	Reduce all non-Melee Dmg suffered by -2.	\N	\N	f	f	f	f
e9d6fb78-40a4-4abb-ac01-b49300d91cab	A Skele-tonne of Bolts	Passive	When a friendly model is slain, this character may immediately use Ancient Crossbow without spending energy after the current action is resolved. This is done before models may take reaction steps.	\N	\N	f	t	f	f
ef74802f-740b-4bf9-a42b-53dd9be5cc6d	Ancient Crossbow	Arcane	This ability cannot be used while this model is engaged.	2	12	f	f	f	f
1e0f4539-e79f-45c7-9d6b-53bdc04728de	Plate Armour	Passive	Reduce all non-Magical Dmg suffered by -2.	\N	\N	f	f	f	f
b81f7ab7-2e21-4b95-9ae4-9e3287a5cdf0	Dreadful Din	Arcane	\N	1	6	f	t	f	f
d2699fbe-d564-4fb7-8d5f-c3a71ac31ca8	Share the Knowledge	Arcane	\N	2	2	f	t	f	f
844e981a-1a11-49dc-9d68-df1e8cf83068	A Little More Oil...	Arcane	\N	1	\N	f	t	f	f
3402b185-e24c-4749-bf59-0f754378671f	Eternal Chill	Arcane		2	6	f	f	f	f
5c681531-3dd9-4ffc-80f2-72f752a35f40	Frostbite	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +2. If at least one friendly model was slain this turn, Melee Dmg dealt by this character cannot be reduced by passive abilities.	\N	\N	f	f	f	f
17fb11c7-6734-4476-93c6-97a92d16762a	Intrusion	Passive	After dice are rolled to determine who activates first, this model may spend 1 energy to reroll its die.	\N	\N	f	t	f	f
f186d892-e664-4f18-b894-925a376a0552	Concealed Armour	Passive	If this character suffers Piercing Dmg, reduce the Dmg suffered by -1.	\N	\N	f	f	f	f
94d6c8a1-f81e-41ab-a8bb-c471c6198edc	Stage Roll	Passive	When an enemy targets this character with an Arcane Ability you may reveal a PX from your resist hand before any cards are played. After resolving the current action, this model may move X" where X is the value of the revealed card.	\N	\N	f	f	f	f
fe5324ef-e37b-490f-b5ba-c435f3b2f06d	Stage Fright	Arcane	\N	3	8	f	f	f	f
b05a5252-3260-46b8-befe-940edf096471	Conductor	Active	Target friendly Psychopomp immediately takes any action available to them irrespective of energy cost, excluding Jog. Increase the Psychopomp's Melee & Arcane Stat by +1 for each friendly Psychopomp in play for the duration of the action.	1	6	f	f	f	f
e2c1c368-7bd6-45a9-a98c-1eb27207fac1	Summon an Encore!	Active	This action cannot bring a character into play if it is already in play. Place a new friendly Psychopomp, which was slain earlier this turn, in base contact with this model.	1	\N	f	t	f	f
85f813c3-68d8-4c9a-b9a2-5f2ace522b57	Milkies	Arcane	\N	2	6	f	f	f	f
f95a19d2-4a97-4d08-b916-4c4cb34009f4	Summon the Nursery	Arcane	This action cannot bring a character into play if it is already in play.	1	\N	f	t	f	f
16d1ecdb-6f17-4d66-b4c4-b6cab6bf09e9	He Pushed Me!	Active	Move target other model 1" directly away.	1	2	f	t	f	f
626f5bf6-a27d-43a1-9390-d6f6fbe55d65	I Want My Nanny!	Passive	When an enemy character declares this model as a target of an action, you may interupt the action to move this model 2" directly towards a friendly Nanny. If you do, the enemy must complete the action if possible and may not choose a new target.	\N	\N	f	t	f	f
e066a3e3-32bb-46b1-8f3a-787826b1205e	Brace of Pistols	Passive	This character may use the [Reload] ability without paying the energy cost.	\N	\N	f	f	t	f
2113273f-d500-44ff-ad3b-af46e179f634	Reload [Shoot Pistol]	Active	The named ability can be used again. This ability cannot be used while this model is engaged.	2	\N	f	f	f	f
29cab333-ca29-43ff-8c6c-f1ef57ec4d59	Sure Footed	Passive	This character may Jog over Water Features and Wooded Patches and pays 1 less energy for Traverse actions.	\N	\N	f	f	f	f
82507363-10d7-40a5-9198-13e963bb9d6e	I Want My Nanny!!	Passive	When an enemy character declares this model as a target of an action, you may interupt the action to move this model 2" directly towards a friendly Nanny. If you do, the enemy must complete the action if possible and may not choose a new target.	\N	\N	f	t	f	f
21999104-d3a8-4746-957d-c7673b1417a4	He Called me Names!	Active	Target character suffers -1 Arcane Stat or -1 Melee Stat until end of turn.	1	2	f	t	f	f
2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17	Thrall	Passive	This character can only enter play when summoned. It does not activate and can never gain energy. Instead, while the character that summoned it is active, this character can take actions, including Jog, by discarding the required energy on the character that summoned it. Reaction Steps and Go For It's can be taken in the same way.	\N	\N	f	f	f	f
60263ad3-d93a-41b5-819f-a9dc4bd4ca42	Summon a Helping Hand	Arcane	This action cannot bring a character into play if it is already in play.	2	\N	f	f	f	f
6338e853-6342-40dc-af8a-bb8567d819bb	Drain Life	Active	Target other friendly character is slain. If the target wasn't a Psychopomp then the next time this character uses Reanimate this turn, reduce its energy cost to (0) and gain +2 Arcane Stat for the duration of the action.	2	4	f	t	f	f
1d969482-e815-40bc-a95a-9453ad160c95	Incorporeal Form	Passive	When this character activates it may discard 1 energy. If it does, this character cannot take Harvest actions but reduces all non-Magical Dmg dealt and suffered to ∅ and may move freely over models and terrain during Jog actions, provided bases do not overlap at the end of the movement, until end of turn.	\N	\N	f	f	f	f
7e2af3ec-e0b4-4bc1-a6a3-264fcea27c30	Horror	Arcane	If at least one friendly model was slain this turn resolve this attack with +2 Arcane Stat.	3	8	f	f	f	f
e9a5b782-e8f6-4804-9020-447a6fc1431b	Worlds Old & New	Passive	If you faction is Shadess, when this model is deployed, place a 50mm Water Feature within 6" and LoS on open ground. If your faction is Dominion, when a friendly Pirate within 6" Jogs it may ignore the effects of Slow (and Slow Carry). Once per turn.	\N	\N	f	f	f	f
87cad632-d455-462b-944c-3ce9c9637f09	Cutlass	Passive	If this model deals Slicing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
7712ef85-c6b2-48c5-b0e2-b36ac3ab466b	Protection Charm	Passive	Reduce Magical Dmg suffered by -1.	\N	\N	f	f	f	f
148c3173-ef3a-4cbd-ba58-11d7eb0f9a60	He Hit Me!	Active	Target character suffers 1 wound.	1	2	f	t	f	f
35e649cd-4d2d-4282-b27f-09d58ad353ac	Hunting Party	Active	Target enemy that has activated this turn must discard half of its remaining energy rounded up. Then friendly Humas and Fauns gain +1 Arcane and +2 Melee Stat when targetting that enemy with actions until end of turn.	1	6	f	t	f	f
f390c500-6c30-41dd-b2f3-c945e6b389a5	Peashooter	Arcane	This attack is not modified by Cover.	1	8	f	f	f	f
82adafc9-227d-4a12-a988-d361022bde2c	Sticky Tongue	Active	Target with Evade Stat -1 or lower, suffers 1 Impact Dmg and then is moved 4" directly towards this model.	2	4	f	f	f	f
97bec4d8-384f-4fef-aeb5-8a6c9c37bdeb	Summon from the Depths	Passive	When this model is deployed or enters play, you may place a new friendly Aquatic Psychopomp in base contact. If deployed, this must be in the deployment zone as normal. This cannot bring a character into play if it is already in play.	\N	\N	f	f	f	f
8e64452f-b078-4e05-8bb0-0b1ed62313a8	Merfolk Magic	Active	Place this model within target Water Feature. This ability may only be used if this model is within a Water Feature.	2	10	f	t	f	f
7d6f6cd4-1292-4a71-acf2-be5ddcb9fd9d	Torrential Surge	Arcane	\N	2	\N	f	f	f	f
391a37f0-1d6f-478f-aa68-8bf75ce39c46	Siren Song	Arcane	\N	3	12	f	f	f	f
f35e1804-0f86-4f72-bf34-9a53ee8e0c46	Oceanic	Passive	This model's Jog actions are limited to 2" but may be made freely over Water Features.	\N	\N	f	f	f	f
e75960ce-0724-46c8-882b-d8ddbc3b22c4	Augments	Passive	Friendly charactres with Reload[...] gain the Machine keyword.	\N	\N	f	f	f	f
3b668803-9e8b-4bc5-aeb7-a9cd0ec1aa1c	Gnomish Air Rifle	Arcane	This ability cannot be used while this model is engaged.	2	14	f	f	f	f
1d4a12c6-5580-45c7-a753-ff857e83c5f7	Prognosication	Passive	Friendly Rogues within 4" gain [Seen It All Before: If this character is attacker or defender in a round of Melee, before each player selects a Melee Card, your opponent must reveal their hand].	\N	\N	f	f	f	f
2387f16c-67d6-447d-b6ee-83b88ababd95	Lance	Passive	If this character deals Slicing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Piercing Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
ed505628-fa7a-44d4-9afb-9609471c7337	Jousting Shield	Passive	Reduce Piercing and Impact Dmg suffered by -1.	\N	\N	f	f	f	f
5745cde2-2751-4c0b-ac2e-8a4aac9ea927	Passage of the Seasons	Active	Place this model within target Wooded Patch. This ability may only be used if this model is within a Wooded Patch.	2	10	f	t	f	f
7d6d3821-4822-4f33-802e-e7a6a1daa0b0	Hunting Spear	Passive	If this character deals Piercing or Slicing Melee Dmg, increase the Dmg dealt by +1. If this character deals Melee Dmg against an Animal, increase the Dmg by +1.	\N	\N	f	f	f	f
3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61	Swift	Passive	When making a Reaction Step while engaged by an enemy, this model may move 2" instead of the usual 1".	\N	\N	f	t	f	f
016e5fee-0387-4455-bf9f-9d0f74cccabc	Bodyguard	Passive	If a friendly Noble within 4" and LoS suffers Dmg, you may have this character suffer all that Dmg instead.	\N	\N	f	t	f	f
5337bb4a-7dbf-499e-8aaa-59c659eae9dc	Giant Whisperer	Active	Move target Giant 1".	1	8	f	f	f	f
146d0722-4004-4ea5-93fc-f803b0d6f655	Ramshackle Armour	Passive	Reduce all non-Magical Dmg suffered by -1.	\N	\N	f	f	f	f
1c08d011-b7e8-4cd6-a660-4ee1c6bd06c8	My Hero	Active	Target Soldier gains 1 energy or, target Noble gains 2 energy.	2	4	f	f	f	f
d33be47c-7b2b-4ee9-9c63-6cdae33027c5	Leather Jerkin	Passive	Reduce Slicing and Piercing Dmg suffered by -1.	\N	\N	f	f	f	f
160f3db2-7357-4688-9284-171787284330	Manipulate the Runes	Passive	After resolving an Arcane action this model initiated but before shuffling the Arcane Deck, you may set aside any cards from your hand that weren't played. After shuffling the Arcane Deck, put any number of the set aside cards on the top of the deck in any order and put the remainder on the bottom of the deck in any order.	\N	\N	f	t	f	f
e22d2f90-945f-4c38-bdbd-b1c91b55e9eb	Reading the Runes	Passive	When this character activates, you may guess a card (colour and number, or Catastrophe) then flip an Arcane Card. If you guessed correctly, apply the following effect:.	\N	\N	f	f	f	f
87cb641f-7822-44e4-9455-72a97ad876cd	Old Staff	Passive	If this character deals Piercing or Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
152b18e8-3d42-4492-9921-7641eb6e25fc	Arming Sword	Passive	If this character deals Slicing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
560a0b05-f576-4bbb-b690-64b9c7bd0248	Enchanted Bladestorm	Arcane	This attack is not modified by Evade Stat or Cover and may only be used if this model has the Enchanted Javelin ability.	2	6	f	f	f	f
0bdff1c8-a79e-4c25-9c3e-0d351e6a9310	Woodland Animal	Passive	This character may Jog over Wooded Patches and gains +1 energy during the Replenish Step if any part of its base is within a Wooded Patch.	\N	\N	f	f	f	f
bf4dc76c-cc15-4edf-a018-e5e95b8acc29	Forgetfulness	Active	Remove one Arcane or Active Ability from target character until the end of the turn.	1	8	f	f	f	f
72b0e2b7-ce82-462c-9399-d39a742f2afb	Wyrm Hole	Active	This model must be in base contact with an item of Obstacle terrain to use this ability. Lose possession of any Moonstones this character is in possession of (place them in base contact with a depth value of 1), then place this model in base contact with any item of Obstacle terrain on the board.	2	\N	f	f	f	f
75bee6ea-766b-4361-8d6d-eaa67ea57287	Ironclad Knuckles	Passive	If this character deals Piercing or Slicing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
04b5b29d-46ff-440f-98f2-2c78626e759c	Granite Fists	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
41a8ce5a-60ab-4c44-aa1d-e3cb6b74fea5	Stone Song	Arcane	This ability is not modified by Cover.	1	6	f	f	f	f
c7f0769f-3f14-48a8-bc4f-dfb40c5a2c2d	Glaive	Passive	If this character deals Slicing or Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
7beea4e5-70ad-429e-a280-3eeacfaa00e9	Malachite Ritual	Arcane	Whilst resolving, ignore passive abilities of other characters.	3	8	f	f	f	f
aaed7e97-a4f6-4ef7-ba8a-005ad4cb4ceb	Razor Claws	Passive	If this character deals Impact or Piercing Melee Dmg, increase the Dmg dealt by +1. If this character deals Slicing Melee Dmg, increase the Dmg dealt by +3.	\N	\N	f	f	f	f
e864a7f6-3e81-4d41-ac01-7f7f84fc0649	Deutsche Courage	Passive	If a friendly Soldier or Mercenary makes a Melee Attack action while within 6" of this model, you may have them gain 1 energy.	\N	\N	f	t	f	f
46340777-bb13-4115-ab04-5e87c8b4e709	Luv'a da booty	Passive	If a friendly Pirate makes a Melee Attack action while within 6" of this model, you may have them gain +1 energy for each Moonstone that this character is in possession of.	\N	\N	f	t	f	f
9f0ef427-3217-4b76-af1b-c45c24db9d0c	Gnarled Staff	Passive	If this character deals Slicing or Piercing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee Dmg increase the Dmg dealt by +1.	\N	\N	f	f	f	f
cac6a52f-93df-48e7-ba57-3840bcec245e	Run	Active	Move target friendly engaged model 3".	2	8	f	f	f	f
c015a643-c5b8-40ad-b0b5-b510ae33c836	Hammer	Passive	If this character deals Piercing or Slicing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
5212e56c-5b83-47c2-b075-3c13314396bb	Unholy Strength	Passive	Increase all Melee Dmg dealt by +3. Melee Dmg caused by this character counts as Magical instead of the listed Dmg type.	\N	\N	f	f	f	f
fb070fae-7b8f-4272-9bc6-087ea43d3ad3	Favour of the Old Gods	Passive	When this character suffers Dmg you may flip the top card of the Arcane Deck and reduce the Dmg suffered by -X where X is the value on the flipped card. Catastrophe reduces the Dmg suffered by 0.	\N	\N	f	t	f	f
6146b7b7-51bc-43d1-bbee-218c3c933537	Epic Ballads of Giant Heros!	Active	Other Giants within the pulse gain +1 energy.	1	6	f	t	f	f
a68c39b3-90de-493f-914c-4d87b8c2f65f	Misdirection	Active	Move target enemy model 3".	4	6	f	f	f	f
8274b8b1-7f02-4d46-a455-0288a651596c	Shoot Shortbow	Arcane	This ability cannot be used while this model is engaged.	3	8	f	f	f	f
f4296a74-58b9-4063-8bc1-150d0fdfad57	Kinship [Raegan, Leshavult Priestess]	Passive	If the friendly named character is within 6" during the Replenish Step, this character gains [Protection: The first time this character would suffer Dmg each turn, reduce that Dmg to ∅], until end of turn.	\N	\N	f	f	f	f
53b93d7e-1177-447f-8817-b2e61ab3758b	Tubthumping	Passive	The first time this game this character is reduced to 0 health boxes remaining, flip an Arcane Card. If the result is a Catastrophe, then this character is slain, otherwise it remains in play with X health boxes remaining, where X is the value on the flipped card.	\N	\N	f	f	f	f
87da1b46-dbc7-48eb-9e95-d93d719e6f0c	Tough as Old Boots	Passive	At the start of the Replenish Step this model recovers 2 wounds.	\N	\N	f	f	f	f
326ed66d-024e-4476-b0fd-82c4a9fc384b	Predictable Combatant	Passive	During a round of combat, before each player selects their combat card, you must reveal your hand to your opponent.	\N	\N	f	f	f	f
d6cebca1-610b-4d9b-ae0e-2e5eda791c85	Black Powder Bomb	Arcane	This attack is not modified by Evade Stat.	3	4	f	f	f	f
2777fb83-ecfe-45f2-81ce-05c5075fd21b	Supernatural Strength	Passive	Increase all Melee Dmg dealt by +2. Melee Dmg caused by this character counts as Magical instead of the listed type.	\N	\N	f	f	f	f
e5e09d9c-df76-4e35-b61e-2d7ed1f1b284	Inheritance Tax	Passive	When a friendly Goblin character within 4" and LoS is slain, you may place one Moonstone the character was in possession of in base contact with this model at depth value of ‘1’.	\N	\N	f	f	t	f
76b4b247-e7ba-4983-841d-61e86015c1f9	Concealed Dagger	Passive	If this character deals Piercing Melee Dmg, increase the Dmg dealt by +1. If this character plays a Rising Attack increase the Dmg dealt by +1.	\N	\N	f	f	f	f
1325f4b6-e9c3-4bb7-9b6d-cb630b3113cb	Natural Padding	Passive	Reduce Impact Dmg suffered by -2.	\N	\N	f	f	f	f
96e4581b-4fda-475f-bc1e-038a9ddc1bcc	Link to the Past	Passive	If a friendly Danica, Dusk Witch was taken in this troupe at the start of the game then this character gains +1 Arcane Stat and reduces the energy cost of the first Arcane Ability targeting a friendly Witch in a turn by -1.	\N	\N	f	f	f	f
404df7d7-c667-4def-af86-970e021f346e	Guerilla Tactician	Passive	Other friendly Fauns within 6" gain +1 Melee Stat and [Swift: When making a Reaction Step while engaged by an enemy, this model may move 2" instead of the usual 1". Once per turn.].	\N	\N	f	f	f	f
8ec1338b-1329-41e4-b98d-7429ad80d1b9	Felling Axe	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
8649b39a-d977-49e7-b51b-18aff5a8b04d	Mesmerising	Passive	Enemy models engaged by this character must discard 1 energy before they can declare a Jog, Step or Reaction Step.	\N	\N	f	f	f	f
ed5b4446-a5cc-4351-a377-93e3e886069a	Joy of Entropy	Passive	Whenever another character within 4" is slain, this character gains +1 energy.	\N	\N	f	f	f	f
4a742689-cb82-420b-b4cd-69593563525b	Eclipse	Passive	When an enemy targets this character with an Arcane Ability you may reveal a G2 or P2 from your resist hand before any cards are played. If you do, this character reduces all Dmg suffered to ∅ whilst resolving the current action.	\N	\N	f	f	f	f
f36ec5fb-4b22-4241-8286-d6cededb452a	Guiding Lantern	Passive	When a friendly model enters play via Reanimate or Reanimate Jobie it may be placed in base contact with this model instead of the originator.	\N	\N	f	f	f	f
ae6127fd-717d-42f2-9b66-2f2d8f4f1228	Spade	Passive	If this character deals Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
61340f1e-b722-4efd-b07d-54a795f3d109	Behold my Splashy Fury!	Active	This ability may only be used if this model is within a Water Feature. Target character suffers 2 Magical Dmg.	1	2	f	t	f	f
ac480ba4-9771-4283-b300-557dfec246ec	Forbidden Tome	Passive	The character that summoned this model gains +1 Arcane Stat while within 2" of this model.	\N	\N	f	f	f	f
6414cd9a-74fd-40fe-bd83-09e55fb48a68	Lampy's Light	Passive	Enemy models within 3" get +1 Evade Stat.	\N	\N	f	f	f	f
b01cf816-e00d-4786-85c1-9c2fc90fb282	Ice Shard Armour	Passive	If this character suffers Piercing or Slicing Dmg, reduce the Dmg suffered by -1.	\N	\N	f	f	f	f
6081c730-d0ad-4191-9f7d-eeedd7b733a8	Fear	Active	Target other character loses 1 energy then a friendly model within 4" of this character gains that much energy.	2	4	f	t	f	f
96449b2a-6620-4b2d-b613-9eb88672ea13	Erosion	Passive	Enemies within 4" suffer -1 Melee Stat when declaring a Melee Attack action or -2 Melee Stat if targeting this character with a Melee Attack action.	\N	\N	f	f	f	f
be21bed3-bb9d-4929-9887-89507f335fca	Cavalry Mace	Passive	If this character deals Slicing Melee Dmg, reduce the Dmg to ∅. If this character deals Impact Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
31306d21-809c-4fb6-8658-8a91eec06cfd	Reload [Shoot Pistol]	Active	The named ability can be used again. This ability cannot be used while this model is engaged.	2	\N	f	f	f	f
b7681e93-2dfc-424e-a1f7-a3e4efc77f6e	Summon Intermission Snacks	Passive	When this model is deployed or enters play, you may place a new friendly Food Psychopomp in base contact. If deployed, this must be in the deployment zone as normal. This cannot bring a character into play if it is already in play.	\N	\N	f	f	f	f
f282abe9-48f5-409a-b69f-f731807d4b7b	Psychopomp Parade	Active	Flip an Arcane Card then move all friendly Psychopomps within the pulse up to X", where X is the value of the card. Catastrophe : The player to the left may move this model 2".	1	6	t	t	f	f
c05a263e-c782-4a37-a751-6ef63a4313d7	Summon the Choir	Passive	When this model is deployed or enters play, you may place a new friendly Musician Psychopomp in base contact. If deployed, this must be in the deployment zone as normal. This cannot bring a character into play if it is already in play.	\N	\N	f	f	f	f
9470ed44-4223-46ac-be8b-730e404f915c	You Protect Me Like the Babe	Passive	Reduce all Dmg this character would suffer by -1 for each friendly Babeling within 6".	\N	\N	f	f	f	f
0e98cec6-6db4-440d-ba6b-1b26ec489263	Rallying Cry	Active	Energy on other friendly Humans within the pulse is restored up to the number of blue dots currently remaining on their health bar.	0	8	f	f	t	f
38ab2fa6-3529-4e5f-96cc-bcac63cced72	Feeble	Passive	Reduce all Melee Dmg this character deals by -2. Harvest actions cost this model +1 energy.	\N	\N	f	f	f	f
37491a41-13b7-4d46-8f5a-2243da00f635	Resonance	Passive	Friendly Spirits within 8" have a resist hand of +2 cards when targeted by an enemy Arcane Ability.	\N	\N	f	f	f	f
fad4b58f-7884-4123-b4a7-8f0342485566	Slip through the Deadlands	Passive	Friendly Spirits within 8" gain [Blink: When making a Step action, this model may be placed within 1" of itself instead of moving 1". Once per turn].	\N	\N	f	f	f	f
e9cec825-ebd6-4e83-88de-71f4608d407a	Natural Order	Active	All models within the pulse suffer 1 WD for each energy token they have over 3.	1	4	t	t	f	f
ce860a8a-330e-4c66-83a8-f8473ad9b90b	Reload [Blunderbuss]	Active	The named ability can be used again. This ability cannot be used while the model is engaged.	2	\N	f	f	f	f
62bea453-ff10-476d-abf8-6e4314a468b3	Up, Up & Away	Passive	This character may move freely over all terrain and other models during Jog and Step actions, provided it does not end the move with the base overlapping another model or barrier terrain. It cannot take the Harvest action or the Melee Attack action, cannot be targeted by Melee Attack actions and does not engage enemy models or become engaged by enemy models. It does not block LoS, provide Cover, or suffer from Falling. When targeted by Arcane Actions, this character does not benefit from Cover.	\N	\N	f	f	f	f
2a16de56-f4a2-4b9d-8dc5-c6240aa8e48f	Ice in the Veins	Active	Flip an Arcane Card. If the card is Blue X, restore X+1 wounds.	1	\N	f	t	f	f
e5e946f4-339d-432d-8f51-680c26eaec00	Necrotic Salve	Active	Target friendly character restores 1 wound. If at least one friendly model was slain this turn, the target also gains +1 energy.	1	4	f	t	f	f
87d11eaa-5c88-48f0-8ac6-f21738bd662c	Leech	Passive	At the end of the Discard Step this model restores 1 wound for each wound lost by enemies within 6" during that Discard Step.	\N	\N	f	f	f	f
13d6515e-4ec7-420b-a7ea-27842e586113	Constant Bickering	Passive	When this character activates, flip an Arcane card. This character gains X energy, where X is the value on the flipped card. Catastrophe: This character suffers 3 wounds.	\N	\N	f	f	f	f
272b2b2d-7cc6-4330-aaff-1c6b355a03d2	Foresight	Active	Target Human gains +2 Arcane Stat until end of turn.	1	10	f	t	f	f
83041869-2cdf-4458-82b6-78ad034f07b1	The Faculty	Passive	If Old Polly, Prof. Boffinsworth and Flinders Memphis were taken in this troupe at the start of the game, this character gains Rogue, Animal and Machine Keywords.	\N	\N	f	f	f	f
310efbfd-0542-486f-9ccd-a53352322e8b	Brothers in Arms	Active	Target other friendly Militia gains +1 Arcane Stat and +2 Melee Stat until end of turn. Then, the target may discard 1 energy to give this character +1 Arcane Stat and +2 melee stat until end of turn. You may only target each character once per turn.	1	4	f	f	f	f
54ac3b27-94e8-419e-9f94-69a5eead8168	Utter Swine	Active	You may have another friendly model within 6" suffer 2 wounds. If they do then target enemy loses one Arcane Ability of your choice until end of turn.	1	6	f	t	f	f
c736fe5f-b548-4439-bde1-098e1bfae629	Spiteful	Passive	When this model causes 1 or more wounds to an enemy, it restores 1 wound.	\N	\N	f	f	f	f
287b4f60-5494-40a1-b3c2-10bee68e66d8	Faerie Mischief	Passive	Whenever a friendly Faerie within 6" bluffs successfully, you may reveal the card and this character gains 2 energy and restores all wounds.	\N	\N	f	f	f	f
117c260f-58ea-4c13-b832-7a805b8dbdab	Vicious	Passive	Each time this model causes one or more wounds to an enemy, it gains 1 energy. Max. 3 times per turn.	\N	\N	f	f	f	f
ee0be4f3-ad93-4ca9-bb01-88a99cdc5838	Lard Lover	Passive	This character gains +2 Melee Stat if there is a Giant within 4".	\N	\N	f	f	f	f
6dbcbce6-708b-4cab-a6cd-7df762473855	Vigour	Active	This character restores 1 wound.	1	\N	f	f	f	f
ebee007f-0240-410f-bb60-4672481b9b97	Two Goblins Walk into a Tavern	Active	Two other target Goblins each gain +1 energy and +2 Evade Stat until end of turn. You must choose two different targets.	2	8	f	f	f	f
98548434-c878-4f7b-a92c-e12ea2cd0e7c	"Look out!"	Active	Target friendly character's Evade Stat is reduced by -1 until end of turn.	1	6	f	f	f	f
b981fe52-c6ce-41ea-9677-aa90057f2965	Take Aim	Active	Increase this character's Arcane Stat by +1 until end of turn.	1	\N	f	t	f	f
84a5fb9f-1bab-442a-9106-b56e7f148f5e	Intimidate	Active	Target Human or Goblin suffers -2 Arcane Stat and gains [Predictable Combatant: During a round of combat, before each player selects their combat card, you must reveal your hand to your opponent.] until end of the turn.	1	4	f	f	f	f
3aad3a38-73f4-4dad-8920-633329728b6e	Luck Charms	Passive	Other friendly Gnomes within 4" gain +1 Melee Stat, +1 Arcane Stat.	\N	\N	f	f	f	f
d93d8d82-3c00-406d-8921-16012765bde1	New Growth	Passive	When this character uses an Arcane Ability it may suffer 3 wounds instead of paying the energy cost. If this reduces it to 0 wounds the Arcane Ability is cancelled.	\N	\N	f	t	f	f
f6e84ad7-160f-4c17-adc1-3161b98d4737	Accursed	Passive	When an enemy targets this character with an arcane action you may reveal a Green:X from your resist hand before any cards are played. After resolving the current action, the enemy model suffers X-1 wounds where X is the value of the revealed card.	\N	\N	f	f	f	f
e056fdcf-e68e-4ce7-a379-6abdaae01c78	Vengeance	Passive	If a friendly character is slain or reduced to - wounds, the fist time this model uses an Arcane Ability this turn it doesn't need to spend any energy.	\N	\N	f	f	f	f
8c81c1d1-da75-4c01-942f-7f8007e621e7	Awake the Beast	Passive	The first time an enemy targets this character with a Melee Attack Action or an Arcane Action in a turn, this character restores 1 wound and gains +2 energy.	\N	\N	f	f	f	f
17a00186-ee7e-4dfe-899c-bb208a085697	Mother's Wrath	Active	Other friendly Gnomes within the pulse gain 1 energy. Enemy models within the pulse suffer 2 wounds.	1	3	t	f	t	f
56c2d08b-d261-4fef-b573-57b3f741a9af	Mother's Love	Active	Move 2" directly towards target Gnome, then the target moves 2" directly towards this model and restores 2 wounds.	1	10	f	t	f	f
825c75af-1bb9-49b5-b24f-97592e50d93e	Rule the Roost	Active	Target Goblin suffer 2 wounds, gains 2 energy and activates immediately after this character's activation ends. If the target has already activated, then this is a bonus activation, otherwise this counts as the target's activation for the turn.	2	8	f	t	f	f
47e1c222-a371-488e-8e9d-7bb6584cb86a	Robbery	Active	Target model with less wounds remaining than this character, loses possession of one Moonstone and this character gains possession of that Moonstone.	2	1	f	t	f	f
894b91a7-b9f5-4162-9702-52b79955a307	Remove Necklace	Active	This character gains +4 energy. Then it is Removed from Play and replaced by Striga Anya. Striga Anya gains energy and suffers wounds equal to those already on this character along with all Moonstones this character is carrying and any stat modifications or abilities it has gained. Continue Anya Bartol's activation with Striga Anya; it may not Jog if Anya Bartol already did this turn.	4	\N	f	f	f	f
3779ee4e-0038-4296-bc56-b1b1f192258e	Trickster	Passive	When this model successfully bluffs, after resolving the effect you may reveal the bluff and gain +3 energy.	\N	\N	f	t	f	f
036cd64f-e2fc-4e13-9e49-403af452ff07	"Look out!"	Active	Target friendly character’s Evade Stat is reduced by -1 until end of turn.	1	6	f	f	f	f
778b4d46-ae1e-4dd7-b5dc-5e86b4f3a340	Flail	Passive	If this character deals Slicing or Piercing Melee Dmg, reduce the Dmg dealt to ∅. If this character deals Impact Melee Dmg increase the Dmg dealt by +2. If this character plays a High Guard or Low Guard during Melee then it suffers 2 wounds during the End Step.	\N	\N	f	f	f	f
6287f75e-5259-48d4-92ee-96b003ff3ff4	For the Good of the Glade	Passive	If this character uses an Arcane Ability, before drawing Arcane Cards, you may inflict 1 wound on up to three different friendly Faerie within 6". For each wound inflicted, draw 2 additional cards.	\N	\N	f	f	f	f
f828735c-e48a-40d5-a106-1c76185fb24c	Replace Necklace	Active	This character gains +1 energy. Then it is Removed from Play and replaced by Anya Bartol. Anya Bartol gains energy and suffers wounds equal to those already on this character along with all Moonstones it's carrying and any stat modifications or abilities it has gained. Continue Striga Anya's activation with Anya Bartol; she may not Jog if Striga Anya already did this turn.	4	\N	f	f	f	f
42f806b7-9883-4589-9400-d52d7390ad3f	Rebate	Active	Target other character restores X+2 wounds or moves X+2" directly towards this character, where X is the number of Moonstones the target is in possession of. (For characters without Moonstones X is 0).	3	8	f	f	f	f
61285e53-895d-4df1-be5f-fdfe4f5b0e75	Eat Me!	Active	Target friendly character restores 2 wounds then this model suffers 1 wound.	1	2	f	f	f	f
5a221161-2f20-47ab-b1e1-694810dd6bd7	Leave to Rise until Doubled in Size	Active	This character restores 1 wound. This character cannot take actions until end of turn.	1	\N	f	f	f	f
8b6dcf3c-587a-4a48-876d-bad8130cd647	Rub It Better	Passive	When this model causes 1 or more wounds to an enemy, a friendly Human or Cleric within 4" of this model may restore 1 wound.	\N	\N	f	f	f	f
04954bca-187a-4506-9cd3-5bede885e6d0	Meddle with Fate	Active	Draw 2 cards from the Arcane Deck for each friendly Spirit in play. Place any number of cards face down besides this character card, suffering 2 wounds for each. Then shuffle the remaining cards back into the deck. At any point you can add one or more of these cards to your Arcane or Arcane Resist Hand. Cards used this way are shuffled back into the deck at the end of the action. If this character is slain, shuffle all remaining cards back into the deck.	3	\N	f	f	t	f
ab81e999-2a2f-4035-a29e-096f41557ac4	Link to the Future	Passive	If a friendly Zorya, Dawn Witch was taken in this troupe at the start of the game then this character restores 2 wounds at the start of the Replenish Step.	\N	\N	f	f	f	f
8168141f-b0fd-45df-bac7-f2e383a5be2d	Forest	Passive	After this character suffers Dmg, it may restore 1 wound for each Wooded Patch within 4".	\N	\N	f	t	f	f
14435ccd-cfde-4de3-ab0c-abfdb8ff653a	Reclaim Life	Active	Target friendly character suffers 2 wounds or, if at least one friendly model was slain or reduced to 0 wounds this turn, it may restore 2 wounds instead.	0	4	f	t	f	f
c7fc5e05-51ca-4d09-8a48-5a452008ad4f	Claws and Stick	Passive	If this character deals Slicing or Impact Melee Dmg, increase the Dmg dealt by +2.	\N	\N	f	f	f	f
2f3c1946-1a59-4c08-afa2-c85f0c561c1b	Fashion from Flesh	Passive	When this model causes 1 or more wounds to an enemy in a round of melee, it may summon a new friendly Psychopomp as a bonus End Step Effect. Place the new friendly Psychopomp in base contact with this model. This cannot bring a character into play if it is already in play. If the enemy is slain this character may instead reduce the energy cost of the next Arcane Ability it uses this turn to (0).	\N	\N	f	t	f	f
fa49852a-4bd9-46a3-b4a3-7861c0805ecf	Fleeting Presence	Active	This action may only be used whilst this model is active and may not be removed from this card by any abilities. This model suffers 2 wounds. Then, if this character wasn't slain, it may immediately take an action available to it costing (1) or (2) energy without spending energy.	0	\N	f	f	f	f
f27597bc-eb66-4192-baff-9736bc6a5931	Old Pirate Curse	Active	Target without The Black Spot gains [The Black Spot: Enemy Pirates gain +1 Arcane Stat when targeting this character with an action. This character suffers 1 wound during the Discard Step], until end of game. Then other enemies with The Black Spot lost it.	1	8	f	t	f	f
3110fe1c-8a46-472a-82cc-42947af9324d	Overclock	Active	Target other friendly machine suffers 1 wound, then may take any action available to them which would normally have an energy cost of (2). You may only target each character once per turn.	1	4	f	f	f	f
73607203-54ad-48c0-9c3e-290abb881c54	Have You Tired Turning it Off and On Again?	Passive	After a friendly Machine draws an Arcane Hand, they may suffer 1 wound, shuffle the hand back into the Arcane deck and redraw the same number of cards (Resist Hand is unchanged).	\N	\N	f	t	f	f
7985c459-203d-4ec3-a749-7665874c29e6	Black Comedy	Active	Target other friendly character suffers 2 wounds and gains +1 energy.	0	6	f	t	f	f
1529c54d-63e1-4c4d-a077-3deae31dcd00	Squire	Passive	Other friendly Soldiers within 4" get +1 Melee Stat. Friendly Nobles within 4" get +2 Melee Stat.	\N	\N	f	f	f	f
08d06aeb-8eea-4a3f-a282-8d819cc7631d	Great Sword	Passive	If this character deals Slicing Melee Dmg, increase the Dmg dealt by +3. If this character deals Impact or Piercing Melee Dmg, increase the Dmg dealt by +1.	\N	\N	f	f	f	f
2e9c02fb-cc06-444e-9568-bec72c438ce6	The Governor	Passive	Friendly Soldiers within 6" gain +1 Melee Stat.	\N	\N	f	f	f	f
c5ddfad7-e67e-4ca5-8702-f6529fd4ecbd	Foreboding	Passive	When an enemy targets this character with an action, the active enemy model must suffer 1 wound or the action is cancelled. If the active enemy model is slain by this, the action is also cancelled.	\N	\N	f	f	f	f
445f744c-5b05-4105-ae9b-c734bb181526	Strength from Suffering	Passive	Whenever another character suffers wounds from a Catastrophe effect, this character restores that many wounds.	\N	\N	f	f	f	f
6b34c5ce-59ea-4405-b356-602bf8a5a71c	Undying	Passive	Each time this character would be slain, instead restore all wounds. Then, if this character was in possession of any Moonstones, it drops one of them as if it were slain.	\N	\N	f	f	f	f
5bde5b8b-637e-4400-91f9-afe9abc62021	Skål	Passive	When this character activates, you may flip an Arcane Card. This model suffers X wounds where X is the value of the card. Catastrophe: This character restores all wounds and loses Berserk Fury until end of turn.	\N	\N	f	f	f	f
3640200f-817e-44b6-92f5-95d1dbad65f2	Berserk Fury	Passive	Increase all Melee Dmg dealt by half the number of wounds, rounded up, this character has currently suffered. Ignore any wounds suffered during the current action for this Dmg increase.	\N	\N	f	f	f	f
602d12a9-a2ac-4e4a-8dce-f5cb1dfd9cb7	Keep 'em Fresh	Passive	When this model or a friendly Risen model enters play via Reanimate, it may restore 2 wounds. Other friendly models entering play via Reanimate may restore 1 wound.	\N	\N	f	f	f	f
\.


--
-- Data for Name: arcane_outcome_card_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arcane_outcome_card_colors (color) FROM stdin;
Pink
Blue
Green
\.


--
-- Data for Name: arcane_outcome_card_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arcane_outcome_card_values (value) FROM stdin;
1
2
3
X
\.


--
-- Data for Name: arcane_outcomes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arcane_outcomes (id, ability_id, outcome_text) FROM stdin;
3e39eb87-9386-4ed6-aca9-967005d17f63	efb6024d-b8a0-4893-82dc-636e9b520bd7	Move target enemy X" directly away. If the enemy is in possession of at least 1 Moonstone it loses possession of one Moonstone it is carrying before moving. Place it in base contact with the enemy at depth '1'.
48a2ea6b-c270-4354-9453-11e5e10bfcab	8f175c12-22b0-44dc-b5da-900a09dd411b	Target suffers X Piercing Dmg.
f6d46ae0-7fe7-43c7-a21c-2526f7ef8922	8f175c12-22b0-44dc-b5da-900a09dd411b	Target cannot take the Jog action until end of turn.
4f8b207b-0f62-4933-b3d5-fcb3f968ee83	89d7f0c3-6361-46f2-8b9a-c78653c90bf8	Target Norse or Gnome gains +1 energy.
7d692fcf-b7fe-4aa1-b585-5fda75bdca11	a8eda789-87a5-4a7b-a662-15e2df291d7f	This model loses all energy.
7c796ced-a6cb-493b-9eca-1cb1e09f6280	c7e394f7-882a-4e21-b05a-b02c34b1a4b6	Target gains Weakling until end of turn.
7b92411b-1466-48bd-afa0-d8ce9abd126e	c7e394f7-882a-4e21-b05a-b02c34b1a4b6	Target with Weakling or Feeble loses all energy and gains +X Evade Stat until end of turn.
f0f1d1a2-3727-4131-a536-7a5a4b86e5ec	d7cdb62f-e0cb-4aa2-9d82-887d300c7f75	Target suffers X Magical Dmg.
bb3acf63-94e2-4f50-a008-bf92e7962ddf	fa0f082f-11c2-4cbe-ae5d-06b91bc309e2	Target or this model gains [Protection: the first time this character would suffer Dmg, reduce that Dmg to ∅], until end of the turn.
baa7a260-d89d-4b71-b1fe-e5460af6a94e	fa0f082f-11c2-4cbe-ae5d-06b91bc309e2	Target and this model gain Protection until end of turn.
a226b0d3-5a2b-44cf-9bff-a24d93ea5b3b	31a77003-a096-4441-afe1-9466169fac15	Target suffers X+1 Magical Dmg.
f4548e64-e458-4ef8-96ba-e958e37f940e	d3fbd78c-f8df-4e81-8451-c8d55eeefaf3	Target Pirate or Troll gains X energy and suffers -X Arcane Stat until end of turn.
980e8c05-afbf-4fe9-859a-3054b9d8f4cb	7a5d828a-339f-41d5-8d2c-b740f05ca5ba	The Reload ability cannot be used for the remainder of the game.
b7836ccf-ffa4-407f-ae0e-c357ceb2fad1	843d016b-7b0e-4313-b464-a4907a4e65d2	Reduce all Melee Dmg dealt by target by -X until the end of the turn.
30a68693-e88f-40f7-b077-09e8a44973a9	843d016b-7b0e-4313-b464-a4907a4e65d2	The target gains +1 energy.
542a4a3b-3a19-4532-b1c4-b06350ee64d4	078f860f-fb39-4c40-8b0a-9cc6f6954b62	Place a friendly slain model in base contact with this model. Restore half its health rounding up. It has no energy but may activate this turn.
a593acde-2a9d-4e08-bdd8-0eebb740cf6d	7c341a3d-921e-4a60-937a-ab5aceded11c	This model gains X energy.
003c31a9-e9a1-48bc-a59b-f1fcf3c2cdcf	68865207-a89d-4522-aace-685cdd0a35d3	This model discards all energy.
70ed7ac9-179a-472a-8f6e-799d7b90b4e0	56334d68-17be-4f7c-84c8-a2037cf7c22a	Restore all wounds and energy of target Goblin, then place it within 8" of this model.
3fad349d-844d-4ff6-b0ad-2cb9617bcfbe	8b74c045-5faa-48b3-abdb-544cd324e5cd	Target enemy or Goblin immediately suffers one Catastrophe printed on their card. If it requires a target, you may choose any target that meets the ability’s requirements.
0279f202-832c-49e3-ac9e-bdb4e81a798a	13751d60-d856-4ca8-a496-0df424f97530	Gain +1 energy.
fe99bdc9-aa2f-470a-81fc-d312fb7f0663	efb6024d-b8a0-4893-82dc-636e9b520bd7	This character suffers 2 wounds.
b42634f9-f980-45a6-80de-d85069ccf223	07c617ed-3ac2-4117-aaa0-eb8f31821e27	This character suffers 2 wounds.
289b0db8-0ccd-4032-96bf-4135af66ed21	8f175c12-22b0-44dc-b5da-900a09dd411b	Target suffers 1 wound then is moved X" directly away.
c7e4af98-7825-4634-b2ea-7c618565f2c7	8f175c12-22b0-44dc-b5da-900a09dd411b	This model suffers 4 wounds.
c77e58f3-6d4c-46b2-a482-00870d7558d0	0eebec3b-60cc-4758-8600-105ca0a59472	Target restores X wounds.
07d0aa56-4354-46cd-be64-55aacef5b5d1	0eebec3b-60cc-4758-8600-105ca0a59472	This model suffers 3 wounds.
8a4738bd-8156-4e71-ab3b-fa49e8800977	89d7f0c3-6361-46f2-8b9a-c78653c90bf8	This character suffers 3 wounds.
b6989be7-f81b-4d47-87e9-d249efcb3120	89d7f0c3-6361-46f2-8b9a-c78653c90bf8	Target restores X+1 wounds.
f2b5035f-8f0f-47a0-be57-04ec83006a5d	c7e394f7-882a-4e21-b05a-b02c34b1a4b6	This character suffers 2 wounds.
41552c3e-5d2f-4248-9706-c909a4325e85	d7cdb62f-e0cb-4aa2-9d82-887d300c7f75	This character suffers 2 wounds.
304ef42e-b839-439c-8064-76a6dae42773	215c3950-afa9-4a41-a4f2-cbd1fa6e896b	Target character restores X wounds then loses X Energy.
eb208a01-0078-4112-a0a0-92adbb638b8d	215c3950-afa9-4a41-a4f2-cbd1fa6e896b	Target other Pirate gains X Energy then suffers X wounds.
fe9747cb-808b-47c2-9c60-3c37d5f8dce7	215c3950-afa9-4a41-a4f2-cbd1fa6e896b	This character suffers 3 wounds.
758c9384-82b5-4ab8-be6c-99da921b5fdc	bee09d61-74ea-435c-9e87-7e2931a1bf09	The resisting player places this model anywhere within 6".
7fb2c4cd-fe94-4457-8f82-92d05a52e403	e806a732-d4e6-4b72-a9de-8812370941f0	Place a new Solder Psychopomp in base contact with this character.
de54473e-b82d-46cd-8892-ce7caed6b771	e22d2f90-945f-4c38-bdbd-b1c91b55e9eb	All models within 2" suffer 2 Magical Dmg.
61e6c1b2-ab0c-435a-9d61-d79d1b12180b	e22d2f90-945f-4c38-bdbd-b1c91b55e9eb	Choose a friendly Norse model within 8" to gain [Protection: The first time this character would suffer Dmg, reduce that Dmg to ∅], until end of turn.
909dc58e-9179-44e0-aea8-e53519ce83e1	77ffbe7f-5709-49d0-8e4e-c7c287713b70	Target loses possession of 1 Moonstone they are carrying. Place it in base contact with the target with a depth value of ‘1’.
8ca7bef8-cad0-40e0-b4a9-a3bc6a935221	77ffbe7f-5709-49d0-8e4e-c7c287713b70	This model discards all energy.
a9a87c98-539b-4db9-9348-655de2b46042	3ed97f94-dbfd-4314-8074-cc1c40a768d1	The target model suffers no damage and may move up to 3".
bf796a77-8180-4304-a061-d2739061694f	a56e8be7-0ad9-4073-842a-d310a4e7bf8a	Move this model 2X".
6546f62a-5b29-4382-8999-81c1e3e20682	ce03a185-0bf5-4612-8485-5f53dc955340	Target suffers X+1 Magical Dmg.
2981da3d-af9d-4850-a58f-de5bba9d3bcd	a40962d6-2262-4a91-9971-3417ee630917	Target enemy loses X energy.
1022576f-8aff-4bfc-9793-f85132e2183d	a40962d6-2262-4a91-9971-3417ee630917	Move target enemy up to 2X". Then you may have the target take a Melee Attack action controlled by you. They count as friendly during the Melee attack action.
bbf94a64-7f02-42fb-9811-655fac993648	a40962d6-2262-4a91-9971-3417ee630917	The target and this character are both slain.
cd188d11-84b9-4416-a1dc-0d6350a6c7de	36d04ea0-9e53-4bd9-8e5b-1f8954828759	Target suffers X Impact Dmg.
831cc1bd-72d7-418d-938a-5e89d83e7ba8	1dfa68b8-e75f-4bf9-8670-fef6168a2cf9	Move target enemy model 2X" directly towards this model.
6b231ee0-043b-4a75-b3e2-91f904d8db08	1dfa68b8-e75f-4bf9-8670-fef6168a2cf9	Target model is moved by your opponent 4".
a9ebc414-603c-444f-bb81-2f2bc930fd31	560a0b05-f576-4bbb-b690-64b9c7bd0248	If this character has the Enchanted Javelin ability, the target gains it and this model loses it, both until end of turn.
b513764f-d386-4d24-9b7a-bdba99a145f2	560a0b05-f576-4bbb-b690-64b9c7bd0248	Target suffers X+1 Piercing Dmg. After resolving this action, this model loses Enchanted Javelin until end of turn.
4dcc683b-a61d-49f1-aefe-33e148b16a0f	560a0b05-f576-4bbb-b690-64b9c7bd0248	This character may discard 2 energy. If it does, all other models within 4" suffer X+1 Piercing Dmg then are moved X" directly away. Then, after resolving this action, this model loses Enchanted Javelin until end of game.
37e1b5d3-4acd-41db-badf-bf9e2e09dbbb	a31dbc90-9ece-47c8-aab2-2bc10ff54a50	This ability cannot be used for the remainder of the game. All models within a 3" pulse suffer 4 magical Dmg.
6b339d04-af78-42fe-a0b6-1e39f0ebbc30	a31dbc90-9ece-47c8-aab2-2bc10ff54a50	Target character suffers 2X Magical Dmg.
76335b4e-89b2-4716-81c2-bac163977ecf	0ee6fe18-6097-4236-85a6-0476f14ee502	Target suffers X+2 Impact Dmg.
83ad8b66-d34e-47aa-9fba-04159b80e62a	4626a279-b4c8-4ac4-b319-bc9e02070ec3	Target loses one Active Ability of your choice until end of turn.
b96d654a-c130-4c45-bfe1-04c24ca46468	8f5b2545-b9e2-4211-84f1-3919e95e4a71	Target suffers X Magical Dmg then is moved 1" directly away.
fb750ff9-27e6-4f8f-a6b2-87815e8c9802	d376bfa6-4b60-4705-a2b1-1f4d6af35b72	Target suffers X Magical Dmg.
65949e9e-6de6-4395-ab65-7e8a320f7ebb	d207527c-5619-48fd-b88d-f2db9faa5dd1	Target suffers X Impact Dmg.
a0f194ae-2a12-4041-82b2-287f5490e41e	ca8fce0e-f9dc-45bc-a99f-a2bd1fc94b5c	Target character suffers 3X-1 Impact Dmg then is moved X" directly away.
11ba2165-4f57-486b-8de2-dfd3d2504305	4674e9fd-6458-4f2b-bbe5-4f39dbf1b7d7	Target suffers 2X Magical Dmg.
d464938c-514c-4752-96aa-d490e2cfad32	e806a732-d4e6-4b72-a9de-8812370941f0	This character suffers 3 wounds or, if there is a friendly Psychopomp within 6", you may choose a friendly Psychopomp within 6" to be slain instead.
1ba7328e-8cdb-4309-881d-5c3d57490cc0	2b8eadec-1dea-4975-942b-01a058d2ee59	Target restores X wounds.
61afc474-d47d-4b1e-bfc8-fdbf8589fbd8	2b8eadec-1dea-4975-942b-01a058d2ee59	This character suffers 2 wounds.
a9a8257e-5b2e-405b-b018-0d7cba3e56f3	e22d2f90-945f-4c38-bdbd-b1c91b55e9eb	Choose a model within 8" to restore X+1 wounds.
0d166f6a-b599-4327-80bd-de43fc72938c	f0ce8c12-15e1-4007-a6fa-7f602e59be1d	The target suffers 2 wounds and loses 1 energy.
16f36b4b-5ed4-42a9-82e4-77fc9a492415	f0ce8c12-15e1-4007-a6fa-7f602e59be1d	Target Troll gains [Tough as Old Boots: At the start of the Replenish Step this model recovers 2 wounds.], until end of game.
5e301eda-3497-4422-b881-3b8957cfee0b	f0ce8c12-15e1-4007-a6fa-7f602e59be1d	Target suffers X wounds, then gains +1 energy.
b70ed2f8-0d7d-4c8b-b42c-01d22c11babd	41a8ce5a-60ab-4c44-aa1d-e3cb6b74fea5	The resisting player sets the depth value of the target Moonstone to a number of their choice.
32102334-8654-4be7-aa11-51f77a586c66	41a8ce5a-60ab-4c44-aa1d-e3cb6b74fea5	Decrease target Moonstone's depth value by X, to a minimum of 1.
0ef12a6f-e8c6-4329-b8f7-e555cc3be3d5	f355ce68-ffb4-40fc-a3dc-bd6c44156749	This character gains X+1 energy.
e53b5227-a106-43a2-81ea-d0691f74cb0a	8f87de7d-d569-4092-b619-20c814ea6ee7	Target gains [Protection: The first time this character would suffer Dmg, reduce that Dmg to ∅], until end of turn.
e9d78a6a-6f80-430f-99ec-edf525d8293a	8f87de7d-d569-4092-b619-20c814ea6ee7	Target within 3" of a Tree or Wooded Patch terrain suffers X Magical Dmg.
194ecd23-2ce6-4659-aac1-fddb3de113f7	5dfab766-7ccd-42f9-bd44-7150e142e9fc	Place a 50mm Diameter Wooded Patch within 3X" and LoS on open ground. This remains in place until end of game. A maximum of 3 Wooded Patches may be placed by this troupe, if a fourth is placed you must choose and remove a Wooded Patch you created earlier this game.
6467a3ac-2753-469e-aa56-6613102d7b4a	7beea4e5-70ad-429e-a280-3eeacfaa00e9	Target within 2" of a Tree or Wooded Patch gains X energy.
832a721a-96bd-4d06-8516-f15e6a5ecdf0	5dfab766-7ccd-42f9-bd44-7150e142e9fc	This model suffers 2 wounds.
708cf7ee-311c-450f-bbc9-648cbc8740fd	d4857f97-ea34-41d7-95d3-7ae4de19aa07	Target character suffers X+1 Magical Dmg.
2b312f07-9dd4-4164-a732-6a9a8d86be45	9a2e3da5-acf3-42b8-acc0-979edbf29fc3	Target loses X energy.
306535af-fb8e-4d1b-85cc-46c37649beb0	9a2e3da5-acf3-42b8-acc0-979edbf29fc3	The target loses possession of up to one Moonstone they are carrying (place it in base contact with them with a depth value of '1').
ee8aaaa3-ad8d-4485-8bb9-a2e1c19ae35b	f80ccb5a-1676-49cc-97a5-2de4054784d8	Choose a model within 3" and LoS of this character. Then choose another model within 3X" and LoS of this character. Place the first model within 3" of the second model.
79d89318-fc6c-4d3a-bfa9-a88d39efe67c	e092a6b7-4b91-45e6-a864-86bbe920915f	Target loses X energy.
c87c347e-96ce-405b-90cf-e65871f78d3d	02d69b81-d9ff-46bc-9a3d-c963cdfea140	Move other target model X" directly away.
da83f90d-a155-4e8b-a112-3274b6d55079	d1b6802a-aa3c-45de-8e93-4293fa9a7ee5	Target loses 1 Passive Ability of your choice until the end of turn and this model gains that ability.
d1427f96-48d5-47b3-9bc1-da6a82e83027	d1b6802a-aa3c-45de-8e93-4293fa9a7ee5	The resisting player may move this model 2".
942aecf5-7c5c-4517-ab7a-c3ed5800e557	93fb7c60-aede-4e00-82c9-9394d9da676f	This character is slain, then the target loses possession of one Moonstone they are carrying. Place it in base contact with the target at depth value of ‘1’.
b11f9b74-4ddc-4d5c-8d02-b2c62fc1bbe2	5cd48606-9a6c-447e-ba1f-7784bc116783	Place this model within 2X".
bc76b448-a34e-4fc4-ba00-3ed16c668d15	5cd48606-9a6c-447e-ba1f-7784bc116783	The resisting player may place this model within 6".
cbba7623-6794-4fc8-8695-cdb0714d7035	5f2670df-e678-41f9-b2ee-0ecf5b4a4b7d	Move target model X+1".
074e4c9b-b326-48a2-b2d1-d7a36da266f0	8274b8b1-7f02-4d46-a455-0288a651596c	Target suffers X Piercing Dmg.
522820be-ac3e-4824-b9aa-4a8e6f070c24	8274b8b1-7f02-4d46-a455-0288a651596c	This ability cannot be used for the remainder of the game.
0cda9cc1-442a-49e8-a8e3-b4a749a527b6	e22b5337-d6c8-4a48-a8a0-d5240326b4fc	Target gains [Protection: The first time this character would suffer Dmg, reduce that Dmg to ∅], until end of turn.
d4d9e325-c3bf-43f3-94e7-4774b49edb77	8f9b6919-ae56-48b6-b8d9-c9525341f361	Target gains [Deadwood Cursed: During the Discard Step, this character and all models friendly to this character within 3" suffer 1 wound.], until this character is slain.
4a6ba37a-40fb-48fd-bfaf-79b3e06d8460	8f9b6919-ae56-48b6-b8d9-c9525341f361	This character suffers 2 wounds. All other models within 3" suffer 2 wounds.
dad33c57-d7c8-4287-8a06-211ce8341802	c5373a42-34f1-49db-9aa8-84d82e07152b	Target other character suffers X wounds. Then, for each wound lost, choose a friendly model within 8" and LoS of this model to restore 1 wound and gain 1 energy. The same friendly model may be chosen multiple times.
307aec9a-2925-47a2-b43e-87ce0521c88b	c5373a42-34f1-49db-9aa8-84d82e07152b	This model suffers 3 wounds.
074b333c-8ce3-4086-9c81-d593431f7aff	f355ce68-ffb4-40fc-a3dc-bd6c44156749	This character suffers 3 wounds.
807820e8-450a-4843-af20-8a07c5b09f39	7beea4e5-70ad-429e-a280-3eeacfaa00e9	Target heals X+1 wounds.
be2aba4d-52fe-4db0-b336-f1dc96605b3a	7beea4e5-70ad-429e-a280-3eeacfaa00e9	This model and Spirits within 6" suffer 2 wounds.
4233a397-8e4e-4b10-abe3-57f7e68ae45c	4f0454fe-f440-407c-b62e-f4d5b29ccfd7	This model suffers 2 wounds.
a3c76d8c-a815-4139-9c95-0f1b23252e12	14ef3034-8575-45de-a095-fd5cdeb5e710	Move target X+2" directly towards this character.
b99c5fe3-3fa0-4783-a017-ed389762da01	daa5bf22-ebe1-4c39-ad40-09a8ac1c0a2c	Target suffers X+1 Piercing Dmg.
f9729223-ff42-40cc-83b6-17ba446351cd	db50ae51-cbc0-4ae0-b2fd-063b82afae54	Target loses possession of one Moonstone they are carrying and this model gains possession of that Moonstone.
8a58ab52-f40c-470d-bcdb-92b72b84c795	bb6af0d2-5263-4dfd-aade-10642e3490f1	Target suffers 2 Impact Dmg. If this character has already used the Pinch ability this turn, increase this Dmg by +1.
73d39246-c058-4a1f-912e-ccfda199ff22	6e463b30-7d1a-4a9f-ae23-8d90405a22ed	Target loses X energy. Then distribute that much energy amongst Faerie(s) within 6" of the target.
660b6718-f2a0-4ee0-8509-b9f550b67e1a	b1555c82-32af-4692-8743-1f9c5e0fb5a8	Target suffers X+1 Magical Dmg.
a6461415-ec46-491d-9ddb-8019c4f9f1ed	88b7fded-17dc-45dc-bf1b-704dfe681b76	Move target 2" directly towards this model.
01dd7bd9-374c-4db8-b9d8-6d07a6fe49a8	b943a114-6080-47ce-97bc-71f6865f6d0b	Place a new friendly Murder Bunny in base contact with this character.
5b947665-57c9-4694-ad5b-4e720b13e836	38f01485-d5c3-46e2-9276-d19d58b6e79e	Target suffers X Piercing Dmg.
2537a042-a896-4fcb-a2a5-0fe4efe9471d	b8973f7b-8f5d-4517-bd9a-6aeab69695b6	Target loses X energy. A friendly model within 8" and LoS of this model gains that much energy.
14aadacd-2ccc-4ddd-8674-9260b5d6a792	96097772-8f72-475f-bf25-f3ee5133c448	This character, or a model within 4" which shares a keyword with this character, gains +1 energy.
a1f88881-012b-4619-a63b-74b35d06a006	a05c9c53-c3bc-4512-b85c-64f9653e41a0	All models within 4" suffer 2 Magical Dmg.
d9b0aec7-c90b-4f60-a690-10a9383d4bc1	6d2242fb-43a5-41c1-acf3-8cbc17cfbcf6	Target gains [Puppet: When Danica, Dusk Witch is active within 8" and Line of Sight, she may spend her energy to have this character perform actions available to them, excluding Jog. They count as friendly during the action.], until end of game.
3c1de0e1-e358-4f27-9c3b-cd43bd9134d1	11236699-8292-43e5-be8f-f4bef5422e45	All other models within the pulse suffer X+1 Magical Dmg then are moved X" directly away.
ee86fe3a-1756-45f4-87f8-a7b8219eb3f3	36116281-3182-420c-92fa-6708196344d2	Move target other friendly Faun X+1".
a0f2aa8b-eeb9-45bf-af02-3241b1e48346	1a3e486a-7f96-4e86-b492-139eb4e3fb7d	Target is moved X" directly away.
e352c84a-0288-4425-baa7-b18cc7962f5e	1a3e486a-7f96-4e86-b492-139eb4e3fb7d	Target gains X-1 energy.
11fa2650-43aa-4ba1-8d71-74a6c05a8b17	6de1b56e-e2b2-4712-91ea-7485331bf54c	Target friendly model restores X+1 wounds, then move it X".
08615201-b474-4b16-94b3-db4fe8ee1eed	6de1b56e-e2b2-4712-91ea-7485331bf54c	The target suffers 2 wounds.
71b1e906-f8ea-4851-995e-56ca6cdaef6c	db50ae51-cbc0-4ae0-b2fd-063b82afae54	This model suffers 3 wounds.
406d6b06-2ec4-4afa-a53c-223f57d8d1d6	bb6af0d2-5263-4dfd-aade-10642e3490f1	This model suffers 2 wounds.
c90b344a-d9d7-492d-b5c6-e4b5d8b02b51	6e463b30-7d1a-4a9f-ae23-8d90405a22ed	This character suffers 2 wounds.
a6cfef5a-4427-4092-8ce6-38d6c29aaa47	b1555c82-32af-4692-8743-1f9c5e0fb5a8	This model suffers 3 wounds.
0c6005cd-6627-4c8e-80be-57d03b7bfcee	88b7fded-17dc-45dc-bf1b-704dfe681b76	This character suffers 3 wounds. Then if this character is not slain all other models within 3" are moved 2" directly towards this model.
b4e3aed0-be6e-41df-a5a1-c1f557a7c637	b943a114-6080-47ce-97bc-71f6865f6d0b	This character suffers 3 wounds.
bc3f6634-6f4d-4cc2-b361-fd68b4adf89e	3a881f67-2015-4455-91ff-de1eca39dd75	This character suffers 3 wounds. Place a new friendly Murder Bunny in base contact.
b115b772-7b7d-494a-9279-dd5447602bd3	3a881f67-2015-4455-91ff-de1eca39dd75	This character suffers 3 wounds. Place a new Jackalope in base contact. It has no energy but is considered a permanent additional character in your troupe and may activate this turn.
d2e60526-1377-46df-974e-f460088b76c2	a8770842-db87-4611-9a1b-2640749c9436	Target restores X+1 wounds and suffers -2 Arcane Stat until end of turn.
e3930b97-5c1c-4a8f-9e34-71d47f77fa04	785f9ed0-28ee-44d2-8469-b55f1fa4e727	This character's Melee Attacks deal +X Dmg until end of turn.
653087e2-40e4-47eb-b63f-d70a19b14bb0	785f9ed0-28ee-44d2-8469-b55f1fa4e727	All characters within 4" deal +1 Melee Dmg until end of turn.
56185717-b14e-4b47-b3fc-24b631d0af12	26e7167a-fde5-4bec-b015-f5e1014feff2	This model cannot move or be moved and has its melee range increased to 3" until end of turn.
565b1e4e-aaf4-493a-86e6-52a71c390bf5	9e2967d3-aaf9-479f-9ad6-477cd4512f64	The target may be moved 4" by the resisting player.
e6e83c87-caf9-4098-b533-aa52189c5027	f5ace6dc-3209-48f8-892e-8fe81781b528	Place a new Echo of the Forgotten King in base contact; it is considered a permanent additional character in your troupe and may activate this turn. Then this model is slain.
4dfeb78a-7595-4189-8ad2-39d57216552f	61ac76cc-bad7-4ff3-8083-894171907a34	Target Human or Noble gains +1 energy.
106551c3-b098-408e-abb0-d5f2a1fccd84	ef74802f-740b-4bf9-a42b-53dd9be5cc6d	Target suffers X+1 Piercing Dmg.
a173f3e8-71a4-4386-9197-d9611810d52e	b81f7ab7-2e21-4b95-9ae4-9e3287a5cdf0	Target model suffers -1 Arcane Stat until end of turn.
4c95939a-29c4-467b-98b1-165174aa2db7	b81f7ab7-2e21-4b95-9ae4-9e3287a5cdf0	The resisting player may move this model 2".
ea125f94-88b4-4edb-96f3-0731e1381ceb	b81f7ab7-2e21-4b95-9ae4-9e3287a5cdf0	Target model suffers -1 Melee Stat until end of turn.
49e1d339-e404-4a03-a0a0-064c887ffa99	d2699fbe-d564-4fb7-8d5f-c3a71ac31ca8	Target model gains +1 Arcane Stat until the end of turn.
1e110dc3-71c1-4a7c-b502-1af2092dbe2d	3402b185-e24c-4749-bf59-0f754378671f	Target suffers X Magical Dmg and gains [Slow: This model's Jog actions are limited to 2"], until end of turn.
84caa830-9746-49e7-b120-fe2b85f7ee09	f95a19d2-4a97-4d08-b916-4c4cb34009f4	Place a new Sprog in base contact with this character.
2c7ecdb7-3ac0-4adc-a42b-e21ea0192c20	f95a19d2-4a97-4d08-b916-4c4cb34009f4	Place a new Pookie in base contact with this character.
31c2316d-f059-46e4-88ee-ced7e72ba5b3	f95a19d2-4a97-4d08-b916-4c4cb34009f4	Place a new Urchin in base contact with this character.
5bbbc162-4efa-4349-83e9-868d3408ba56	9b2cabc5-85a7-408a-b382-243b8d144892	This model suffers 2 wounds.
4b1d53fc-4fe7-4e6d-96c1-0c8d4002fa4b	2d376265-59f4-4e79-8ac5-10e5d6fa6202	The target loses 2 energy and this character suffers 2 wounds.
77944f41-1380-4777-8ef6-0672aab4a0f5	26e7167a-fde5-4bec-b015-f5e1014feff2	Move target enemy X+2" directly towards any friendly Treefolk. Then target suffers 1 wound for each Wooded Patch within 4" of it.
6a719e6d-93f2-4442-b75f-b25351d8f113	e6dba5ab-0333-4ff0-9379-f726455e3520	This character suffers 2 wounds. All other models within 6" suffer 1 wound.
30f69832-de46-4928-a03d-3a86185a2cbd	a5d9a1a9-3bde-4e1e-b953-46e39d70bd6b	This character suffers 3 wounds.
c5eaafe8-223c-4e5f-9acf-aba95f171292	f5ace6dc-3209-48f8-892e-8fe81781b528	This model suffers 3 wounds.
6600d575-55b6-490a-81e1-4721c3f8427f	61ac76cc-bad7-4ff3-8083-894171907a34	This model suffers 3 wounds.
dd9b64c1-a5c8-4f83-a8d8-d9b3f3b58c2b	61ac76cc-bad7-4ff3-8083-894171907a34	Target Risen or Noble restores X wounds.
14218d67-b0c1-4f14-b245-fe03a5d6326b	ac799b53-cd59-45bb-aea8-a722b480899c	This model suffers 3 wounds.
f0fb5277-50fd-47f1-91a5-03e2a437bca4	ac799b53-cd59-45bb-aea8-a722b480899c	Target restores X wounds.
880228af-e0d9-41ae-8024-6c5748d25800	1cd96093-b738-40de-b0af-fe06abb98983	This character suffers 2 wounds.
45247435-cbd2-4f8d-9dd6-0a9852928a14	496a1ed5-e9c5-4bce-83d6-b1ec15a430a9	This character suffers an amount of wounds equal to the number of wounds it has currently suffered.
0ffc60a7-aaf9-4a08-bc19-e063b1314698	ef74802f-740b-4bf9-a42b-53dd9be5cc6d	This model suffers 2 wounds and loses the A Skele-tonne of Bolts ability until end of turn.
93d5a249-3327-43f9-8614-20ba68ba4ba4	fe5324ef-e37b-490f-b5ba-c435f3b2f06d	This model suffers 2 wounds.
c57e975c-c60b-4eac-ac64-f65e324be56a	85f813c3-68d8-4c9a-b9a2-5f2ace522b57	Target friendly character restores X wounds.
59f90424-7e7a-41c4-877a-362978544c80	85f813c3-68d8-4c9a-b9a2-5f2ace522b57	The target suffers 2 wounds.
b52c945b-dfb0-4f1c-9a01-bd886825b13a	f95a19d2-4a97-4d08-b916-4c4cb34009f4	This model and Babelings within 6" suffer 2 wounds.
6dbac104-4bba-4f24-b9b0-782da8decba4	60263ad3-d93a-41b5-819f-a9dc4bd4ca42	This model suffers 3 wounds.
cee85efd-c035-4af3-9ec0-583878c5dc69	f390c500-6c30-41dd-b2f3-c945e6b389a5	Target suffers X Impact Dmg.
f56aec84-1194-4276-b4a2-722e76708166	7d6f6cd4-1292-4a71-acf2-be5ddcb9fd9d	Place a 50mm Diameter Water Feature within 3X" and LoS on open ground. This remains in place until end of game. A maximum of 3 Water Features may be placed by this troupe, if a fourth is placed you must choose and remove a Water Feature you created earlier this game.
c341a4f7-b517-432d-a3e9-2d260f98ed0b	391a37f0-1d6f-478f-aa68-8bf75ce39c46	The resisting player may move this model 2".
2880a584-e2f0-4792-9f3e-11e1a469c027	a8eda789-87a5-4a7b-a662-15e2df291d7f	Reduce target’s Melee and Arcane stats by 2X until the end of turn.
626669d3-e0bf-44d3-8009-d7bbc6eec856	89821dda-f52d-467b-a866-9e55dde52d72	All models within a 3" pulse suffer 2 Magical Dmg.
c92e6ad3-d4b4-40e9-953d-31218afc8f44	7a5d828a-339f-41d5-8d2c-b740f05ca5ba	Target suffers 2X Piercing Dmg then is moved 1" directly away.
38aeb888-be31-4c9e-91bc-f7809c404b42	68865207-a89d-4522-aace-685cdd0a35d3	Target loses possession of 1 Moonstone they are carrying. Place it in base contact with the target with a depth value of ‘1’.
d1eb344a-8e6f-4aac-83ba-9c80d6fc9ee5	13751d60-d856-4ca8-a496-0df424f97530	Gain +X energy.
fc8e9e48-513f-4b82-9b88-b0523a5d3e3a	bee09d61-74ea-435c-9e87-7e2931a1bf09	Place this model anywhere in base contact with target enemy.
6805c94b-ec25-44e4-af74-b4dd62a59ab9	2b8eadec-1dea-4975-942b-01a058d2ee59	Target suffers X-1 Magical Dmg.
59a073ae-7b84-4e2c-b03b-49dfe8938771	e22d2f90-945f-4c38-bdbd-b1c91b55e9eb	Choose a model within 8" to suffer X Magical Dmg.
aa2274cd-7c6c-41ec-9d36-fe71c4ca268b	d264d1dc-bd92-4b20-ab82-d4af59efffaa	Target model loses possession of one Moonstone it is carrying and this character gains possession of that Moonstone.
b127b63b-a413-426d-8bd5-4fb40461ddef	a56e8be7-0ad9-4073-842a-d310a4e7bf8a	This model cannot move or be moved until end of turn.
8d924086-a5f0-4cc6-9bca-ba08cad3fc70	592e01ef-f89f-4758-953a-bf81bd683dba	Targets suffers X Piercing Dmg.
79de20bd-6c05-4325-8f32-f78fdcdd7399	d207527c-5619-48fd-b88d-f2db9faa5dd1	This character loses the Look of Innocence and Disappear in a Crowd abilities and is Evade Stat +1 until end of turn.
859c25af-f0f2-44f8-816c-7904ebcc79a9	4f0454fe-f440-407c-b62e-f4d5b29ccfd7	Move target 4" directly towards this model.
0034a4de-df6d-47b4-9877-5dbed77e0d36	93fb7c60-aede-4e00-82c9-9394d9da676f	Target other model and this character suffer X Impact Dmg.
be08c5dc-f175-47ac-a993-ee45cba064f4	213f03c6-a752-477f-bc7b-c3967f1ff568	Target suffers X+1 Magical Dmg and gets -1 Evade Stat until end of turn.
dccb1aa1-9725-41ea-b926-bb9d5b69c676	4a71206f-4198-4fed-8870-b3277d698f6b	Target suffers X+1 Impact Dmg.
0cf79717-8289-4aae-8e98-4d355d4971fc	daa5bf22-ebe1-4c39-ad40-09a8ac1c0a2c	This ability cannot be used for the remainder of the game.
de3f24b1-9796-4b26-92e6-15632de95c8c	d6cebca1-610b-4d9b-ae0e-2e5eda791c85	Target suffers X+1 Magical Dmg. Other models within 2" of the target suffer X Magical Dmg.
a7bc2c95-01e1-4d74-be02-4748ad6d67fb	08491f73-81ab-4dcf-a99e-787101e825ef	Target suffers 2X Impact Dmg.
b56945af-24a7-4b43-8e9e-0db6f44b53c1	4fab4aae-fec8-4528-a36c-f9d48578bcc8	Target suffers X Magical Dmg, then if the target shares a keyword with this character move it X".
4d456aa4-b477-4d4c-be7b-8c723945fea3	9365e02f-318c-4792-902c-142252412958	Target suffers X+2 Piercing Dmg then is moved 1" directly away.
7588ca26-2276-4156-a207-9858d12ecbcc	36116281-3182-420c-92fa-6708196344d2	The target is moved up to 3" by the resisting player.
393ccab5-9d66-4819-bad5-347cf1a99f2e	a5d9a1a9-3bde-4e1e-b953-46e39d70bd6b	Place this model within X+1".
471e6262-6713-47e8-9709-ee7b4b0ce8ef	7e2af3ec-e0b4-4bc1-a6a3-264fcea27c30	This model suffers 2 wounds.
baadc225-71d5-4b0c-bbf8-3248b4de688d	7e2af3ec-e0b4-4bc1-a6a3-264fcea27c30	Target gains [Horrified: During the Discard Step, this character suffers 2 wounds.], until this character is slain.
6aba62ae-0557-42e9-8ade-0940664c978d	496a1ed5-e9c5-4bce-83d6-b1ec15a430a9	Target suffers X+1 Magical Dmg or X+2 Magical damage if the target is not at full health.
613fa403-4960-474e-b9c0-fbe6969b73a0	b81f7ab7-2e21-4b95-9ae4-9e3287a5cdf0	Move target model X" directly away.
8f057288-b221-4a50-b5c8-56188031cfad	d2699fbe-d564-4fb7-8d5f-c3a71ac31ca8	The target's Arcane Stat is reduced by -2 until end of turn.
32c06aa4-7ce0-47ba-b054-25548d5944d5	844e981a-1a11-49dc-9d68-df1e8cf83068	This character loses the Lampy's Light ability until end of turn.
6cb4c050-88f3-4084-846a-ef35c2c992e4	844e981a-1a11-49dc-9d68-df1e8cf83068	Increase the range of Lampy's Light by +X" until end of turn.
942c66d6-6978-43f0-b2e9-1d8da2279876	fe5324ef-e37b-490f-b5ba-c435f3b2f06d	Target enemy without Frightened gains [Frightened: At the start of the Discard Step, the player that used Stage Fright flips an Arcane Card then moves this model up to X+1". Catastrophe: Move 0"], until this character is slain.
fe8c525c-16ab-4d23-a5e8-de60556926f6	85f813c3-68d8-4c9a-b9a2-5f2ace522b57	Target friendly character gains +1 energy.
d4da0718-d164-4f04-a7e7-514c6e19c381	60263ad3-d93a-41b5-819f-a9dc4bd4ca42	Place a new Familiar Psychopomp in base contact with this character.
a4515702-d9f1-4eff-8ca0-502379762d19	391a37f0-1d6f-478f-aa68-8bf75ce39c46	Move target X+2" directly towards this model. Then, if the target is within 4" of a Water Feature it suffers 4 Magical Dmg.
428e63a4-e516-45ec-a20a-f07853af150a	3b668803-9e8b-4bc5-aeb7-a9cd0ec1aa1c	Target suffers X+1 Impact Dmg.
082c3abf-f0f5-439a-adac-aebe50050c4d	11418c12-71e5-456e-8b8d-a1adef6f907f	Target restores X+1 wounds.
273a607a-0d72-4a99-814c-e3c3539ed599	fa0f082f-11c2-4cbe-ae5d-06b91bc309e2	Target and this model suffer 2 wounds.
8e416ae5-2f8f-4142-80bb-1eef6d44e25f	31a77003-a096-4441-afe1-9466169fac15	This model suffers 3 wounds.
f36cb3b6-8d79-4cf3-847c-0013073637ad	d3fbd78c-f8df-4e81-8451-c8d55eeefaf3	This character suffers 3 wounds.
eca763b6-f8ad-4f57-a641-76ed5959f8b5	abf92569-9e5d-4869-94af-e3f32a1861c1	Target discards all energy and suffers 1 wound.
eceb021a-12a3-4ad3-9c80-2e9382d5f003	078f860f-fb39-4c40-8b0a-9cc6f6954b62	This model suffers 4 wounds.
6527cd56-7f05-479e-bf3f-e606eb807305	7c341a3d-921e-4a60-937a-ab5aceded11c	This model suffers 3 wounds.
6cb0f24e-7347-4ff9-85bd-e57f3ed26418	7c341a3d-921e-4a60-937a-ab5aceded11c	This model restores X wounds.
a44023a6-fe93-40e9-8675-8ab152e98f4c	56334d68-17be-4f7c-84c8-a2037cf7c22a	This character suffers 4 wounds.
9e9ffbc0-36c1-429e-9766-b08dd8ef5adb	8b74c045-5faa-48b3-abdb-544cd324e5cd	This character suffers 3 wounds.
c3975116-2e92-4676-bfd3-5d10d01739c7	13751d60-d856-4ca8-a496-0df424f97530	Suffer 2 wounds.
42c6bff0-faff-483b-a9af-179cbf4f8d5b	2376b30d-2acf-4b06-a6cb-fd6b95c791fe	Target friendly Faerie gains X energy and restores 1 wound.
fe64f3db-8c72-454b-bc7e-cd15ee7b198f	2376b30d-2acf-4b06-a6cb-fd6b95c791fe	This character suffers 2 wounds.
1fa3e4b2-05f2-49bc-82a0-3cb9512b03d5	f0ce8c12-15e1-4007-a6fa-7f602e59be1d	Target restores 3X-1 wounds.
2a64cb96-3ebf-4104-ae45-23f08dd8725a	20e6b69a-536f-4aab-9026-174f9cf0d554	Target Soldier or Noble restores X wounds.
aa377b79-79da-409c-9e1e-a303e2d00dbb	20e6b69a-536f-4aab-9026-174f9cf0d554	This model suffers 2 wounds.
c33a6043-fdb5-4564-af97-a1efeac4072e	a40962d6-2262-4a91-9971-3417ee630917	Target enemy suffers X wounds.
ff1d4da2-9d7f-4436-8e36-eb6d3cdd3065	36d04ea0-9e53-4bd9-8e5b-1f8954828759	This model suffers 2 wounds.
0f0aa8bb-4ca2-4837-84f5-7552417ee058	0ee6fe18-6097-4236-85a6-0476f14ee502	This model suffers 2 wounds and the Reload ability cannot be used for the remainder of the game.
8e40a33f-212a-4f49-a27f-22ad64e76de3	4626a279-b4c8-4ac4-b319-bc9e02070ec3	This model suffers 1 wound.
35b9b668-7938-4ce1-994e-c3154b93129f	8f5b2545-b9e2-4211-84f1-3919e95e4a71	This model suffers 2 wounds.
34b70124-5121-49bc-92b8-c25278b68cd7	592e01ef-f89f-4758-953a-bf81bd683dba	This character suffers 2 wounds.
96e17ed5-ad55-4aa6-b5fd-03b2af01897c	ca8fce0e-f9dc-45bc-a99f-a2bd1fc94b5c	This model suffers 3 wounds. All other models within 2" suffer 3 Magical Dmg then are moved 1" directly away.
5734a87d-c917-4daf-a6b6-63e67d3a94a9	4674e9fd-6458-4f2b-bbe5-4f39dbf1b7d7	This model suffers 2 wounds.
78548c24-ecba-4359-aff6-f3803ced25da	9a2e3da5-acf3-42b8-acc0-979edbf29fc3	Target’s Melee Stat is increased by +X until end of turn.
1308fc2c-b5ee-44a3-9926-c10e8a7af690	9a2e3da5-acf3-42b8-acc0-979edbf29fc3	Target gains X energy and its Arcane Stat is reduced by -X until end of turn.
bd1948ab-b167-485f-b747-1b54177ee401	abea60ee-40ae-4256-a2eb-1419d98453d2	All characters within the pulse suffer 1 wound.
98288f9f-1312-4992-af62-e0ffe5bf30ba	abea60ee-40ae-4256-a2eb-1419d98453d2	All friendly characters within the pulse restore X wounds.
d0ad58af-cc45-475c-9bb3-ee1b00a91dab	f80ccb5a-1676-49cc-97a5-2de4054784d8	This character's controller must choose either to have him suffer 4 wounds, or be Removed from Play.
8d52f73a-39de-413e-aad6-d7ebcfa7194a	e092a6b7-4b91-45e6-a864-86bbe920915f	This model suffers 2 wounds and loses all energy.
294974fc-0e93-4228-b3bf-dbfe07e1bf4e	4a71206f-4198-4fed-8870-b3277d698f6b	This character suffers 3 wounds.
12a353b8-af31-4373-bdc1-07c94ba6133f	5f2670df-e678-41f9-b2ee-0ecf5b4a4b7d	This model suffers 2 wounds.
bd46bc8e-76d4-42f7-9e5b-b8422eb6ac70	e22b5337-d6c8-4a48-a8a0-d5240326b4fc	This model suffers 2 wounds.
e909dcf8-f44a-4107-9216-a8b11546dc81	a8770842-db87-4611-9a1b-2640749c9436	This model suffers 2 wounds and -2 Arcane Stat until end of turn.
c362849e-b0cc-43ae-8ec4-c85f1f1a474d	d6cebca1-610b-4d9b-ae0e-2e5eda791c85	All models within 2" suffer 2 wounds.
f7cdc9a6-2d59-4d55-bc38-8d05985401e2	38f01485-d5c3-46e2-9276-d19d58b6e79e	This character suffers 1 wound.
8e384d11-3008-4ff2-9f60-a626786eb8e8	08491f73-81ab-4dcf-a99e-787101e825ef	This character suffers 3 wounds.
e6db9ef4-7823-41ed-b075-887854894270	b8973f7b-8f5d-4517-bd9a-6aeab69695b6	This model suffers 3 wounds.
cf9dd95b-0a9e-4250-bc6e-7d9a76f056a3	4dae6e2a-94e3-47b2-9f55-31ff3064693f	Target enemy suffers X wounds. A friendly model within 8" and LoS of this model restores that many wounds.
4890746c-1e0f-4a2e-bc94-338a1de14d6d	4dae6e2a-94e3-47b2-9f55-31ff3064693f	This model suffers 3 wounds.
a960fae1-bd6f-4706-bceb-616839681973	96097772-8f72-475f-bf25-f3ee5133c448	Choose another model within 8", this model gains one of its Keywords until end of turn.
35e6e903-8286-46d6-bb3b-c83f56d2bfb7	96097772-8f72-475f-bf25-f3ee5133c448	This character suffers 2 wounds.
b03839ca-cdfd-4e99-ad00-2d387d274245	4fab4aae-fec8-4528-a36c-f9d48578bcc8	Target restores X+1 wounds, then if the target shares a keyword with this character move it X-1".
f40e9b8c-8f9a-4d8f-aa0f-13d2b10bd854	4fab4aae-fec8-4528-a36c-f9d48578bcc8	This character suffers 3 wounds.
f266fb28-c862-42d1-ae8f-259e73b1a693	a05c9c53-c3bc-4512-b85c-64f9653e41a0	Move target 2X" directly towards this character. Then, if the target is within 2" of this character they suffer 4 wounds.
9df5891e-842e-4b58-af93-021465df5939	bd5b58a9-11d4-49be-9d30-c8906d767d8a	Target suffers an amount of wounds equal to the number of wounds they have currently suffered.
ad2ddc7b-638c-452d-8f8f-96ac1fb850b2	cf406764-50fe-4b89-97df-7cf2219d30e4	Target restores all wounds and all energy.
bc2d5303-0cc3-402e-abc5-837df68f62df	cf406764-50fe-4b89-97df-7cf2219d30e4	All models within 4" suffer 2 wounds and gain +1 energy.
87d9ee91-f703-457c-a9c1-2577768e190f	11236699-8292-43e5-be8f-f4bef5422e45	This model suffers 4 wounds.
0dcb0173-514f-4184-bb39-da39e9314705	9365e02f-318c-4792-902c-142252412958	This model suffers 2 wounds and this action cannot be used for the remainder of the game.
0931b8e1-58c8-4564-b391-0371f1249cb6	7a7c7654-89a6-4e8c-9480-a967a696b50b	This model suffers 2 wounds.
a2a7d120-a36f-46f5-ac45-5eefd2f2021e	1a3e486a-7f96-4e86-b492-139eb4e3fb7d	Target suffers X wounds.
2911c384-8fce-47ac-86bb-cb328542fb65	1a3e486a-7f96-4e86-b492-139eb4e3fb7d	This model suffers 2 wounds.
79786dc7-d3a5-476b-8138-f1b2ecf4a48b	f390c500-6c30-41dd-b2f3-c945e6b389a5	This model suffers 2 wounds.
499c6eff-d6f1-49b1-a9a9-22eadef93a1d	7d6f6cd4-1292-4a71-acf2-be5ddcb9fd9d	This model suffers 2 wounds.
cbfc017b-48d8-4321-b2fc-9457bf1efff1	07c617ed-3ac2-4117-aaa0-eb8f31821e27	Target suffers X-1 wounds and gains [Bleed: During the Discard Step, this character suffers 1 wound then loses this ability.].
debd44f3-106a-4d8e-870f-aed84ec62919	eef59a42-8a08-429f-875a-2fe5a2a3f138	Target suffers X Magical Dmg then loses X energy.
dcb22607-2da2-4a60-ad0e-d4ee8485713e	eef59a42-8a08-429f-875a-2fe5a2a3f138	This character suffers 3 wounds.
2ba94a71-85ad-4667-a32a-dd01cc8b1f92	11418c12-71e5-456e-8b8d-a1adef6f907f	This model suffers 2 wounds.
b9b85d36-344e-4ff9-b200-d6b283faaed6	abf92569-9e5d-4869-94af-e3f32a1861c1	This model suffers 4 wounds.
574b9fb5-9c71-425f-8ce8-647cf338d383	d264d1dc-bd92-4b20-ab82-d4af59efffaa	This model suffers 2 wounds.
f7e4551b-2a3b-4592-a5ac-389f98d0307c	ce03a185-0bf5-4612-8485-5f53dc955340	This model suffers 2 wounds.
74b7c943-e554-4ca5-955f-14ced1b009e2	d376bfa6-4b60-4705-a2b1-1f4d6af35b72	This model suffers 2 wounds.
694e1878-1cac-4928-be54-a7125a8cd1d6	7beea4e5-70ad-429e-a280-3eeacfaa00e9	Target suffers X wounds. Spirits suffer an additional 1 wound.
c683af87-178e-4b12-b612-6293e6aabb20	d4857f97-ea34-41d7-95d3-7ae4de19aa07	This model suffers 3 wounds.
9ad0e846-f9ec-490f-aedc-25eaae91dbc5	02d69b81-d9ff-46bc-9a3d-c963cdfea140	This model suffers 1 wound and loses all energy.
ba03ec48-8374-4cfc-8b28-2f44772dba49	213f03c6-a752-477f-bc7b-c3967f1ff568	This model suffers 1 wound and the target gets -2 Evade Stat until end of turn.
852677bc-2670-48d9-a07c-f089fd426de6	14ef3034-8575-45de-a095-fd5cdeb5e710	This model suffers 2 wounds.
c615de64-676f-4a43-a6fe-cccf2d121b0a	bd5b58a9-11d4-49be-9d30-c8906d767d8a	This character suffers an amount of wounds equal to the number of wounds they have currently suffered.
739a623b-035f-42d1-8b5b-2183a7c89b1a	6d2242fb-43a5-41c1-acf3-8cbc17cfbcf6	This character suffers 4 wounds. The target gains +2 energy.
6f6cec94-8997-40c3-8e48-54a0ec162ab5	7a7c7654-89a6-4e8c-9480-a967a696b50b	Target model must discard half its energy rounding up, then it restores 2 wounds.
aaeb0956-5ca5-4371-958a-4e0b527374da	77108372-1fb2-4421-bb6e-d1d6d7e3f135	Move target X" directly away, then it suffers X-1 wounds.
17178045-750f-43a7-97ed-08d753f06b8f	77108372-1fb2-4421-bb6e-d1d6d7e3f135	This model suffers 3 wounds.
b5eeec9e-88b4-4cf1-8d7d-8dba3f0a5167	9b2cabc5-85a7-408a-b382-243b8d144892	Target model suffers X-1 wounds, then it gains [Protection: The first time this character would suffer Dmg, reduce that Dmg to ∅], until end of turn.
e7640510-da66-4aa8-ad81-bfe7ab8c8920	e6dba5ab-0333-4ff0-9379-f726455e3520	Target restores X+1 wounds and gains [Protection: The first time this character would suffer Dmg, reduce that Dmg to ∅], until end of turn.
f29dd63d-d2ef-4768-8c8f-9226fe5a7a69	9e2967d3-aaf9-479f-9ad6-477cd4512f64	Target suffers an amount of wounds equal to half the number of wounds they currently have remaining, rounded up.
58b50d75-e310-4500-92a6-53cc24531141	61ac76cc-bad7-4ff3-8083-894171907a34	Target Elrich or Noble restores X wounds or gains +1 energy.
6f9659b0-b7fe-4ec2-a2f1-8e4e4e0b043c	1cd96093-b738-40de-b0af-fe06abb98983	Target suffers X wounds and gains [Slow: This model's Jog actions are limited to 2"], until end of turn.
02769cae-39e0-4568-b947-a68253712e2e	3402b185-e24c-4749-bf59-0f754378671f	This character restores 1 wound. The target restores 2 wounds.
5de0eb67-6bcc-4a74-b2a2-e37b5cd809c4	3b668803-9e8b-4bc5-aeb7-a9cd0ec1aa1c	This character suffers 4 wounds.
\.


--
-- Data for Name: arcane_outcome_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arcane_outcome_cards (id, arcane_outcome_id, color, value, is_catastrophe) FROM stdin;
d144a49a-e7c0-42ea-8341-e8da684f8840	3e39eb87-9386-4ed6-aca9-967005d17f63	Pink	X	f
3f02329e-e802-49ab-be34-651288605568	fe99bdc9-aa2f-470a-81fc-d312fb7f0663	\N	\N	t
5ae71ed8-1865-4484-bdb1-fb626aed1f13	cbfc017b-48d8-4321-b2fc-9457bf1efff1	Pink	X	f
49ef8e2f-23a5-4b2a-8b83-cdb9ce40e3a2	b42634f9-f980-45a6-80de-d85069ccf223	\N	\N	t
1f945ed0-df0c-4be3-aaf0-784054ba08bf	48a2ea6b-c270-4354-9453-11e5e10bfcab	Green	X	f
20497904-c51d-4b00-ade4-fbf701dea1e5	289b0db8-0ccd-4032-96bf-4135af66ed21	Blue	X	f
6f340b78-1a8a-468b-babb-2ece191cb796	f6d46ae0-7fe7-43c7-a21c-2526f7ef8922	Pink	X	f
6a83a652-2347-4bd8-9e82-68beab650b61	c7e4af98-7825-4634-b2ea-7c618565f2c7	\N	\N	t
4536e199-d1b5-48d3-bac7-52bb5423b8d6	c77e58f3-6d4c-46b2-a482-00870d7558d0	Blue	X	f
837e59b4-9265-4acc-b20a-de2f3da53c52	07d0aa56-4354-46cd-be64-55aacef5b5d1	\N	\N	t
956da915-4c82-4a09-8826-bcc2bbf8c3f1	4f8b207b-0f62-4933-b3d5-fcb3f968ee83	Pink	X	f
4695c069-da1c-41ef-8d10-51440df51f39	8a4738bd-8156-4e71-ab3b-fa49e8800977	\N	\N	t
f3b802b3-7dd7-40e3-b971-8649b0bedf19	b6989be7-f81b-4d47-87e9-d249efcb3120	Blue	X	f
9efdd0b3-cdea-4eb4-8f47-0044a725d592	debd44f3-106a-4d8e-870f-aed84ec62919	Pink	X	f
ff0f55c0-6059-4b3e-a7a0-4f9c780abd1a	dcb22607-2da2-4a60-ad0e-d4ee8485713e	\N	\N	t
dfb3a0dc-f0ab-43b2-ab67-daf3798d14f2	2880a584-e2f0-4792-9f3e-11e1a469c027	Blue	X	f
f96fd4d0-7ea8-4336-8386-b9a38bceb72b	7d692fcf-b7fe-4aa1-b585-5fda75bdca11	\N	\N	t
57582b2e-941d-462a-8af4-d737a001b13a	7c796ced-a6cb-493b-9eca-1cb1e09f6280	Blue	X	f
e395c05d-5c4f-4405-8a55-49cc74d7aa17	7b92411b-1466-48bd-afa0-d8ce9abd126e	Pink	X	f
5e13e2fe-0140-4253-9c49-95dc03fc2f25	f2b5035f-8f0f-47a0-be57-04ec83006a5d	\N	\N	t
85333ff3-93ca-45c0-90d1-e50ae64d3801	f0f1d1a2-3727-4131-a536-7a5a4b86e5ec	Pink	X	f
7f736f5e-c944-41af-bce1-423430247620	41552c3e-5d2f-4248-9706-c909a4325e85	\N	\N	t
8a7be5ed-fc78-4e37-bc52-d974ac54ed0b	304ef42e-b839-439c-8064-76a6dae42773	Blue	X	f
da59a150-0544-492f-8248-23fd300b8a01	eb208a01-0078-4112-a0a0-92adbb638b8d	Pink	X	f
a200bcb6-07e1-4fdd-b996-8196507168c9	fe9747cb-808b-47c2-9c60-3c37d5f8dce7	\N	\N	t
578d1b5a-1da8-4d35-923b-483d36ecbb70	626669d3-e0bf-44d3-8009-d7bbc6eec856	\N	\N	t
f80890d3-adcb-496e-8ebd-fd0b3c97e1e8	2ba94a71-85ad-4667-a32a-dd01cc8b1f92	\N	\N	t
90b19091-0896-4d92-9713-912c736debad	082c3abf-f0f5-439a-adac-aebe50050c4d	Blue	X	f
8572f941-78e2-4746-a4b3-ace476bbd3fd	bb3acf63-94e2-4f50-a008-bf92e7962ddf	Blue	1	f
4e4e8bd6-4582-4a7f-a816-fa34c99b36dd	baa7a260-d89d-4b71-b1fe-e5460af6a94e	Blue	2	f
b7ffa76e-daea-4f57-bf5b-d27e7c928297	baa7a260-d89d-4b71-b1fe-e5460af6a94e	Blue	3	f
2b4febdc-7585-4a75-9624-b2d72d6c6bb5	273a607a-0d72-4a99-814c-e3c3539ed599	\N	\N	t
5839ec21-d48c-4b89-9c4e-52feed531a51	a226b0d3-5a2b-44cf-9bff-a24d93ea5b3b	Pink	X	f
86e5f97e-0d6d-44a6-b1b5-0cfba6a58def	8e416ae5-2f8f-4142-80bb-1eef6d44e25f	\N	\N	t
7378c79c-5bc6-4cc1-82ac-6482507b5582	f4548e64-e458-4ef8-96ba-e958e37f940e	Blue	X	f
532f6b12-b0d1-4f1b-b197-aaf010153af5	f36cb3b6-8d79-4cf3-847c-0013073637ad	\N	\N	t
88f80014-e2c0-4a57-a9c6-ab9fcf608c49	980e8c05-afbf-4fe9-859a-3054b9d8f4cb	\N	\N	t
0f74f66d-30b5-4b3f-9315-36ae59f7ee01	c92e6ad3-d4b4-40e9-953d-31218afc8f44	Green	X	f
954e9785-99c5-477a-98dd-88b65fca3d84	b7836ccf-ffa4-407f-ae0e-c357ceb2fad1	Pink	X	f
0824df6a-3a0a-4aba-a8b5-a9150ade9139	30a68693-e88f-40f7-b077-09e8a44973a9	\N	\N	t
d88fb295-5f0a-4968-a4de-3ae66685907f	eca763b6-f8ad-4f57-a641-76ed5959f8b5	Pink	2	f
81205253-cba4-4777-a9df-b9927799b6b2	eca763b6-f8ad-4f57-a641-76ed5959f8b5	Blue	2	f
f3f12dd9-5a37-4fcf-9126-307bc9178b75	eca763b6-f8ad-4f57-a641-76ed5959f8b5	Green	2	f
139c36cd-1304-4e1b-8089-44119bbe702c	b9b85d36-344e-4ff9-b200-d6b283faaed6	\N	\N	t
efb34e77-a2de-4304-8ffc-c4e306b18396	eceb021a-12a3-4ad3-9c80-2e9382d5f003	\N	\N	t
e387304f-66e5-44bd-8e73-4eb2cff16471	542a4a3b-3a19-4532-b1c4-b06350ee64d4	Pink	2	f
cb1b9e36-f4dc-4164-bb5a-6454bb376498	542a4a3b-3a19-4532-b1c4-b06350ee64d4	Blue	2	f
b1ad1512-2ed9-40c4-b4ad-c657505dd9c3	542a4a3b-3a19-4532-b1c4-b06350ee64d4	Green	2	f
e6e08a50-7a33-4962-a15a-ec0c8e3add81	a593acde-2a9d-4e08-bdd8-0eebb740cf6d	Pink	X	f
bfbffcde-b599-4356-81d2-c2f175382b50	6527cd56-7f05-479e-bf3f-e606eb807305	\N	\N	t
9017ab5a-038e-4538-86cc-b26b96397749	6cb0f24e-7347-4ff9-85bd-e57f3ed26418	Blue	X	f
e1d4e94b-79f3-4e41-b9ad-9a1d54d95c3b	38aeb888-be31-4c9e-91bc-f7809c404b42	Pink	3	f
b8a1e036-f0cc-45d4-b642-e0a4f92df87f	38aeb888-be31-4c9e-91bc-f7809c404b42	Blue	3	f
bf60f573-e389-4487-8590-4f2840bd6582	38aeb888-be31-4c9e-91bc-f7809c404b42	Green	3	f
b50f9ce1-edaf-4be3-8d0c-6cb066a671d5	003c31a9-e9a1-48bc-a59b-f1fcf3c2cdcf	\N	\N	t
115d5835-0aca-492d-821f-6b931783c450	a44023a6-fe93-40e9-8675-8ab152e98f4c	\N	\N	t
206227dc-1b4d-4a11-ad01-04258137ebeb	70ed7ac9-179a-472a-8f6e-799d7b90b4e0	Blue	3	f
df42b3fd-514a-409b-8903-62628f3c6f62	70ed7ac9-179a-472a-8f6e-799d7b90b4e0	Pink	3	f
bd952e7f-72b9-4bbc-9498-e3dcb212da16	3fad349d-844d-4ff6-b0ad-2cb9617bcfbe	Pink	3	f
130857d2-c81b-4dcf-ba91-dc24ab3dff2b	3fad349d-844d-4ff6-b0ad-2cb9617bcfbe	Blue	3	f
2f8876be-2c97-4571-abfc-18c3b96d73aa	3fad349d-844d-4ff6-b0ad-2cb9617bcfbe	Green	3	f
5a85b449-8e78-4e7f-b5e7-2fcedcdf665e	9e9ffbc0-36c1-429e-9766-b08dd8ef5adb	\N	\N	t
580ac540-6fbf-4523-9104-04d83aa9e940	c3975116-2e92-4676-bfd3-5d10d01739c7	\N	\N	t
e9a24390-5a57-4ea5-a936-c2106cbfb268	d1eb344a-8e6f-4aac-83ba-9c80d6fc9ee5	Green	X	f
6d54f448-a05d-4a5b-836f-7497f87254a2	0279f202-832c-49e3-ac9e-bdb4e81a798a	Pink	X	f
ace3462b-f723-4858-91da-79ba3deca142	42c6bff0-faff-483b-a9af-179cbf4f8d5b	Pink	X	f
679ad612-571d-4f8e-8b18-c2ae222e89c2	fe64f3db-8c72-454b-bc7e-cd15ee7b198f	\N	\N	t
757c7843-b9bf-4d5a-8630-72db6642b147	fc8e9e48-513f-4b82-9b88-b0523a5d3e3a	Pink	X	f
ce47532a-9640-4e65-90a7-c5dac134423d	758c9384-82b5-4ab8-be6c-99da921b5fdc	\N	\N	t
38177900-ee88-4992-867b-21fd95dcb0d7	7fb2c4cd-fe94-4457-8f82-92d05a52e403	Green	1	f
19ba1af0-0918-4b75-90dd-4997b2dca2be	7fb2c4cd-fe94-4457-8f82-92d05a52e403	Pink	1	f
da8a417f-c3ad-4cbe-a389-1206e3bc64eb	d464938c-514c-4752-96aa-d490e2cfad32	\N	\N	t
ceed7fd7-5087-4ea8-97b9-27522b713247	1ba7328e-8cdb-4309-881d-5c3d57490cc0	Blue	X	f
6988fe9d-21ab-4a62-8789-47932b9f7171	61afc474-d47d-4b1e-bfc8-fdbf8589fbd8	\N	\N	t
54bfc4d7-ddd5-4ce2-a2ad-a6107b78d72d	6805c94b-ec25-44e4-af74-b4dd62a59ab9	Pink	X	f
17690768-7134-4aee-9061-6000966ce7b9	de54473e-b82d-46cd-8892-ce7caed6b771	\N	\N	t
9630c2f7-d22b-4704-8c2a-da0be842ca82	61e6c1b2-ab0c-435a-9d61-d79d1b12180b	Green	X	f
bc8da30a-e6d7-4931-b546-284a57bc7287	a9a8257e-5b2e-405b-b018-0d7cba3e56f3	Blue	X	f
1eb6cc19-01a5-4296-b1f1-4a8f3e302a99	59a073ae-7b84-4e2c-b03b-49dfe8938771	Pink	X	f
e08e0b95-7b47-4d5a-b4f9-0c0093bd5c48	aa2274cd-7c6c-41ec-9d36-fe71c4ca268b	Pink	2	f
ad13c0f7-f546-4d25-894d-9bde5a2d1d5f	aa2274cd-7c6c-41ec-9d36-fe71c4ca268b	Green	2	f
d3180489-1539-447d-848b-3641403dd745	574b9fb5-9c71-425f-8ce8-647cf338d383	\N	\N	t
31144d63-0f93-426b-8bac-3cf749cb37e8	0d166f6a-b599-4327-80bd-de43fc72938c	\N	\N	t
b1842356-415c-46e9-9f4c-1e3b286af2f8	16f36b4b-5ed4-42a9-82e4-77fc9a492415	Blue	X	f
7cf27e6f-a8c7-4338-819c-d3f8ab44723a	5e301eda-3497-4422-b881-3b8957cfee0b	Pink	X	f
c8a44969-5468-4e34-9d23-f28378d1d47a	1fa3e4b2-05f2-49bc-82a0-3cb9512b03d5	Green	X	f
36f633b8-b376-42d7-bb6e-bd3cfdd78212	2a64cb96-3ebf-4104-ae45-23f08dd8725a	Blue	X	f
4954d604-5129-422d-810d-a7f012a9ddc3	aa377b79-79da-409c-9e1e-a303e2d00dbb	\N	\N	t
9f2b18a4-a953-4b19-a4ac-516657a2c7c0	909dc58e-9179-44e0-aea8-e53519ce83e1	Pink	3	f
8ef683f2-4041-4f17-ac8a-d7cb28f0afc5	909dc58e-9179-44e0-aea8-e53519ce83e1	Blue	3	f
2a53321f-88ff-4946-b175-d1874a17b888	909dc58e-9179-44e0-aea8-e53519ce83e1	Green	3	f
89dc363d-a9bd-455f-84c6-23ff6813e0b8	8ca7bef8-cad0-40e0-b4a9-a3bc6a935221	\N	\N	t
a78af4ec-c023-411d-a815-a99e549e1267	a9a87c98-539b-4db9-9348-655de2b46042	\N	\N	t
54318ebe-e0ff-4f5c-91c9-afcd29ae8380	bf796a77-8180-4304-a061-d2739061694f	Pink	X	f
e986fa9f-a549-469e-8250-72ea15a61aa3	bf796a77-8180-4304-a061-d2739061694f	Green	X	f
05367b59-0470-4eb1-a906-c1ebd89071e5	b127b63b-a413-426d-8bd5-4fb40461ddef	\N	\N	t
7502f74a-1c30-4f77-aad6-c13a5f688c48	f7e4551b-2a3b-4592-a5ac-389f98d0307c	\N	\N	t
b4922f4a-ed0c-4253-a9e9-6c359714fa96	6546f62a-5b29-4382-8999-81c1e3e20682	Blue	X	f
853822bd-0194-4ab0-9c91-d1cde5f46133	2981da3d-af9d-4850-a58f-de5bba9d3bcd	Green	X	f
1b8e8ebc-130c-4f3a-ba84-fc2aebc0bbcf	c33a6043-fdb5-4564-af97-a1efeac4072e	Blue	X	f
a7af1266-9fe9-4281-aad8-29d16f5eeb5d	1022576f-8aff-4bfc-9793-f85132e2183d	Pink	X	f
83149f28-1b8d-4c40-b30d-2949120193a4	bbf94a64-7f02-42fb-9811-655fac993648	\N	\N	t
4222cdd7-fcef-480f-8edf-2fcbe3806484	ff1d4da2-9d7f-4436-8e36-eb6d3cdd3065	\N	\N	t
a98509e4-b666-46d8-9612-968f387bbafe	cd188d11-84b9-4416-a1dc-0d6350a6c7de	Blue	X	f
d9aa5910-6ea5-4f34-9c49-470699416ee0	cd188d11-84b9-4416-a1dc-0d6350a6c7de	Green	X	f
d2cd190c-2efb-4ade-8ee4-2c479c79d5aa	831cc1bd-72d7-418d-938a-5e89d83e7ba8	Pink	X	f
5fbd58ec-4488-45ba-a059-9bf01183122b	6b231ee0-043b-4a75-b3e2-91f904d8db08	\N	\N	t
5b9c3b53-4e8a-4fe2-9b99-e641e821d4fe	a9ebc414-603c-444f-bb81-2f2bc930fd31	\N	\N	t
c1171db3-f4c1-402b-97e3-650249e519e4	b513764f-d386-4d24-9b7a-bdba99a145f2	Green	X	f
5228c94c-6ae9-40b3-b4b2-54a5baab1c70	4dcc683b-a61d-49f1-aefe-33e148b16a0f	Pink	X	f
b107cc2b-44cd-4e67-832f-7c26ea0cda21	37e1b5d3-4acd-41db-badf-bf9e2e09dbbb	\N	\N	t
7ac11c02-c36f-402e-90aa-802ba9b44c57	6b339d04-af78-42fe-a0b6-1e39f0ebbc30	Blue	X	f
4c6ba967-2ae0-4683-bfe4-7408389fc162	76335b4e-89b2-4716-81c2-bac163977ecf	Green	X	f
be34bafc-a57b-44c2-b36d-2a2573b2f711	0f0aa8bb-4ca2-4837-84f5-7552417ee058	\N	\N	t
70a4dca4-d538-459f-a66f-8e2beb199bfd	83ad8b66-d34e-47aa-9fba-04159b80e62a	Pink	X	f
9588ee39-009a-43c2-85be-0dd25e7db0ad	8e40a33f-212a-4f49-a27f-22ad64e76de3	\N	\N	t
770d45e9-5f6c-4610-ad2b-1c7900aaa10a	35b9b668-7938-4ce1-994e-c3154b93129f	\N	\N	t
0a4995d6-b2ef-49c7-871a-477ec7505dea	b96d654a-c130-4c45-bfe1-04c24ca46468	Pink	X	f
f0a77775-9135-44b1-9e25-e448b0a335b8	34b70124-5121-49bc-92b8-c25278b68cd7	\N	\N	t
c2311e2f-d03d-46df-949a-6699c4c83275	8d924086-a5f0-4cc6-9bca-ba08cad3fc70	Green	X	f
bed95103-3331-42b1-af69-44525e43f36c	fb750ff9-27e6-4f8f-a6b2-87815e8c9802	Blue	X	f
37e567e0-c1e8-4be8-8fe9-5802b0fc4906	74b7c943-e554-4ca5-955f-14ced1b009e2	\N	\N	t
ddc54333-cbab-4caf-95de-5c4d4cce8bc3	65949e9e-6de6-4395-ab65-7e8a320f7ebb	Green	X	f
7668b0d9-faa8-41e2-9e2c-55f5a8ad7466	79de20bd-6c05-4325-8f32-f78fdcdd7399	\N	\N	t
988f68a6-b7e2-4f3c-b0bb-1c7fd82b7923	a0f194ae-2a12-4041-82b2-287f5490e41e	Green	X	f
9c1b3dc3-bea0-436d-9b24-154ac6c70805	96e17ed5-ad55-4aa6-b5fd-03b2af01897c	\N	\N	t
36482538-0db7-4972-a88a-14bdbcd08d60	194ecd23-2ce6-4659-aac1-fddb3de113f7	Green	X	f
2680aff4-642b-43a4-8536-d2d5d76b6585	832a721a-96bd-4d06-8516-f15e6a5ecdf0	\N	\N	t
1c0c15d3-2c41-42f6-bb3e-7ff8824cbf4f	d4d9e325-c3bf-43f3-94e7-4774b49edb77	Green	X	f
aca4b3cc-1b75-487a-9fd0-18690922b19e	4a6ba37a-40fb-48fd-bfaf-79b3e06d8460	\N	\N	t
30ce29b5-1d7b-4b00-bab8-e5bcb0b450d6	dad33c57-d7c8-4287-8a06-211ce8341802	Pink	X	f
da82b8a8-a5d6-4c04-9f46-ceeae08d3c12	307aec9a-2925-47a2-b43e-87ce0521c88b	\N	\N	t
d181374b-74d4-410f-93d1-4d2d7952b0a9	b70ed2f8-0d7d-4c8b-b42c-01d22c11babd	\N	\N	t
e1a5d1cc-44eb-4385-8ec9-319ea2e67aab	32102334-8654-4be7-aa11-51f77a586c66	Blue	X	f
75aa8853-f460-45d6-ac8d-81b0ca60f82f	0ef12a6f-e8c6-4329-b8f7-e555cc3be3d5	Blue	X	f
cbf6be95-8aaf-4db5-92f2-94be5fd77d11	074b333c-8ce3-4086-9c81-d593431f7aff	\N	\N	t
835e50b2-39e5-42b8-96e5-c14f3ff3c48e	e53b5227-a106-43a2-81ea-d0691f74cb0a	\N	\N	t
7252b0a8-3dd7-4c83-876d-47a1ed661948	e9d78a6a-6f80-430f-99ec-edf525d8293a	Pink	X	f
ff1492bf-a6e5-4346-b128-a5d3cfd5c123	6467a3ac-2753-469e-aa56-6613102d7b4a	Green	X	f
0b6c766d-38b4-40ca-83e9-159d80e4e770	807820e8-450a-4843-af20-8a07c5b09f39	Blue	X	f
6051b406-7120-466d-8d52-763cd998fba6	694e1878-1cac-4928-be54-a7125a8cd1d6	Pink	X	f
ef59dfc0-e4b0-4aec-a7ec-7d462ca5e57a	be2aba4d-52fe-4db0-b336-f1dc96605b3a	\N	\N	t
fd2df5ce-73d8-4490-bdf0-e4811506ac06	708cf7ee-311c-450f-bbc9-648cbc8740fd	Blue	X	f
1526468c-d1aa-474c-bc87-43001a0a8f97	c683af87-178e-4b12-b612-6293e6aabb20	\N	\N	t
f462c741-82f0-456a-a708-48353ff8e1df	859c25af-f0f2-44f8-816c-7904ebcc79a9	Pink	2	f
d3af9435-e943-448c-82e8-7357b81e57f8	859c25af-f0f2-44f8-816c-7904ebcc79a9	Blue	2	f
f0e419a9-b05e-4c18-9b47-5f99664f2770	859c25af-f0f2-44f8-816c-7904ebcc79a9	Green	2	f
fb241750-f5dc-474d-af71-b2e51bc26d27	4233a397-8e4e-4b10-abe3-57f7e68ae45c	\N	\N	t
f145a5ec-1ae6-4675-9bab-fb6855e4f194	2b312f07-9dd4-4164-a732-6a9a8d86be45	Green	X	f
827812f5-e86f-4745-96f0-d3d0ce6fd4cf	78548c24-ecba-4359-aff6-f3803ced25da	Pink	X	f
9cc2899b-7840-4dba-b136-ded0a72b2f42	306535af-fb8e-4d1b-85cc-46c37649beb0	\N	\N	t
36ed7aa7-f486-4a37-a42f-2a8779d0a597	1308fc2c-b5ee-44a3-9926-c10e8a7af690	Blue	X	f
bba2a928-fede-49d1-817a-376de9a04bfd	bd1948ab-b167-485f-b747-1b54177ee401	\N	\N	t
5b55f905-7fb1-4665-9d6f-0427fc936ce3	98288f9f-1312-4992-af62-e0ffe5bf30ba	Pink	X	f
97586e1f-5f04-4dd3-95fa-8e4999a327a3	d0ad58af-cc45-475c-9bb3-ee1b00a91dab	\N	\N	t
57b9a336-2913-4db0-9cc7-f4cd4baa1cdf	ee8aaaa3-ad8d-4485-8bb9-a2e1c19ae35b	Pink	X	f
5fd30660-171e-4597-9cfa-5fd6f2bf96f4	8d52f73a-39de-413e-aad6-d7ebcfa7194a	\N	\N	t
cd10c142-6058-4f64-b4b1-17a7428743f2	79d89318-fc6c-4d3a-bfa9-a88d39efe67c	Blue	X	f
d55ffc73-11c8-49f7-a665-f5feb122c232	9ad0e846-f9ec-490f-aedc-25eaae91dbc5	\N	\N	t
7a016ac4-1330-4bfc-8ace-4d84565585b7	c87c347e-96ce-405b-90cf-e65871f78d3d	Blue	X	f
80d418dc-fad2-4e27-9708-ca77106485ed	da83f90d-a155-4e8b-a112-3274b6d55079	Pink	2	f
d39a520a-27d0-4029-9b52-941b41ec3a0b	da83f90d-a155-4e8b-a112-3274b6d55079	Blue	2	f
e7560c80-2872-4504-b35d-6add8f81e757	da83f90d-a155-4e8b-a112-3274b6d55079	Green	2	f
ef07db40-7794-4f53-8caf-37e45b629800	d1427f96-48d5-47b3-9bc1-da6a82e83027	\N	\N	t
c463cd47-7ef6-4a9d-9bc5-a5a2083b2d4f	0034a4de-df6d-47b4-9877-5dbed77e0d36	Green	X	f
a88111fc-734c-4b62-9c64-712726a468af	942aecf5-7c5c-4517-ab7a-c3ed5800e557	\N	\N	t
0a3ba181-3149-48b1-bd70-c7b165ce8cf1	b11f9b74-4ddc-4d5c-8d02-b2c62fc1bbe2	Pink	X	f
ac5f27a4-81b3-4957-8ae7-ae45911c1d34	bc76b448-a34e-4fc4-ba00-3ed16c668d15	\N	\N	t
6c1238b9-e03a-4899-8a33-9099118b1454	be08c5dc-f175-47ac-a993-ee45cba064f4	Pink	X	f
82c8e2c2-49f6-4122-836d-2fa0bf4d6048	ba03ec48-8374-4cfc-8b28-2f44772dba49	\N	\N	t
0d869905-1b8d-4519-8bcb-f6fdcfe98077	dccb1aa1-9725-41ea-b926-bb9d5b69c676	Green	X	f
ba3c8153-e4fe-4eb1-bb38-d053e36638ca	294974fc-0e93-4228-b3bf-dbfe07e1bf4e	\N	\N	t
7bb5f21c-29e6-431b-b2cf-97f08fbff3a9	12a353b8-af31-4373-bdc1-07c94ba6133f	\N	\N	t
5852b837-532b-4918-ba6d-3ccc8e45e452	cbba7623-6794-4fc8-8695-cdb0714d7035	Blue	X	f
31cf2d4b-5cba-40ad-9320-7b46316abe5b	074e4c9b-b326-48a2-b2d1-d7a36da266f0	Green	X	f
1fb09576-e295-4ce3-9f89-f0b3ca7db4c1	522820be-ac3e-4824-b9aa-4a8e6f070c24	\N	\N	t
1cca2ec0-ba30-4a19-ac7e-7318e15e0605	0cda9cc1-442a-49e8-a8e3-b4a749a527b6	Pink	X	f
cf1d2209-0fb2-49e5-82d0-94ed095f4c72	bd46bc8e-76d4-42f7-9e5b-b8422eb6ac70	\N	\N	t
e00a5c74-9997-4a46-9589-d5ec728dd6d4	11ba2165-4f57-486b-8de2-dfd3d2504305	Pink	X	f
7b73278d-d1e3-4551-a73a-51a96d18e5e0	5734a87d-c917-4daf-a6b6-63e67d3a94a9	\N	\N	t
8ee47c14-1179-4ba9-aa1a-74d9bd8eabad	11fa2650-43aa-4ba1-8d71-74a6c05a8b17	Pink	X	f
dc14c25e-f223-45a8-ba35-9fa619f6c9ea	08615201-b474-4b16-94b3-db4fe8ee1eed	\N	\N	t
6687ef8e-1dc1-4e40-90fd-fd04925a9497	a3c76d8c-a815-4139-9c95-0f1b23252e12	Pink	X	f
2000aab8-90f0-421b-bf38-f3f9d5866e86	852677bc-2670-48d9-a07c-f089fd426de6	\N	\N	t
a0792bdd-3aa9-44fe-8736-4f8bbc41c7fa	b99c5fe3-3fa0-4783-a017-ed389762da01	Green	X	f
1fa2bcb6-007b-4870-887d-3158dc381e66	0cf79717-8289-4aae-8e98-4d355d4971fc	\N	\N	t
e5a109ed-02bd-4602-b067-7e4e54897df7	71b1e906-f8ea-4851-995e-56ca6cdaef6c	\N	\N	t
1569aa26-fb06-4f19-880b-e06aa5fad75e	f9729223-ff42-40cc-83b6-17ba446351cd	Pink	3	f
fc400228-ff01-4032-9733-b87a1b4574e8	f9729223-ff42-40cc-83b6-17ba446351cd	Blue	3	f
8ebb41b9-0818-418a-bd07-0d93d5dd2eb8	f9729223-ff42-40cc-83b6-17ba446351cd	Green	3	f
f6c5a142-0d0e-499f-9ba7-51cc1ee5e43b	406d6b06-2ec4-4afa-a53c-223f57d8d1d6	\N	\N	t
def61b8b-654f-423b-a542-dfd493697416	8a58ab52-f40c-470d-bcdb-92b72b84c795	Blue	2	f
bd22a86f-1464-4531-9f44-8dd77b7c4273	8a58ab52-f40c-470d-bcdb-92b72b84c795	Pink	2	f
314ecd86-f4db-4750-abe1-70bf0f1c8d67	73d39246-c058-4a1f-912e-ccfda199ff22	Pink	X	f
3bc8abd5-d563-4d5a-8921-c4f01242937d	c90b344a-d9d7-492d-b5c6-e4b5d8b02b51	\N	\N	t
97dbf48a-b6e3-4635-9f0a-ab989bd477ee	660b6718-f2a0-4ee0-8509-b9f550b67e1a	Pink	X	f
476cba35-7a32-492d-86be-c50ed5103110	a6cfef5a-4427-4092-8ce6-38d6c29aaa47	\N	\N	t
408ac252-58c2-4899-af62-fab50c14b2cb	a6461415-ec46-491d-9ddb-8019c4f9f1ed	Pink	2	f
2a46295c-3f78-4222-a308-163990742144	a6461415-ec46-491d-9ddb-8019c4f9f1ed	Blue	2	f
5fef8f69-e3cb-4c6f-99d9-fb3590b48567	a6461415-ec46-491d-9ddb-8019c4f9f1ed	Green	2	f
f81e7b49-53b1-4566-9fa2-3b4197db6f3e	0c6005cd-6627-4c8e-80be-57d03b7bfcee	\N	\N	t
8fd82813-968e-4608-8430-ce58aaeef87e	01dd7bd9-374c-4db8-b9d8-6d07a6fe49a8	Pink	2	f
62675623-dabd-4d87-82e5-ce5a9076ca23	01dd7bd9-374c-4db8-b9d8-6d07a6fe49a8	Blue	2	f
6afd926f-32ae-4bb7-a42b-adf20cb490fa	01dd7bd9-374c-4db8-b9d8-6d07a6fe49a8	Green	2	f
85bd5b5d-ec00-49cc-8056-dc75ba6847bd	b4e3aed0-be6e-41df-a5a1-c1f557a7c637	\N	\N	t
b21fee72-9a86-4e1b-8cf2-ab884784e6f8	bc3f6634-6f4d-4cc2-b361-fd68b4adf89e	\N	\N	t
c23f1cb9-d731-4eac-9db2-8d52279dbcf0	b115b772-7b7d-494a-9279-dd5447602bd3	Pink	3	f
1de38a25-06c0-499a-b279-9811b151e790	b115b772-7b7d-494a-9279-dd5447602bd3	Blue	3	f
96d68393-9aa7-423a-b2b7-9b46943d5121	b115b772-7b7d-494a-9279-dd5447602bd3	Green	3	f
ed113f65-0633-43a8-8d42-f2efb2bbc871	d2e60526-1377-46df-974e-f460088b76c2	Blue	X	f
2fa02671-58c5-4ffc-8fd9-de782e70aef9	e909dcf8-f44a-4107-9216-a8b11546dc81	\N	\N	t
3758de86-0d12-4f75-ab01-0ef616b5ee09	de3f24b1-9796-4b26-92e6-15632de95c8c	Green	X	f
6a999222-c793-44f9-aa2f-2a7f58ff3bd1	c362849e-b0cc-43ae-8ec4-c85f1f1a474d	\N	\N	t
c42eb111-8917-46d5-98f7-1c9c85af6401	5b947665-57c9-4694-ad5b-4e720b13e836	Green	X	f
65daa975-f089-4fdf-b9f0-ce1b0f6d6f2b	f7cdc9a6-2d59-4d55-bc38-8d05985401e2	\N	\N	t
a9ffc89d-8173-4605-b411-4ecc99586766	a7bc2c95-01e1-4d74-be02-4748ad6d67fb	Green	X	f
ad3e61d6-4b85-4070-861c-d1f47898d077	8e384d11-3008-4ff2-9f60-a626786eb8e8	\N	\N	t
e22c78ce-ef70-4a0a-a32a-f87da128b625	2537a042-a896-4fcb-a2a5-0fe4efe9471d	Pink	X	f
35fe04f3-deab-4851-b9b9-cc99b156caec	e6db9ef4-7823-41ed-b075-887854894270	\N	\N	t
84aee0dc-6269-4643-9496-6204eb872a15	cf9dd95b-0a9e-4250-bc6e-7d9a76f056a3	Pink	X	f
6aeaa502-0535-4493-b064-38d1b46b779e	4890746c-1e0f-4a2e-bc94-338a1de14d6d	\N	\N	t
4404c9c9-b846-4407-8b55-f4030619a212	a960fae1-bd6f-4706-bceb-616839681973	Green	X	f
ceb96b62-99f8-4ef6-ab9c-961683394667	14aadacd-2ccc-4ddd-8674-9260b5d6a792	Pink	X	f
c9fd334d-956f-4d85-86b4-be9c613aa392	35e6e903-8286-46d6-bb3b-c83f56d2bfb7	\N	\N	t
2fa0a04c-d11a-4903-82e5-cb3f7145a3a1	b03839ca-cdfd-4e99-ad00-2d387d274245	Blue	X	f
4c1d8f1d-6520-44f1-8b5d-8465bc2182bd	b56945af-24a7-4b43-8e9e-0db6f44b53c1	Pink	X	f
0da04acf-b405-48fb-a5d5-399bb2c8824c	f40e9b8c-8f9a-4d8f-aa0f-13d2b10bd854	\N	\N	t
230fe6b1-3c98-4758-822b-e570a1864994	a1f88881-012b-4619-a63b-74b35d06a006	\N	\N	t
fd15dd32-547e-4d27-9034-91df71dafb81	f266fb28-c862-42d1-ae8f-259e73b1a693	Pink	X	f
8d49cccc-7681-493a-9e58-f04d609e39ce	9df5891e-842e-4b58-af93-021465df5939	Blue	3	f
42b97c5c-5761-43e4-b80b-c9fd96170ff0	9df5891e-842e-4b58-af93-021465df5939	Pink	3	f
fd723175-f5f2-45fe-b954-abe64afca488	c615de64-676f-4a43-a6fe-cccf2d121b0a	\N	\N	t
984ac803-c43d-4ec6-9fbe-8882ccc841cf	d9b0aec7-c90b-4f60-a690-10a9383d4bc1	Pink	2	f
2b29c388-c0fd-4e34-94b5-a176fb54d6da	d9b0aec7-c90b-4f60-a690-10a9383d4bc1	Blue	2	f
25d51dec-5e67-44d8-9936-f44e5a13f1ad	d9b0aec7-c90b-4f60-a690-10a9383d4bc1	Green	2	f
9bca4cb7-c792-4e2f-adec-c9abe980ebdd	739a623b-035f-42d1-8b5b-2183a7c89b1a	\N	\N	t
1cd709dc-85d6-4fb4-b586-965ca8a52997	ad2ddc7b-638c-452d-8f8f-96ac1fb850b2	Pink	3	f
2151e694-c3ed-4967-a021-093143869bc0	ad2ddc7b-638c-452d-8f8f-96ac1fb850b2	Blue	3	f
d0f40f62-eb64-4b15-97f4-324ff894ad42	ad2ddc7b-638c-452d-8f8f-96ac1fb850b2	Green	3	f
09fdd04d-5305-4600-abab-a8e87881a856	bc2d5303-0cc3-402e-abc5-837df68f62df	\N	\N	t
0dda330b-b413-4c89-a772-b9512fb92c48	3c1de0e1-e358-4f27-9c3b-cd43bd9134d1	Green	X	f
80ff1e75-5280-455f-8174-2afdc35aeb3a	87d9ee91-f703-457c-a9c1-2577768e190f	\N	\N	t
1b038941-22c4-434f-8674-dfc7d1620a09	0dcb0173-514f-4184-bb39-da39e9314705	\N	\N	t
f34469a0-3208-47d6-a019-1f690ae10ce4	4d456aa4-b477-4d4c-be7b-8c723945fea3	Green	X	f
630a0fc5-d580-4e92-8e20-bce577a561a9	ee86fe3a-1756-45f4-87f8-a7b8219eb3f3	Pink	X	f
0e2b6224-42b8-4b0e-967c-ea1ef89c81db	7588ca26-2276-4156-a207-9858d12ecbcc	\N	\N	t
d9bdae17-2f42-4b58-8ecf-58e05e01cb5a	6f6cec94-8997-40c3-8e48-54a0ec162ab5	Blue	2	f
fecac389-47fd-45cf-9591-04dbee4da5a3	6f6cec94-8997-40c3-8e48-54a0ec162ab5	Pink	2	f
a1a1a0d4-f19b-4119-b069-ea52fb10815d	0931b8e1-58c8-4564-b391-0371f1249cb6	\N	\N	t
1d42567e-4208-468b-b0f5-17368957cf64	a0f2aa8b-eeb9-45bf-af02-3241b1e48346	Green	X	f
5bd37155-59af-4e25-8e41-91d63b2f089a	e352c84a-0288-4425-baa7-b18cc7962f5e	Blue	X	f
f1080a47-321d-42aa-95be-0d58ee298ef0	a2a7d120-a36f-46f5-ac45-5eefd2f2021e	Pink	X	f
1d2015c9-b497-4c1c-90ed-a7ae45803e37	2911c384-8fce-47ac-86bb-cb328542fb65	\N	\N	t
7b0898ed-7919-4eb6-9fba-45986e6325d2	aaeb0956-5ca5-4371-958a-4e0b527374da	Pink	X	f
1c46769e-5316-437c-a4cf-02da32b1252e	17178045-750f-43a7-97ed-08d753f06b8f	\N	\N	t
e39b3960-035f-423f-ae91-c5a21f75b17c	5bbbc162-4efa-4349-83e9-868d3408ba56	\N	\N	t
3daa12b3-1c2e-4595-a364-7e5bceb70485	b5eeec9e-88b4-4cf1-8d7d-8dba3f0a5167	Blue	X	f
75d547ad-37e4-4f65-9b5d-1db8a0324278	4b1d53fc-4fe7-4e6d-96c1-0c8d4002fa4b	\N	\N	t
92115fa8-9ad2-474f-8afd-4e802fe0e5f8	e3930b97-5c1c-4a8f-9e34-71d47f77fa04	Pink	X	f
3c24068b-8384-492e-a660-67d7562c9708	653087e2-40e4-47eb-b63f-d70a19b14bb0	\N	\N	t
fe0e9082-272e-4865-9866-be669f267c48	77944f41-1380-4777-8ef6-0672aab4a0f5	Green	X	f
790d4f65-0787-46fa-a5a8-4ee7d416bd62	56185717-b14e-4b47-b3fc-24b631d0af12	\N	\N	t
d19d98a3-74b3-4ef2-bdce-a642e87923f1	e7640510-da66-4aa8-ad81-bfe7ab8c8920	Pink	X	f
5439845c-6c37-4ca0-b6a6-b8ad8a81697c	6a719e6d-93f2-4442-b75f-b25351d8f113	\N	\N	t
a44640e5-141b-4f55-b09f-dcc7b3c1d8a3	30f69832-de46-4928-a03d-3a86185a2cbd	\N	\N	t
075ac359-2679-45ac-a7b5-399a3ea5d1fb	393ccab5-9d66-4819-bad5-347cf1a99f2e	Green	X	f
c848e6fe-8ed5-4c39-9e0a-a7ad29d1bcf8	f29dd63d-d2ef-4768-8c8f-9226fe5a7a69	Pink	3	f
6bec3cfc-af71-4f2b-8e34-1731f8491e87	f29dd63d-d2ef-4768-8c8f-9226fe5a7a69	Blue	3	f
6b8119f8-b440-4f3c-843c-c139cc51f466	f29dd63d-d2ef-4768-8c8f-9226fe5a7a69	Green	3	f
5245a31b-4937-4755-866b-4739695739f2	565b1e4e-aaf4-493a-86e6-52a71c390bf5	\N	\N	t
eca5aec3-e896-4ef7-a29c-ed4985e05c55	c5eaafe8-223c-4e5f-9acf-aba95f171292	\N	\N	t
e078302f-5fa4-4cf5-b1ed-e5c14067d927	e6e83c87-caf9-4098-b533-aa52189c5027	Pink	3	f
e69bd397-7ebc-44cc-bb2b-6b8d52d1b8d0	e6e83c87-caf9-4098-b533-aa52189c5027	Blue	3	f
d04f4f9d-bc55-4c63-b65c-c8796be01725	e6e83c87-caf9-4098-b533-aa52189c5027	Green	3	f
31296880-f038-431a-b044-2d0b43c2c18a	58b50d75-e310-4500-92a6-53cc24531141	Pink	X	f
738fe5e7-56eb-420a-acb7-23a6932d8a6d	6600d575-55b6-490a-81e1-4721c3f8427f	\N	\N	t
b7e19db4-538d-410c-ac28-e99e9a605c85	4dfeb78a-7595-4189-8ad2-39d57216552f	Green	X	f
61e84f91-6cb9-4f76-8e1d-76b5f8be0bc2	dd9b64c1-a5c8-4f83-a8d8-d9b3f3b58c2b	Blue	X	f
f377865f-be7a-40ae-991e-394caeffa033	14218d67-b0c1-4f14-b245-fe03a5d6326b	\N	\N	t
6a1c5a09-8407-46e7-8d9c-367abd432a32	f0fb5277-50fd-47f1-91a5-03e2a437bca4	Green	X	f
67d59c3f-67ef-4fd0-ab48-e65a789adda1	6f9659b0-b7fe-4ec2-a2f1-8e4e4e0b043c	Pink	X	f
7b49b417-bd11-4d87-b37b-5bbdc238aff3	880228af-e0d9-41ae-8024-6c5748d25800	\N	\N	t
df95e2a9-4187-49b2-a0a2-ef49338637fb	45247435-cbd2-4f8d-9dd6-0a9852928a14	\N	\N	t
db0471c5-90ea-4586-8dcb-d3d291e6e5c2	6aba62ae-0557-42e9-8ade-0940664c978d	Pink	X	f
c4950433-732b-42e7-9901-16ad85ee874d	0ffc60a7-aaf9-4a08-bc19-e063b1314698	\N	\N	t
8415b9dc-edf8-4d29-9e26-827f01e0a8d3	106551c3-b098-408e-abb0-d5f2a1fccd84	Green	X	f
b841227a-33e7-40e1-8636-ab0bdb66fe7a	a173f3e8-71a4-4386-9197-d9611810d52e	Blue	X	f
361dc94c-2ef8-4a00-bded-e4c94c06c2f1	613fa403-4960-474e-b9c0-fbe6969b73a0	Pink	X	f
5a6b5e37-789d-470a-a9c8-0735dbe7ae97	4c95939a-29c4-467b-98b1-165174aa2db7	\N	\N	t
28e96436-9ee3-4b76-857c-103b5685bd73	ea125f94-88b4-4edb-96f3-0731e1381ceb	Green	X	f
349a7a34-c1a9-4a22-babd-b653b267ce9a	8f057288-b221-4a50-b5c8-56188031cfad	\N	\N	t
ac7eea16-080b-45c2-ba9b-d6a445151875	49e1d339-e404-4a03-a0a0-064c887ffa99	Blue	X	f
a3f0842a-28de-4fd6-9ce1-62e6690f6db5	32c06aa4-7ce0-47ba-b054-25548d5944d5	\N	\N	t
246d8d40-d462-4901-b840-ae26ab1f1a74	6cb4c050-88f3-4084-846a-ef35c2c992e4	Green	X	f
7b3c1c72-5717-43a3-85a7-e4cccefff0da	1e110dc3-71c1-4a7c-b502-1af2092dbe2d	Blue	X	f
992fc8ed-122f-4dd8-bf3c-1f455ebc97f7	02769cae-39e0-4568-b947-a68253712e2e	\N	\N	t
21240b21-aea8-40ed-ba2f-2b51d3151c09	93d5a249-3327-43f9-8614-20ba68ba4ba4	\N	\N	t
b8693631-4154-4b28-883d-92228f8aa93b	942c66d6-6978-43f0-b2e9-1d8da2279876	Pink	2	f
cab459d9-79cc-4e6d-9912-7ee70abe50de	942c66d6-6978-43f0-b2e9-1d8da2279876	Blue	2	f
ee35e2b3-c15b-4442-a6b6-b790bcf47f2b	942c66d6-6978-43f0-b2e9-1d8da2279876	Green	2	f
2fdbd134-6c72-4a5a-a3f5-f9bdfddcec89	c57e975c-c60b-4eac-ac64-f65e324be56a	Blue	X	f
90c99495-6f59-42d9-b9ec-626e389fff11	fe8c525c-16ab-4d23-a5e8-de60556926f6	Pink	X	f
639418cd-ac98-47b1-80c4-3e6467aca6cb	59f90424-7e7a-41c4-877a-362978544c80	\N	\N	t
19e2c2fa-de92-4c7f-a46d-f62e6f629688	84caa830-9746-49e7-b120-fe2b85f7ee09	Green	1	f
90f74b56-77e2-4f5b-af4f-5c18813ab8a2	2c7ecdb7-3ac0-4adc-a42b-e21ea0192c20	Blue	1	f
d0d572e9-2e0d-4e61-86ef-b0e61f42a3be	31c2316d-f059-46e4-88ee-ced7e72ba5b3	Pink	1	f
b164f008-5c57-4200-92c3-268747657546	b52c945b-dfb0-4f1c-9a01-bd886825b13a	\N	\N	t
b543513c-c45f-4bb8-852f-6064aadc4868	6dbac104-4bba-4f24-b9b0-782da8decba4	\N	\N	t
cd17ba7e-54b3-481e-8cc7-8bff03a061f9	d4da0718-d164-4f04-a7e7-514c6e19c381	Green	1	f
1c9ec50d-1082-4fce-94f4-69aa19bf8d99	d4da0718-d164-4f04-a7e7-514c6e19c381	Blue	1	f
1b05f809-e505-45ee-8161-bd06a60e7be5	d4da0718-d164-4f04-a7e7-514c6e19c381	Pink	1	f
3945e20c-686c-4282-ab1f-79e00329439e	471e6262-6713-47e8-9709-ee7b4b0ce8ef	\N	\N	t
ea4c235f-3167-4b3b-acb4-579fd4b7ac32	baadc225-71d5-4b0c-bbf8-3248b4de688d	Pink	2	f
a029f0a0-cfb7-4e39-a1a6-db3ec142332d	baadc225-71d5-4b0c-bbf8-3248b4de688d	Blue	2	f
48894193-948a-4b69-b990-f473af9dca74	baadc225-71d5-4b0c-bbf8-3248b4de688d	Green	2	f
f9cfd97d-81de-4ca2-a077-fbcaa32acbf5	cee85efd-c035-4af3-9ec0-583878c5dc69	Green	X	f
6cdbfabc-eea3-40b2-a94d-5e0670a1a796	79786dc7-d3a5-476b-8138-f1b2ecf4a48b	\N	\N	t
7f920765-67de-4e52-8725-8808208175bf	499c6eff-d6f1-49b1-a9a9-22eadef93a1d	\N	\N	t
e5dadfd7-b7c6-405f-931f-f9d9be66c14e	f56aec84-1194-4276-b4a2-722e76708166	Blue	X	f
0f04d4e7-c93a-48b0-892a-475fc45d11bb	a4515702-d9f1-4eff-8ca0-502379762d19	Blue	X	f
50eb1cf0-7bd8-4a5c-8c59-eaecfd457d15	c341a4f7-b517-432d-a3e9-2d260f98ed0b	\N	\N	t
0b606ced-16ad-4a51-bfd5-84ef3f45485d	5de0eb67-6bcc-4a74-b2a2-e37b5cd809c4	\N	\N	t
b9d5ac99-2b73-4a27-9f5c-3a8de6109ae4	428e63a4-e516-45ec-a20a-f07853af150a	Green	X	f
\.


--
-- Data for Name: melee_moves; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.melee_moves (id, name, upgrades_id, additional_effects, end_step) FROM stdin;
1f885eaf-5970-4947-addf-5dd4320152ca	High guard	\N	\N	\N
10916f22-e020-4161-bade-ca227a3db51e	Falling swing	\N	\N	\N
67dab184-4881-4710-b486-0b22594b0649	Sweeping cut	\N	\N	\N
20b29022-920e-40f5-bb31-81bf895bb6f3	Thrust	\N	\N	\N
7f40c8fe-d847-4694-a09a-acf689fd5d2d	Low guard	\N	\N	\N
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Rising attack	\N	\N	\N
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	Fetch!	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Choose a friendly Norse or friendly Young Jack within 4" of the enemy model. Move the chosen friendly character 3" directly towards the enemy. If the chosen friendly character is now engaging the enemy then this model may move 3" directly away from the enemy model.
1c70e8da-ee94-4006-8a76-3f93da6b521a	Gone in a puff...	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	The enemy model has -2 Melee stay for the remainder of the turn. This model may move 4".
70faed2f-2831-4c6a-a774-9dbb490c374e	Sink to the Deep	7f40c8fe-d847-4694-a09a-acf689fd5d2d	Reduce Dmg suffered by -1. If there is at least one friendly slain non-Thrall character, instead reduce Dmg suffered to ∅.	\N
c8045c1a-52bc-4c3a-9c34-6c01455a617e	Boff's Bestiary	7f40c8fe-d847-4694-a09a-acf689fd5d2d	Reduce Dmg suffered by -1 for each Animal within 4".	\N
7885e95b-96b6-4a84-b531-d557475a6813	Leaped & Loaded	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Place this model within 1" of itself and LoS. You may immediately play the Reload ability even if engagged, and without spending energy.
854f99c4-86cd-4e20-9ea5-d048c8fc0958	Needlepoint	20b29022-920e-40f5-bb31-81bf895bb6f3	Damage from this attack cannot be reduced by passive abilities.	\N
745d74d7-2a66-4472-b438-6236f3381476	Fuddlemuddle	1f885eaf-5970-4947-addf-5dd4320152ca	\N	If this model was the defender and was not slain, restore all wounds and energy and place it within 8" of its current location.
f22205ad-d2a6-481d-b531-47e9949047cd	Diving Attack	10916f22-e020-4161-bade-ca227a3db51e	\N	\N
7faee8be-0573-4d4d-a871-7c76c2735f43	Rune Shield	7f40c8fe-d847-4694-a09a-acf689fd5d2d	Reduce Dmg suffered by -2.	\N
50ce11f0-7a21-48ad-86d0-a412f925a40a	Gut Barge	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	Move the enemy model 2" directly away from this model.
1d803948-4382-4f00-8482-260f236189cb	Bog Off!	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	Move the enemy model 1" directly away from this model.
e9471f76-bd2a-4643-90c5-5d2d61f214c6	Wild Swing	10916f22-e020-4161-bade-ca227a3db51e	\N	Move the enemy model 1" directly away from this model.
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	Take your medicine	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	\N
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	Swinging Antlers	67dab184-4881-4710-b486-0b22594b0649	\N	Move the enemy model 1".
b5c3c57c-4262-4250-937c-a18b366e5f97	Panic and Flee	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Move this model 3" directly away from the enemy. Discard all energy on this character.
1f829ca5-3b6d-4741-837e-bd6e23da97f3	Can’t Hit Me!	1f885eaf-5970-4947-addf-5dd4320152ca	Your opponent’s attack deals ∅ damage to you this round.	\N
08971624-1664-4268-a825-1cdad8416572	Crushing Pressure	20b29022-920e-40f5-bb31-81bf895bb6f3	This action deals ∅ damage against models which are further than 1" away.	If the enemy suffered 1 or more wounds during this round of melee, they must discard 1 energy.
98039bbd-b1ab-40a7-94d3-c936454b1ace	Packed Lunch	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	If the enemy suffered 1 or more wounds during this round of Melee and has an Evade Stat of -1 or lower, then it is Removed From Play.
492a69a0-715b-4838-8c3d-f7e851c33ea5	Ankle Biter	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	This attack deals ∅ damage against models which are further than 1" away.	\N
66470247-2367-426d-b990-07292515613a	Gore	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	This attack deals ∅ damage against models which are further than 1" away.	Move the enemy model 1".
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	Faerie Dust	1f885eaf-5970-4947-addf-5dd4320152ca	Reduce Dmg suffered by -2.	The enemy character must discard 2 energy.
7a3c5c03-6286-4b32-aff4-9d1930eedd99	Run 'em Through	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	Move 2" directly towards the enemy model.
3a049366-1f6a-43a0-a22c-4506d832b437	Groin Tickler	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Damage from this attack cannot be reduced by passive abilities.	You may place this model anywhere in base contact with the enemy model.
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	Corn Cutter	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	Deal 2 Slicing Dmg to all models within 2" that did not participate in this round of melee. This does not count as Melee Dmg.
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	Shield Bash	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Move this model 1" directly towards the enemy, then if base contact is made, move the enemy 1" directly away.
5230c787-3058-46bd-a098-85be7615ce8e	Vanishing Balls Trick	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	The enemy discards 1 energy if able. Target friendly character within 6" gains +1 energy.
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	Now you see me...	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Place this model anywhere within 6".
13a40511-8686-49cb-9c6b-cc290fa38186	From Below & Above	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	After upgrading to this signature, this character may place down any Falling Swing melee cards from their melee hand treating them as Critical Hits. (Resolve those cards as exact copies of this signature.).	This model may move 1".
51916402-3cbc-45ad-86aa-700c3b0d7e86	Lacerate	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Reduce Dmg suffered by -2 if the enemy has at least one Bleed.	If the enemy suffered 1 or more wounds during this round of melee, the enemy model gains [Bleed: During the Discard Step, this character suffers 1 wound then loses this ability].
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	Pick a fight	10916f22-e020-4161-bade-ca227a3db51e	Damage from this attack cannot be reduced by passive abilities.	\N
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	Flashing Blades	67dab184-4881-4710-b486-0b22594b0649	\N	\N
61d18ef6-d477-48b0-92e9-d0a1338074b8	Valkyrie Cyclone	67dab184-4881-4710-b486-0b22594b0649	\N	Deal 2 Slicing Dmg to all models within 2" that did not participate in this round of melee. This does not count as Melee Dmg.
93dbc549-f13c-4ced-8204-6f16cefbc66e	Mistform	7f40c8fe-d847-4694-a09a-acf689fd5d2d	Reduce Dmg suffered by -2.	\N
130fef48-bf41-4c26-811c-7c35c69d56aa	Hell hath no fury...	1f885eaf-5970-4947-addf-5dd4320152ca	\N	\N
646864f1-ca8f-4ad8-8851-d95801acd624	Thwack!	67dab184-4881-4710-b486-0b22594b0649	\N	The opponent suffers -1 Melee Stat until end of turn.
72388572-fbff-42ac-91ed-d8955e6ea3e7	Grovel, Peasant!	10916f22-e020-4161-bade-ca227a3db51e	This attack deals +1 Dmg to Goblins. Reduce all Dmg suffered from Goblins to ∅.	\N
bdadb0c7-6bd0-492f-83cc-5b128af69a58	Tentai Surprise!	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	\N
e410d649-4a63-4f88-a124-5b3bd124258d	Jolly Roger	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Damage from this attack cannot be reduced by passive abilities.	\N
6756b259-15a6-4a5c-83c3-f5b9037845c8	Strong Arm	10916f22-e020-4161-bade-ca227a3db51e	Damage from this attack cannot be reduced by passive abilities.	You may move the enemy model 1".
f4da5514-9dd1-46c6-986d-661433cb0552	Love Potion	7f40c8fe-d847-4694-a09a-acf689fd5d2d	Reduce Melee Dmg suffered by -1.	Choose a character you control. Move the enemy 3" directly towards that character. The enemy cannot target that character with an action until end of turn.
bd89a899-c163-49d2-beee-105b62312f67	Mirror of Mischief	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	When played, choose a Faerie or Rogue within 6". This becomes a copy of that character's Signature Move. It is still considered a Low Guard when calculating your opponent’s Dmg dealt to you. If there is no Faerie or Rogue characters within 6" then this card deals ∅ Dmg.
47342c90-820e-4b4f-80db-1de63b077cd0	Dreamglade Glamour	1f885eaf-5970-4947-addf-5dd4320152ca	\N	The enemy cannot make a Melee Attack action targeting this character until end of turn.
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	Rabbit Punch	20b29022-920e-40f5-bb31-81bf895bb6f3	This attack deals +1 Dmg for each Animal within 4".	\N
17fba3f5-72d2-4e33-a210-f5b2451431ce	Drunken Monkey Stance	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Move this character 1".
037effd3-1eb8-4966-acae-660cb98d2458	Insatiable Hunger	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	If the enemy is slain, and this character is not slain, then this character recovers all wounds and all energy.
80392f73-75f7-41f4-9df6-625936105f15	Encroaching Roots	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	If the enemy suffered 1 or more wounds during this round of Melee then it cannot take a Jog action until the end of turn.
2c70346b-9944-4574-a295-ff1b30caca03	Knee Smasher	67dab184-4881-4710-b486-0b22594b0649	\N	If the enemy suffered 1 or more wounds during this round of Melee then it cannot take a Jog action until end of turn.
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	Cut Purse	67dab184-4881-4710-b486-0b22594b0649	Reduce Dmg suffered by -2.	If this character was not slain then it may take possession of up to one Moonstone carried by the enemy.
4445205e-3fcf-431f-b284-6d55b74fc8cc	Threats & Promises	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Reduce Dmg suffered by -3.	The enemy character gains 3 energy and may not target this model with an action for the remainder of the turn. This effect takes place even if the enemy is outside this character's Melee Range.
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	Crushing Embrace	20b29022-920e-40f5-bb31-81bf895bb6f3	This attack deals ∅ damage against models which are further than 1" away.	If the enemy suffered 1 or more wounds during this round of Melee, they must discard half their energy, rounding up.
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	Flail Around Madly	67dab184-4881-4710-b486-0b22594b0649	\N	This character suffers 1 Impact Dmg. This does not count as Melee Dmg.
b201510a-0bb2-49d2-9aa0-81a9136f66eb	Mercy Kill	10916f22-e020-4161-bade-ca227a3db51e	This attack deals +2 Dmg if the enemy has 4 wounds or fewer remaining.	If the enemy is slain, this character gains 1 energy.
c56d7e7a-5104-4355-9026-bd3919992981	Short Fuse	1f885eaf-5970-4947-addf-5dd4320152ca	\N	This model suffers 3 wounds. All other models within 2" suffer 3 Magical Dmg then are moved 1" directly away.
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	The Old Slip-Step	1f885eaf-5970-4947-addf-5dd4320152ca	\N	This model may move 1".
52b79176-154f-439e-9c82-5f1b59cae525	Bellow	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Move the enemy 2" directly away.
42827c15-9aa0-4694-8214-d00089e1f62f	Pay Up	1f885eaf-5970-4947-addf-5dd4320152ca	\N	If this character was not slain it may take possession of up to one Moonstone carried by the enemy. The enemy character may spend 1 energy to cancel this effect. If they do, this model gains 1 energy.
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	Strike from Above	10916f22-e020-4161-bade-ca227a3db51e	\N	\N
289ab9e0-f53b-4726-8db4-5e3317290383	Slip into Shadows	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Place this model within 4".
74f3bf14-15b7-4ebd-a215-5764d45efd6c	Duplicity	7f40c8fe-d847-4694-a09a-acf689fd5d2d	If there is a model within 4" that did not participate in this round of melee and shares a keyword with this character, reduce Dmg suffered to ∅.	Swap positions with a model within 4" that did not participate in this round of melee and shares a keyword with this character.
bd934647-59e9-40a4-a146-184265e146ef	Deception	10916f22-e020-4161-bade-ca227a3db51e	Reduce Dmg suffered by -2.	\N
5af425c8-b2e5-4d3a-811b-c30ec78da952	Illusion	20b29022-920e-40f5-bb31-81bf895bb6f3	Reduce Dmg suffered to ∅.	Exchange places with a friendly Spirit within 8".
c15fbffc-7a53-444d-8925-187e7146de54	Betrayal	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Move this model 1" directly towards the enemy.
af791c11-6698-4c9e-bf20-624387cdf575	Save me, my Liege!	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Move this model 4" directly towards the nearest friendly Noble.
b602525c-c512-4561-9c3c-bbd909dd0718	Torrent of Power	67dab184-4881-4710-b486-0b22594b0649	\N	Deal 2 Magical Dmg to all models within 2" that did not participate in this round of melee. This does not count as Melee Dmg. Then all models within 2" are moved 2" directly away.
a6542444-94ba-4a9e-b1e2-8a8483f82141	Topsy Turvy	7f40c8fe-d847-4694-a09a-acf689fd5d2d	mmediately draw 2 additional Melee Cards. Then, if you have a High Guard in hand, you may discard your current Melee Card and replace it with a High Guard. If you do, resolve the Melee as if you originally played a High Guard.	\N
95650ea5-b422-41ef-a1d3-80ed4e145a7e	Master Strike	10916f22-e020-4161-bade-ca227a3db51e	\N	\N
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	Boooo!	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Move the enemy 2" directly away. If the enemy is in possession of at least one Moonstone, it loses possession of one Moonstone before moving. Place it in base contact with the enemy at depth '1'.
d6c97f5a-05d5-4871-880c-3092969dc1cb	21 Ghoul Salute	20b29022-920e-40f5-bb31-81bf895bb6f3	This attack can damage models outside this character's Melee Range and deals +1 Dmg for each other friendly Pirate with the Reload [...] ability within 4".	\N
e0e5474d-b5fc-45dd-8385-396aa4905cd1	Spin-Kick	67dab184-4881-4710-b486-0b22594b0649	\N	Move the enemy model 1". You may immediately play the Reload ability even if engaged, and without spending energy.
869cfe9f-2190-4cb8-87db-6fd9190de6bd	Vicious Claws	67dab184-4881-4710-b486-0b22594b0649	\N	\N
398a36db-81a2-4c47-b5ff-077b99541104	You’ll Regret That	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	If this model is not slain, swap the positions of this model and a friendly model within 4".
356dda90-95cd-47b3-b1f0-da9723b8b02d	Play Dead	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Enemy characters cannot target this model with actions until this model next performs an action or the end of the turn, whichever comes first.
7ceb647b-10b5-47dc-98fd-9c4511db927b	Crowd Control	20b29022-920e-40f5-bb31-81bf895bb6f3	This attack deals ∅ damage against models which are further than 1" away.	If the enemy is within 1", it is moved 1" directly away from this model.
30fa4220-29db-44aa-83ce-5eb2886ee4d1	Tactical Retreat	1f885eaf-5970-4947-addf-5dd4320152ca	Reduce Dmg suffered by -1.	This model may move 2".
328f937e-705c-4469-919e-ebd38e293bc3	Shadow Form	1f885eaf-5970-4947-addf-5dd4320152ca	Reduce Dmg suffered by -1. If the enemy has 4 wounds or fewer remaining, instead reduce Dmg suffered to ∅.	\N
16d172bf-8e7d-4f9f-8560-79c0957eee88	Extraction	20b29022-920e-40f5-bb31-81bf895bb6f3	Damage from this attack cannot be reduced by enemy passive abilities.	If the enemy suffered 1 or more wounds during this round of melee, then this character gains +1 Melee Stat until end of game.
efb10611-d7d0-4a90-b87a-9d55d4d2a232	Keelhaul	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	If the enemy suffered 1 or more wounds during this round of melee, place the enemy in base contact with this model.
c84e62a9-1b2b-4298-ae50-16a15ae278c8	Kick to the Guts	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	If the enemy suffered 1 or more wounds during this round of Melee, then it loses 1 energy and is moved 1" directly away from this model.
6de7d5e1-af52-40d0-a481-72ebf2a34515	Spank	67dab184-4881-4710-b486-0b22594b0649	\N	If this character was not slain then it restores 1 wound.
5b3dfea5-2712-4be9-afe6-7fc86f455933	Head Butt	10916f22-e020-4161-bade-ca227a3db51e	This attack deals ∅ damage against models which are further than 1" away.	Move the enemy model 1" directly away from this model.
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	Raise the Banner!	1f885eaf-5970-4947-addf-5dd4320152ca	Reduce Dmg suffered by -1.	Choose another friendly Soldier within 4" and move it 2".
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	Shield Slam	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	Move the enemy 2" directly away.
24b223ba-9167-4915-9c47-b6f5a5a225a3	Destiny Fulfilled	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	If the enemy is slain, this character is Removed from Play.
06ad423d-0ac6-459f-b291-e04067b219cf	Thrash	10916f22-e020-4161-bade-ca227a3db51e	\N	Move this model 2" directly towards the enemy.
16557732-3bb4-4bbf-b277-e1b7704384e7	Impale	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	Move this model 1" directly towards the enemy.
6e419064-7517-4658-aac0-7887111c02fa	Deafening Blare	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Move the enemy 2" directly away. This effect takes place even if the enemy is outside your Melee Range.
172ccc68-f021-42ad-9777-ad163d8faf01	Cleave	67dab184-4881-4710-b486-0b22594b0649	If the enemy suffered 1 or more wounds during this round of Melee, the next time the enemy would restore wounds this turn, reduce wounds restored to ∅. If the enemy has an ability which restores or otherwise regains wounds after being reduced to 0 wounds, it does not and is slain instead.	\N
ff6388e9-8615-4574-84ff-6ba64e086383	Cockatrice Stare	20b29022-920e-40f5-bb31-81bf895bb6f3	This may deal Dmg to characters outside Melee Range.	If the enemy suffered 1 or more wounds during this round of melee, they must discard 1 energy.
5a0d50a1-2587-401a-ab15-ceea3e0e4892	Fracture	10916f22-e020-4161-bade-ca227a3db51e	\N	If the enemy suffered 1 or more wounds during this round of Melee, you may choose another character within 4" of the enemy model to suffer 1 wound.
bf1688c9-4817-420a-8856-32354f61dcbd	Drop of Delirium	1f885eaf-5970-4947-addf-5dd4320152ca	\N	Move the enemy model 2", then it loses 1 energy and suffers 1 wound.
445073c0-87b2-4932-89e6-f6fa5a96b9cb	It’s a big’un!	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	If the enemy suffered 1 or more wounds during this round of Melee, it cannot take a Jog action until end of turn.
cebf5769-948f-483c-a153-f1015698e75d	Hamstring	67dab184-4881-4710-b486-0b22594b0649	\N	If the enemy suffered 1 or more wounds during this round of Melee, they gain Slow and cannot take Step Actions or Reaction Steps until end of turn.
174b6443-f053-4f1d-a01a-a8bfa9af18e8	Lose Control	1f885eaf-5970-4947-addf-5dd4320152ca	\N	If this character was not slain then it is Removed from Play and replaced with Striga Anya. Striga Anya gains energy and suffers wounds equal to those already on this character along with all Moonstones she was carrying and any stat modifications or abilities she has gained. If this character was the active character, continue the current activation with Striga Anya; it may not Jog if Anya Bartol already did this turn.
e81e324e-9511-4080-a902-c792c8b7b585	First of the Month!	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	If this character has already used the Pinch and Punch abilities this turn then the enemy suffers 2 wounds and cannot take a Melee Attack action targeting this model until end of turn.
523efc1f-ff14-4318-89d1-0f2cf88d5112	Dance with Death	67dab184-4881-4710-b486-0b22594b0649	\N	If this character is not slain, it may move 2". If this character is slain, the enemy suffers 2 wounds.
bd1fa273-e1fa-4227-be37-3c96516bc64b	Regain Control	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	If this character was not slain then it is Removed from Play and replaced with Anya Bartol. Anya Bartol gains energy and suffers wounds equal to those already on this character along with all Moonstones it's carrying and any stat modifications or abilities it has gained. If this character was the active character, continue the current activation with Anya Bartol; she may not Jog if Striga Anya already did this turn.
b3011812-bfcb-4de9-9e19-2c23833e06be	Shhhhh!	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	If the enemy suffered 1 or more wounds during this round of Melee then it must discard 1 energy, if able.
6bb41179-1e4f-406d-975f-471440c5f314	Rooted	7f40c8fe-d847-4694-a09a-acf689fd5d2d	This model cannot be move of be moved and has its Melee Range increased to 3" until end of the current activation.	If this character was not slain then it restores 1 wound.
af99cd73-9ad1-4a5f-8cee-928b09d31470	Nap Time!	10916f22-e020-4161-bade-ca227a3db51e	\N	If the enemy suffered 1 or more wounds during this round of Melee, they lose 1 energy.
5908f3df-6325-47da-a67d-f6b8c09c6ca4	Stand & Deliver	67dab184-4881-4710-b486-0b22594b0649	\N	If this character was not slain, and the enemy is in possession of a Moonstone, then they must choose: Suffer 3 wounds or, lose possession of one Moonstone and this character gains possession of that Moonstone.
4a9e4b01-c2c4-45d5-95c9-2172ba958426	Compressed Air	1f885eaf-5970-4947-addf-5dd4320152ca	\N	This model suffers 1 wound. All other models within 1" suffer 1 wound then are moved 2" directly away.
5433cdc0-490c-4eec-8b55-0b6f06acaf77	Entangle	67dab184-4881-4710-b486-0b22594b0649	If the enemy is within 1" then it cannot play End Step Effects.	If the enemy is within 1" it suffers 1 wound, loses 1 energy and suffers -2 Melee Stat until end of turn.
a899a757-3184-4a75-b492-d2fae406ea6a	Shattering Oathstone	10916f22-e020-4161-bade-ca227a3db51e	\N	If this character was slain, all other models within 8", excluding friendly Giants and friendly Nobles, suffer 1 wound. Other friendly Giants and friendly Nobles within 8" restore all wounds instead.
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	Frenzy	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	If this character is the attacker and causes 1 or more wounds during this round of Melee, reduce the energy cost of its next action this turn to (0) if it is a Melee Attack action.
\.


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.characters (id, name, health, energy, melee, melee_range, arcane, evade, base_size, signature_move_id, head_filename, full_filename) FROM stdin;
28562575-5965-4ffc-a249-276b4ce0bddd	Banshee	6	{0,1,2,4,5}	4	1	4	-2	30mm	51916402-3cbc-45ad-86aa-700c3b0d7e86	Banshee.webp	\N
b4d7d587-2528-4ecb-bc20-506e872a17ef	Chezapeaky	9	{0,2,5}	2	2	3	1	40mm	08971624-1664-4268-a825-1cdad8416572	Chezapeaky_Head.webp	\N
199f4048-bddf-4c0f-988b-2d52e04724c3	Dim & Dimmer	14	{5}	2	2	0	2	40mm	98039bbd-b1ab-40a7-94d3-c936454b1ace	DimAndDimmer.webp	\N
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	Olim	8	{0,1,3}	3	1	4	0	40mm	f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	Olim.webp	\N
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	Old Polly	8	{0,1}	3	1	4	0	30mm	ff6388e9-8615-4574-84ff-6ba64e086383	OldPolly-Head.webp	\N
2408ff3e-c926-4b2f-b025-0ed59b3a0458	Quack	7	{0,1,4}	2	1	5	0	30mm	1c70e8da-ee94-4006-8a76-3f93da6b521a	Head-Quack.webp	\N
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	Dentia	6	{0,1,2,4,5}	4	1	4	-2	30mm	16d172bf-8e7d-4f9f-8560-79c0957eee88	Dentia.webp	\N
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	Brigid	6	{0,1,2,4,5}	3	1	4	-2	30mm	70faed2f-2831-4c6a-a774-9dbb490c374e	Brigid_Head_Wide.webp	\N
d26da9de-80aa-4944-a4d9-9c58a20a3fab	Doug, the Flatulent	8	{0,2,4,6}	4	3	0	0	40mm	492a69a0-715b-4838-8c3d-f7e851c33ea5	Head-Doug-The-Flatulent.webp	\N
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	Prof. Boffinsworth	8	{0,1,2}	3	1	4	0	30mm	c8045c1a-52bc-4c3a-9c34-6c01455a617e	ProfBoffinsworth-Head.webp	\N
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	Peggy	8	{0,2,6}	3	2	4	0	30mm	7a3c5c03-6286-4b32-aff4-9d1930eedd99	Peggy.webp	\N
cc6db759-9762-4058-8970-d13e91f7aeb3	Iris & Hellebore	7	{0,1,3,5}	5	1	0	-1	40mm	13a40511-8686-49cb-9c6b-cc290fa38186	IrisAndHerebore.webp	\N
4d2baf43-b3e1-45eb-8f10-a6f02d898616	Barnakelle	12	{0,5}	2	2	4	2	40mm	efb10611-d7d0-4a90-b87a-9d55d4d2a232	Barnakelle_Head.webp	\N
11923a35-88f4-4775-bf1e-9f76852dea86	Matilda	9	{0,2,5}	3	1	3	0	30mm	7885e95b-96b6-4a84-b531-d557475a6813	Matilda-Head.webp	\N
8b1de391-4e10-407b-b0fb-c4f29914ae42	Sir Hogswash	10	{0,2,5}	4	2	0	0	40mm	66470247-2367-426d-b990-07292515613a	Head-Sir-Hogswash.webp	\N
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	The Fencer	6	{0,1,2,3,5}	6	1	5	-2	30mm	854f99c4-86cd-4e20-9ea5-d048c8fc0958	Head-The-Fencer.webp	\N
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	Young Jack	7	{0,1,2}	4	1	2	0	30mm	6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	Head-Young-Jack.webp	\N
c731299b-8f95-4c76-8297-c05ec490e723	Gotchgut	14	{0,5}	3	2	0	2	40mm	c84e62a9-1b2b-4298-ae50-16a15ae278c8	Head-Gotchgut.webp	\N
cf031c28-c4f4-4895-b1a6-c809c984c8bb	Kavanagh, the Jongler	8	{0,1,2}	3	1	4	0	30mm	5230c787-3058-46bd-a098-85be7615ce8e	Head-Kavanagh-the-Jongleur.webp	\N
23db2f8f-7c67-474e-8cb1-52b7be9c5404	ShabbaroOn	6	{0,1,2,5}	1	1	7	-1	30mm	745d74d7-2a66-4472-b438-6236f3381476	Head-Shabaroon.webp	\N
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	Vicious Syd	5	{0,1,3}	5	1	4	-1	30mm	3a049366-1f6a-43a0-a22c-4506d832b437	Head-Vicious-Syd.webp	\N
85698bfc-2a32-4761-b4d7-75b0b497b3a7	Wasp	6	{0,1,2,3,5}	5	2	3	-2	30mm	f22205ad-d2a6-481d-b531-47e9949047cd	Head-Wasp.webp	\N
33ef3787-5f30-4b93-8c7c-165f08468edb	Negroli	8	{0,2,4}	5	2	4	0	30mm	5a0d50a1-2587-401a-ab15-ceea3e0e4892	Negroli.webp	\N
593322c1-e3b5-4582-b397-dd1cf9e6999b	Eric, the Squire	7	{0,1,4}	3	1	3	-1	30mm	398a36db-81a2-4c47-b5ff-077b99541104	Head-Eric-the-Squire.webp	\N
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	Liv	8	{0,1,2}	2	1	4	0	30mm	7faee8be-0573-4d4d-a871-7c76c2735f43	Liv.webp	\N
9da91dfd-68e5-4f5c-98d9-bc763744490b	Kaufman	9	{0,2,5}	2	1	4	1	30mm	50ce11f0-7a21-48ad-86d0-a412f925a40a	Head-Kaufman.webp	\N
6c4819b1-9aa8-4689-bb29-9efdecc5d346	Knoll	12	{0,5}	2	3	4	2	40mm	1d803948-4382-4f00-8482-260f236189cb	Knoll.webp	\N
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	Butterfingers	6	{0,1,2,3,4}	3	1	5	-2	30mm	baba76bf-7c59-48ec-a4c6-a0ae94c4b791	Head-Butterfingers.webp	\N
788fc810-6d12-4523-b33d-1a18d75b77a8	Billy	8	{0,1,3}	4	1	4	-1	30mm	e9471f76-bd2a-4643-90c5-5d2d61f214c6	Head-Billy.webp	\N
082047de-da92-4608-8fae-9edc1d220d61	Beaky Bobby	7	{0,1,3,5}	2	1	5	-1	30mm	8b5e693b-9b7d-4ffc-bb15-d820f09d842e	Head-Beaky-Bobby.webp	\N
e6581470-9ac9-46ea-8efb-b8d4379eba11	Belladonna	6	{0,1,2,3,4}	4	1	3	-2	30mm	bf1688c9-4817-420a-8856-32354f61dcbd	Head-Belladonna.webp	\N
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	Boom Boom Mc Boom	7	{0,1,3,5}	3	1	4	-2	30mm	1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	Head-Boon-Boom-McBoom.webp	\N
8cf109c7-e239-419c-ac98-4cf2eec125d0	Eric, the Enlightened	10	{0,2,7}	4	2	3	1	40mm	b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	Eric-Leshavult.webp	\N
2755e8c0-3a45-46cc-b050-c7f511a03e66	Firespitter	8	{0,2,4}	2	1	5	1	30mm	b5c3c57c-4262-4250-937c-a18b366e5f97	Firespitter.webp	\N
cca09e19-94cd-4491-bf78-f8e86c008c95	Flintlock	8	{0,1,4}	3	1	3	0	30mm	30fa4220-29db-44aa-83ce-5eb2886ee4d1	Head-Flintlock.webp	\N
ddae4569-c206-464c-a824-9099aed5a9d2	Fraya	5	{0,1,2,3,4}	2	1	5	-2	30mm	1f829ca5-3b6d-4741-837e-bd6e23da97f3	Head-Fraya.webp	\N
1bcebd15-79f8-4f86-820a-4f4976f76f74	Fritz	9	{0,2,4}	4	2	0	1	30mm	d2751d3c-8e95-4c19-bd77-573c6b9a2f63	Head-Fritz.webp	\N
46c6c7be-c12b-443c-91b2-691470a09e1e	Gradock	8	{0,1}	4	1	2	0	30mm	3c1b0779-c421-43ff-b6b0-42a5c4276d8a	Head-Gradock.webp	\N
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	Grub	7	{0,1,3,5}	4	1	4	-1	30mm	037effd3-1eb8-4966-acae-660cb98d2458	Grub.webp	\N
1f89796e-3057-4ac6-884e-ffdaae869948	Morris	8	{0,1}	3	1	3	0	30mm	04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	Head-Morris.webp	\N
14aa356c-908a-4e97-a3d8-c59823a3ac74	Natty, Slum Thief	6	{0,1,3,5}	3	1	4	0	30mm	f7d7dd2a-17f4-432f-9f8c-98d54918f83a	Head-Natty-The-Slum-Thief.webp	\N
e18c4371-180d-4027-9beb-ea06aca9076c	Ribald	11	{0,6}	2	2	3	2	40mm	c56d7e7a-5104-4355-9026-bd3919992981	Head-Ribald.webp	\N
6436abc0-85f9-4cf0-a576-711bf51e53f1	Ruwt	7	{0,3,6}	2	1	4	0	30mm	80392f73-75f7-41f4-9df6-625936105f15	Ruwt.webp	\N
55251217-9566-4372-9052-aecc26c97ec4	Sir Guillemot Poppycock	9	{0,3}	4	2	0	1	30mm	2c70346b-9944-4574-a295-ff1b30caca03	Head-Sir-Gullemot-Poppycock.webp	\N
05a42b1f-a962-47ad-be9b-b564b4239b0d	Swash	8	{0,2,6}	5	2	3	0	30mm	c2eb49cb-ba49-4ed3-a3b8-deec3e775076	Swash.webp	\N
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	The Beast	9	{0,2}	5	2	0	1	30mm	52b79176-154f-439e-9c82-5f1b59cae525	Head-The-Beast.webp	\N
b711afd2-11ef-4214-a2f8-38dbf8ebf054	The Duchess	7	{0,2,4}	3	1	4	0	30mm	4445205e-3fcf-431f-b284-6d55b74fc8cc	Duches.webp	\N
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	Boulder	12	{0,6}	2	2	3	2	40mm	7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	Head-Boulder.webp	\N
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	Joanna, Nordic Princess	7	{1,0,3}	5	2	3	0	30mm	61d18ef6-d477-48b0-92e9-d0a1338074b8	Head-Joanna-Nordic-Princess.webp	\N
24192bfb-2cab-42d0-bb27-302c19f7fb7b	Raegan, Leshavult Priestess	7	{0,2,5}	2	1	5	0	30mm	93dbc549-f13c-4ced-8204-6f16cefbc66e	Reagan.webp	\N
51ae6140-30b0-4d7a-8726-fa060964f44d	Agatha	8	{0,2,5}	3	1	3	0	30mm	130fef48-bf41-4c26-811c-7c35c69d56aa	Head-Agatha-Tavernfrau.webp	\N
f32527b5-6d3d-408e-ba00-8d048737ca7a	Brother Daniel	7	{0,1,3}	2	2	4	0	30mm	646864f1-ca8f-4ad8-8851-d95801acd624	Head-Brother-Daniel.webp	\N
a2a17fec-e781-43c9-90ea-f342da0ae52c	Seasick Stu	7	{0,2,4,6}	2	3	4	-1	30mm	445073c0-87b2-4932-89e6-f6fa5a96b9cb	Head-Seasick-Stu.webp	\N
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	The Goblin King	7	{0,2,4}	3	2	0	0	30mm	72388572-fbff-42ac-91ed-d8955e6ea3e7	Head-The-Goblin-King.webp	\N
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	Muridae	8	{0,1,3}	4	1	0	0	30mm	cebf5769-948f-483c-a153-f1015698e75d	Head-Muridae.webp	\N
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	Swiggarty Swooty	7	{0,2,5}	3	2	3	-1	30mm	bdadb0c7-6bd0-492f-83cc-5b128af69a58	Head-Swiggarty-Swooty.webp	\N
54564d71-f101-497c-8515-4dfdd0ac52ca	Anya Bartol	7	{0,1,3}	2	1	4	-1	30mm	174b6443-f053-4f1d-a01a-a8bfa9af18e8	Head-Anya-Bartol.webp	\N
ced3a312-6a90-448c-abb9-8f505ad2a06f	Jobie	5	{0,2,4}	2	1	3	-1	30mm	356dda90-95cd-47b3-b1f0-da9723b8b02d	Jobie.webp	\N
eec4fb7d-3a4b-4ee3-914e-931589531bad	El Capitano	7	{0,2,4,6}	4	1	3	0	40mm	e410d649-4a63-4f88-a124-5b3bd124258d	Head-El-Capitano.webp	\N
355571fa-9c46-4779-afaa-0b6e52624aae	Loci, Nordic Shipwright	8	{0,2,1}	4	1	3	0	30mm	6756b259-15a6-4a5c-83c3-f5b9037845c8	Head-Loki-Nordic-Shipwright.webp	\N
9d66943e-609d-42d3-bd3d-ea1a04a5d461	Brunhilde	13	{0,5}	4	2	0	2	40mm	a899a757-3184-4a75-b492-d2fae406ea6a	Head-Brunhilde.webp	\N
5be00293-fec6-451a-899e-7874790f1d92	Chubs	6	{0,2,3,5}	3	1	4	-1	30mm	f4da5514-9dd1-46c6-986d-661433cb0552	Head-Chubs.webp	\N
419761bb-14fc-4e54-a697-c55ac69aaeb0	Foxglove	6	{0,1,2,4,5}	3	1	3	-2	30mm	bd89a899-c163-49d2-beee-105b62312f67	Head-Foxglove.webp	\N
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	Gwendoline, Leshavult Priestess	6	{0,1,2,4,5}	2	1	5	-2	30mm	47342c90-820e-4b4f-80db-1de63b077cd0	Head-Gwendoline-Leshavult-Priestess.webp	\N
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	Jayda	7	{2,0,3,5}	4	1	4	-1	30mm	b201510a-0bb2-49d2-9aa0-81a9136f66eb	Head-Jayda.webp	\N
cf29e43e-6827-4e61-96af-07f5698b2f6a	Crusty Balboa	9	{0,2,4}	3	2	4	1	40mm	e81e324e-9511-4080-a902-c792c8b7b585	Head-Crusty-Balboa.webp	\N
75816018-2182-464d-bc68-fd9e5909da4b	Klaus	8	{0,2,5}	3	2	0	0	30mm	6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	Klaus.webp	\N
0f733a5b-05a2-462e-8916-fceedf34e202	Diana, Queen of the fae	6	{0,1,3,4}	4	1	4	-2	30mm	523efc1f-ff14-4318-89d1-0f2cf88d5112	Head-Diana-Queen-of-the-Fae.webp	\N
99f443ef-dc99-43e4-b060-1ce0e849c9a0	Loubard	14	{0,5}	3	3	3	2	40mm	5433cdc0-490c-4eec-8b55-0b6f06acaf77	Head-Loubard.webp	\N
5b21b3fd-8c44-4aaa-83d8-b8337242d015	Boris, The Bunny Summoner	8	{0,1,3,6}	2	2	4	0	30mm	853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	Head-Boris-The-Bunny-Summoner.webp	\N
cde09c48-c3c0-4f01-af85-cbdd56707b63	Portly Pete	8	{0,2,5}	3	2	0	0	30mm	7ceb647b-10b5-47dc-98fd-9c4511db927b	PortlyPete.webp	\N
cdb923ab-68a2-45f7-b968-fea1bedddd81	Powder Monkey	7	{0,2,4,6}	3	1	4	-1	30mm	17fba3f5-72d2-4e33-a210-f5b2451431ce	PowderMonkey.webp	\N
84aba88d-a34e-4f98-8b27-1a158c8f1f57	Striga Anya	7	{0,1,3}	5	1	0	1	30mm	bd1fa273-e1fa-4227-be37-3c96516bc64b	StrigaAnya.webp	\N
057c12d9-97a7-4a2b-b61c-26857f683787	The Revenant	7	{2,4,6}	3	1	4	0	30mm	24b223ba-9167-4915-9c47-b6f5a5a225a3	Head-The-Revenant.webp	\N
00aa30fa-3119-4499-9aef-4ec6d8b1514c	The Tax Collector	7	{0,2,4}	3	1	0	-1	30mm	42827c15-9aa0-4694-8214-d00089e1f62f	TaxCollector.webp	\N
4ce2180b-94e6-4da2-a599-efed26981c10	Vespa	8	{0,3,6}	3	2	4	0	40mm	dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	Vespa.webp	\N
2e0d027d-2222-4de3-a6ea-c35210114936	Teacake of Torment	2	{998}	1	1	0	-1	30mm	\N	Teacake.webp	\N
347b5285-98a9-44a7-bb2c-d3f262065529	Bjørn	8	{0,1,2}	4	1	2	0	30mm	06ad423d-0ac6-459f-b291-e04067b219cf	Bjorn.webp	\N
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	Creep	7	{0,2,5}	2	1	3	-1	30mm	289ab9e0-f53b-4726-8db4-5e3317290383	Creep.webp	\N
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	Dranyer	8	{0,2,4}	3	1	4	-1	30mm	74f3bf14-15b7-4ebd-a215-5764d45efd6c	Dranyer.webp	\N
babe0916-3f66-43f4-9ca7-d796ec524322	Friar Flavious	9	{0,2,4}	4	2	3	1	30mm	6de7d5e1-af52-40d0-a481-72ebf2a34515	Head-Friar-Flavious.webp	\N
34d5c62b-824d-4c5b-9703-24934e51df9d	Antonia, Noonday Witch	8	{0,1,3}	3	1	4	0	30mm	bd934647-59e9-40a4-a146-184265e146ef	Head-Antonia-Noonday-Witch.webp	\N
ca161ec3-8c53-4143-8d2e-eeba2325a333	Gnomish Airship	8	{0,1,2}	0	0	3	1	40mm	\N	Head-Gnomish-Airship.webp	\N
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	Hoff	9	{0,2,5}	4	2	4	0	30mm	5b3dfea5-2712-4be9-afe6-7fc86f455933	Head-Hoff.webp	\N
843f65fc-1dec-490d-8dd7-2087927f6ef1	Snag	11	{0,3,9}	4	2	3	2	40mm	7ceb647b-10b5-47dc-98fd-9c4511db927b	Snag.webp	\N
3e744701-d87b-4dd8-9241-70f80c690f3e	Danica, Dusk Witch	7	{0,2}	2	1	5	0	30mm	5af425c8-b2e5-4d3a-811b-c30ec78da952	Head-Danica-Dusk-Witch.webp	\N
b8531ea5-65b3-456c-a661-018b2a10f663	Tabby, the Librarian	8	{0,3}	3	3	5	1	40mm	b3011812-bfcb-4de9-9e19-2c23833e06be	Head-The-Librarian.webp	\N
bf242853-7c92-4cbf-9ec5-aa8a185514d9	Zorya, Dawn Witch	8	{0,2,4}	5	1	2	-1	30mm	c15fbffc-7a53-444d-8925-187e7146de54	Head-Zorya-Dawn-Witch.webp	\N
f4e9b54b-bec0-45a0-abc1-99d43007540e	Gump	12	{0,5}	3	2	4	2	40mm	6bb41179-1e4f-406d-975f-471440c5f314	Gump.webp	\N
3c8cfe38-b441-43d6-98df-5b75439bcffe	Morag	7	{0,1,3,6}	3	1	4	-1	30mm	328f937e-705c-4469-919e-ebd38e293bc3	Morag.webp	\N
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	Igor, the Servant	7	{0,2,4}	2	1	3	-1	30mm	af791c11-6698-4c9e-bf20-624387cdf575	Igor.webp	\N
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	Abra Cadaverous	10	{0,3}	4	2	5	1	40mm	d6896e88-8df0-4b6e-8c57-d209e4d0fe85	AbraCad.webp	\N
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	Brave Sir Pidge	1	{998}	2	1	0	-1	30mm	\N	Pidge.webp	\N
efa4e895-a827-4c8c-b047-dad641cba2b3	Jeremy, Lord of the Deep	2	{998}	1	1	0	-1	30mm	\N	Jeremy.webp	\N
014b622a-d049-4a14-b4ae-c959848a93e4	Echo of the Forgotten King	11	{998}	4	2	4	2	40mm	b602525c-c512-4561-9c3c-bbd909dd0718	ForgottenKing.webp	\N
0a017529-c64e-4082-ae0f-a06405ba41cf	Serif	7	{0,2}	2	1	3	0	40mm	e113e515-6aa8-4e6c-9c92-f3129f1d39f0	Serif.webp	\N
01652708-0ada-4456-a03f-6a478da7363f	Terrible Musician	2	{998}	1	1	3	-1	30mm	\N	Musician.webp	\N
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	Flay, Bearer of Knowledge	2	{998}	1	1	4	-1	30mm	\N	Flay.webp	\N
7014eb34-3d8d-490b-b789-704e4490401e	Lampy Darkson	2	{998}	1	1	4	-1	30mm	\N	Lampy.webp	\N
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Angerboda	12	{0,6}	3	2	4	2	40mm	172ccc68-f021-42ad-9777-ad163d8faf01	Angerboda.webp	\N
0a67af79-f120-4dc7-aaba-0a220f12bf4b	Viscount de Faulte	11	{0,3,5}	3	2	0	1	40mm	16557732-3bb4-4bbf-b277-e1b7704384e7	Viscount.webp	\N
f962bc25-6509-4305-b071-d26ba42d7170	Jerry Heir	8	{0,2,3,6}	3	1	4	-1	30mm	a6542444-94ba-4a9e-b1e2-8a8483f82141	Jerry.webp	\N
ae79052b-8c2a-42fb-a586-2fb55da98aa2	Roary	8	{0,2,4}	3	1	0	0	30mm	6e419064-7517-4658-aac0-7887111c02fa	Roary.webp	\N
531297f8-fe91-49a2-a3ee-820aeecac6b2	Nanny	9	{0,2,5}	3	1	4	1	30mm	af99cd73-9ad1-4a5f-8cee-928b09d31470	Nanny.webp	\N
0966e873-193e-4426-b4a7-2fb37914f69b	Sprog	2	{998}	1	1	0	-1	30mm	\N	Sprog.webp	\N
3a984368-f9eb-4d93-ac1a-78e905b3c631	Urchin	2	{998}	1	1	0	-1	30mm	\N	Urchin.webp	\N
b0b157e2-3c8e-488d-8d91-e1fb8093a053	Baron Von Fancyhat	7	{0,3}	5	2	3	0	30mm	95650ea5-b422-41ef-a1d3-80ed4e145a7e	Head-Baron-Von-Fancyhat.webp	\N
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	Claudia Duvel	8	{0,2,6}	4	1	3	-1	30mm	5908f3df-6325-47da-a67d-f6b8c09c6ca4	ClaudiaDuvel.webp	\N
95a32762-74ce-498d-af9e-35adedef2578	Pookie	2	{998}	1	1	0	-1	30mm	\N	Pookie.webp	\N
a31f9301-6064-4047-91e2-b3140b6bf486	Murder Bunny	4	{998}	2	1	0	-1	40mm	\N	Head-Murder-Bunny.webp	\N
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	Greymair	8	{0,2,4}	3	2	3	0	30mm	de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	Graymair.webp	\N
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	Marley	7	{0,1,3,5}	2	1	3	-1	30mm	ead7f6d1-59e5-4f2f-91a8-0315f92ca413	Marley.webp	\N
8d7f62eb-c809-477a-9351-d47e24e87f99	Commodore Delahaye	7	{0,2,4}	3	2	3	-1	30mm	d6c97f5a-05d5-4871-880c-3092969dc1cb	CommodoreDelehaye_Head.webp	\N
05c9c9b4-debd-444a-83d6-e99c9f1482fc	Gertrude, the Faerie Hunter	8	{0,1,4}	4	1	5	0	30mm	e0e5474d-b5fc-45dd-8385-396aa4905cd1	Head-Gertrude-The-Faerie-Hunter.webp	\N
5b319a3d-d166-433c-8ed6-67265bb3eb29	Goblin Airship	8	{0,2,5}	0	0	3	2	40mm	\N	GoblinAirship.webp	\N
f779e449-852b-4f41-9958-ff5110959d9d	Sen'Ara	7	{0,2,4,5}	3	1	4	-1	40mm	869cfe9f-2190-4cb8-87db-6fd9190de6bd	Senara.webp	\N
971322ba-7f14-4440-862a-54cdade49d68	Flinders Memphis	8	{0,1}	2	1	3	0	30mm	4a9e4b01-c2c4-45d5-95c9-2172ba958426	FlinderMemphis-Head.webp	\N
43311cb3-9637-4e02-a936-739078d4b077	Wendigo	8	{0,2,4,6}	4	1	0	0	40mm	037effd3-1eb8-4966-acae-660cb98d2458	Head-Wendigo.webp	\N
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	Old Calders	8	{0,2,6}	3	2	4	0	30mm	30fa4220-29db-44aa-83ce-5eb2886ee4d1	Head-Old-Calders.webp	\N
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	The Mortician	7	{0,3}	2	1	4	-1	30mm	356dda90-95cd-47b3-b1f0-da9723b8b02d	Head-The-Mortician.webp	\N
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	Mama Gimble	6	{0,1,2}	2	1	6	0	30mm	398a36db-81a2-4c47-b5ff-077b99541104	Head-Mama-Gimble.webp	\N
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	Teetoe	6	{0,3,4,5,2,1}	4	1	5	-2	30mm	1f829ca5-3b6d-4741-837e-bd6e23da97f3	Head-Teetoe.webp	\N
bf402f11-d1d1-4459-90e4-8b63bae331cb	Silvertongue	6	{0,1,2,3,5}	4	1	5	-2	30mm	4445205e-3fcf-431f-b284-6d55b74fc8cc	Head-Silvertongue.webp	\N
5656cad3-11d7-444b-8ae5-17d7cefc9491	Kalista, Leshavult Priestess	8	{0,1,3}	3	1	5	0	30mm	289ab9e0-f53b-4726-8db4-5e3317290383	Head-Kalista-Leshavult-Priestess.webp	\N
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	Gloom	7	{0,2,3,5}	2	2	4	0	30mm	289ab9e0-f53b-4726-8db4-5e3317290383	Head-Gloom.webp	\N
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	Jackalope	10	{0,3,7}	3	2	0	1	40mm	66470247-2367-426d-b990-07292515613a	Head-Jackalope.webp	\N
9422ce13-7817-483d-b634-e8e1dcd0f910	Herbert Growbottom	6	{0,1,3,5}	3	1	4	-1	30mm	1f829ca5-3b6d-4741-837e-bd6e23da97f3	Head-Herbert-Growbottom.webp	\N
887c1786-5a90-4ccb-a330-dd270cfdb5a8	Quarrel	8	{0,1,2}	3	1	3	0	30mm	30fa4220-29db-44aa-83ce-5eb2886ee4d1	Head-Quarrel.webp	\N
d23eb6e6-df16-4045-b28a-e789cff5dd24	Mr Toodles	7	{0,2,4}	2	1	5	0	30mm	b5c3c57c-4262-4250-937c-a18b366e5f97	Head-Mr-Toodles.webp	\N
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	Viktor Petty, Graverobber	8	{0,3,5}	3	2	4	0	30mm	289ab9e0-f53b-4726-8db4-5e3317290383	Viktor.webp	\N
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	Bristlenose	12	{0,5}	3	2	3	2	40mm	037effd3-1eb8-4966-acae-660cb98d2458	Head-Bristlenose.webp	\N
\.


--
-- Data for Name: characters_to_abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.characters_to_abilities (character_id, ability_id) FROM stdin;
9d66943e-609d-42d3-bd3d-ea1a04a5d461	000bef0e-0f1c-474f-b1c8-fae31dbc9551
c731299b-8f95-4c76-8297-c05ec490e723	016e5fee-0387-4455-bf9f-9d0f74cccabc
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	02330b23-1456-487a-8638-a0f151becdc1
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	026fda6b-a6dd-4d83-b0c9-987cb8bed56b
a2a17fec-e781-43c9-90ea-f342da0ae52c	02d69b81-d9ff-46bc-9a3d-c963cdfea140
cf29e43e-6827-4e61-96af-07f5698b2f6a	036cd64f-e2fc-4e13-9e49-403af452ff07
11923a35-88f4-4775-bf1e-9f76852dea86	0462eebf-6b74-47aa-b51f-9e30d6e15324
babe0916-3f66-43f4-9ca7-d796ec524322	04904fec-802b-4ad3-83d0-d93f22568ef8
3e744701-d87b-4dd8-9241-70f80c690f3e	04954bca-187a-4506-9cd3-5bede885e6d0
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	04b5b29d-46ff-440f-98f2-2c78626e759c
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	078f860f-fb39-4c40-8b0a-9cc6f6954b62
28562575-5965-4ffc-a249-276b4ce0bddd	07c617ed-3ac2-4117-aaa0-eb8f31821e27
347b5285-98a9-44a7-bb2c-d3f262065529	08491f73-81ab-4dcf-a99e-787101e825ef
1bcebd15-79f8-4f86-820a-4f4976f76f74	08d06aeb-8eea-4a3f-a282-8d819cc7631d
c731299b-8f95-4c76-8297-c05ec490e723	0944c9f2-fcae-4c6c-a617-8bee4065ee50
8cf109c7-e239-419c-ac98-4cf2eec125d0	0bdff1c8-a79e-4c25-9c3e-0d351e6a9310
99f443ef-dc99-43e4-b060-1ce0e849c9a0	0bf94a3e-6681-4f77-819f-e870d9eaf58d
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	0c314540-dc50-4149-a989-38d9bf5b9694
ca161ec3-8c53-4143-8d2e-eeba2325a333	0cd29bf5-2787-455a-8c99-48bd947f8690
8cf109c7-e239-419c-ac98-4cf2eec125d0	0cfd8fe4-7b66-4f7e-b286-305c0b18baaf
5656cad3-11d7-444b-8ae5-17d7cefc9491	0d01c918-8b27-4c9d-b7ee-46e67d2d1820
b711afd2-11ef-4214-a2f8-38dbf8ebf054	0df2c2c6-f463-4b9d-9d90-51a2930d720e
b0b157e2-3c8e-488d-8d91-e1fb8093a053	0e98cec6-6db4-440d-ba6b-1b26ec489263
4d2baf43-b3e1-45eb-8f10-a6f02d898616	078f860f-fb39-4c40-8b0a-9cc6f6954b62
cca09e19-94cd-4491-bf78-f8e86c008c95	0ee6fe18-6097-4236-85a6-0476f14ee502
b4d7d587-2528-4ecb-bc20-506e872a17ef	0eebec3b-60cc-4758-8600-105ca0a59472
082047de-da92-4608-8fae-9edc1d220d61	0f3763db-ab92-46bd-8c90-59e1d1bf8898
ced3a312-6a90-448c-abb9-8f505ad2a06f	1067b5cc-e8b9-4aa2-a115-4fab25c09e15
cde09c48-c3c0-4f01-af85-cbdd56707b63	109bdc6f-03b3-4490-ab5e-f5aa02572fba
ca161ec3-8c53-4143-8d2e-eeba2325a333	11236699-8292-43e5-be8f-f4bef5422e45
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	11418c12-71e5-456e-8b8d-a1adef6f907f
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	117c260f-58ea-4c13-b832-7a805b8dbdab
2408ff3e-c926-4b2f-b025-0ed59b3a0458	11418c12-71e5-456e-8b8d-a1adef6f907f
199f4048-bddf-4c0f-988b-2d52e04724c3	12b72919-4ca4-4e63-9541-31e2baf67889
babe0916-3f66-43f4-9ca7-d796ec524322	1325f4b6-e9c3-4bb7-9b6d-cb630b3113cb
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	13585f6f-fd5c-4374-8319-694d34f576aa
23db2f8f-7c67-474e-8cb1-52b7be9c5404	13751d60-d856-4ca8-a496-0df424f97530
199f4048-bddf-4c0f-988b-2d52e04724c3	13d6515e-4ec7-420b-a7ea-27842e586113
3c8cfe38-b441-43d6-98df-5b75439bcffe	14435ccd-cfde-4de3-ab0c-abfdb8ff653a
5b319a3d-d166-433c-8ed6-67265bb3eb29	146d0722-4004-4ea5-93fc-f803b0d6f655
3a984368-f9eb-4d93-ac1a-78e905b3c631	148c3173-ef3a-4cbd-ba58-11d7eb0f9a60
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	14d8eab2-a540-475a-9678-2134262e19a2
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	14ef3034-8575-45de-a095-fd5cdeb5e710
593322c1-e3b5-4582-b397-dd1cf9e6999b	1529c54d-63e1-4c4d-a077-3deae31dcd00
788fc810-6d12-4523-b33d-1a18d75b77a8	152b18e8-3d42-4492-9921-7641eb6e25fc
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	158720ac-d4b6-4286-be95-460385c7c99c
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	160f3db2-7357-4688-9284-171787284330
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	16395180-21ba-45ed-87f5-70939c822ca3
43311cb3-9637-4e02-a936-739078d4b077	1697df63-c002-4b20-88f4-2026dbf01898
0966e873-193e-4426-b4a7-2fb37914f69b	16d1ecdb-6f17-4d66-b4c4-b6cab6bf09e9
05a42b1f-a962-47ad-be9b-b564b4239b0d	1792c0b6-977f-4e91-bff6-34a75b456d22
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	17a00186-ee7e-4dfe-899c-bb208a085697
c731299b-8f95-4c76-8297-c05ec490e723	146d0722-4004-4ea5-93fc-f803b0d6f655
b4d7d587-2528-4ecb-bc20-506e872a17ef	17c882d9-b4c9-4ae7-84a2-ed35421dbdf3
0a67af79-f120-4dc7-aaba-0a220f12bf4b	17fb11c7-6734-4476-93c6-97a92d16762a
d23eb6e6-df16-4045-b28a-e789cff5dd24	1a3e486a-7f96-4e86-b492-139eb4e3fb7d
f32527b5-6d3d-408e-ba00-8d048737ca7a	1b55ea63-1f92-464d-92bf-fe028f5353b1
33ef3787-5f30-4b93-8c7c-165f08468edb	1b67693e-5ba2-44af-850b-74c6e2aa998c
a2a17fec-e781-43c9-90ea-f342da0ae52c	1bc65806-8989-4c5f-8201-d7e6c2b208ab
593322c1-e3b5-4582-b397-dd1cf9e6999b	1c08d011-b7e8-4cd6-a660-4ee1c6bd06c8
cc6db759-9762-4058-8970-d13e91f7aeb3	1ca7b52a-eeaf-4321-97f9-414b9c69a132
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	1cd96093-b738-40de-b0af-fe06abb98983
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	1d4a12c6-5580-45c7-a753-ff857e83c5f7
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	1d969482-e815-40bc-a95a-9453ad160c95
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	1dfa68b8-e75f-4bf9-8670-fef6168a2cf9
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	1e0f4539-e79f-45c7-9d6b-53bdc04728de
4ce2180b-94e6-4da2-a599-efed26981c10	1eef2f9a-6941-4382-9999-4ff1aff102af
2e0d027d-2222-4de3-a6ea-c35210114936	1f4116ac-9ec8-4d57-8054-be873c915f45
14aa356c-908a-4e97-a3d8-c59823a3ac74	02330b23-1456-487a-8638-a0f151becdc1
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	20e6b69a-536f-4aab-9026-174f9cf0d554
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	2113273f-d500-44ff-ad3b-af46e179f634
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	213f03c6-a752-477f-bc7b-c3967f1ff568
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	215c3950-afa9-4a41-a4f2-cbd1fa6e896b
5be00293-fec6-451a-899e-7874790f1d92	217257ca-5f06-421b-91b9-810f0ff3d6f5
33ef3787-5f30-4b93-8c7c-165f08468edb	21934a5d-8a8f-46d6-920b-eaf3dc358ba3
95a32762-74ce-498d-af9e-35adedef2578	21999104-d3a8-4746-957d-c7673b1417a4
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	22fa3301-6a72-44dc-8cc6-049dcd4afd5f
bf402f11-d1d1-4459-90e4-8b63bae331cb	2376b30d-2acf-4b06-a6cb-fd6b95c791fe
d26da9de-80aa-4944-a4d9-9c58a20a3fab	2387f16c-67d6-447d-b6ee-83b88ababd95
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	24260115-9127-4cc9-8970-02bcf8b54296
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	24da9082-4166-4e15-bac6-465fbe03dba4
11923a35-88f4-4775-bf1e-9f76852dea86	25d28622-77d7-4453-a761-33ebe6ecb35a
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	26cc76fb-8cb6-4abe-bc16-a5ba82ea3a68
f4e9b54b-bec0-45a0-abc1-99d43007540e	26e7167a-fde5-4bec-b015-f5e1014feff2
2408ff3e-c926-4b2f-b025-0ed59b3a0458	272b2b2d-7cc6-4330-aaff-1c6b355a03d2
84aba88d-a34e-4f98-8b27-1a158c8f1f57	2777fb83-ecfe-45f2-81ce-05c5075fd21b
55251217-9566-4372-9052-aecc26c97ec4	282757fa-fd67-432f-b4c0-a0cd5bb6b601
6c4819b1-9aa8-4689-bb29-9efdecc5d346	287870ea-120a-4e0e-80ca-356f1be749af
bf402f11-d1d1-4459-90e4-8b63bae331cb	287b4f60-5494-40a1-b3c2-10bee68e66d8
d26da9de-80aa-4944-a4d9-9c58a20a3fab	29283a14-28a5-41be-a784-1b120e2a0deb
85698bfc-2a32-4761-b4d7-75b0b497b3a7	02330b23-1456-487a-8638-a0f151becdc1
24192bfb-2cab-42d0-bb27-302c19f7fb7b	297e71e0-4581-4520-98ae-45384def045e
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	29cab333-ca29-43ff-8c6c-f1ef57ec4d59
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	078f860f-fb39-4c40-8b0a-9cc6f6954b62
6b22977d-b28c-481a-8f3e-8386a8df2e9f	2a16de56-f4a2-4b9d-8dc5-c6240aa8e48f
ced3a312-6a90-448c-abb9-8f505ad2a06f	2afdff82-c2ee-4512-b823-185c29eb32bc
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	2b8eadec-1dea-4975-942b-01a058d2ee59
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	1e0f4539-e79f-45c7-9d6b-53bdc04728de
b8531ea5-65b3-456c-a661-018b2a10f663	2d376265-59f4-4e79-8ac5-10e5d6fa6202
95a32762-74ce-498d-af9e-35adedef2578	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
55251217-9566-4372-9052-aecc26c97ec4	2e9c02fb-cc06-444e-9568-bec72c438ce6
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	2eda5a96-eaae-4be0-9f67-ec292493cbc6
4ce2180b-94e6-4da2-a599-efed26981c10	2f081dee-72a8-4e25-8b8d-0272defd7b8b
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	2f0e303e-30b1-45e2-b1c8-264f01024dea
46c6c7be-c12b-443c-91b2-691470a09e1e	2f0f4ca8-7b62-4c73-a9fd-f30c5134c26f
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	2f3c1946-1a59-4c08-afa2-c85f0c561c1b
887c1786-5a90-4ccb-a330-dd270cfdb5a8	310efbfd-0542-486f-9ccd-a53352322e8b
971322ba-7f14-4440-862a-54cdade49d68	3110fe1c-8a46-472a-82cc-42947af9324d
b0b157e2-3c8e-488d-8d91-e1fb8093a053	31306d21-809c-4fb6-8658-8a91eec06cfd
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	3131bf75-4132-44f1-b5c5-5c245fb9055f
9422ce13-7817-483d-b634-e8e1dcd0f910	31a77003-a096-4441-afe1-9466169fac15
99f443ef-dc99-43e4-b060-1ce0e849c9a0	326ed66d-024e-4476-b0fd-82c4a9fc384b
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
6b22977d-b28c-481a-8f3e-8386a8df2e9f	3402b185-e24c-4749-bf59-0f754378671f
6436abc0-85f9-4cf0-a576-711bf51e53f1	3413ee2a-a7c3-42ad-87ef-7dc9233c3583
05c9c9b4-debd-444a-83d6-e99c9f1482fc	35e649cd-4d2d-4282-b27f-09d58ad353ac
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	36116281-3182-420c-92fa-6708196344d2
347b5285-98a9-44a7-bb2c-d3f262065529	3640200f-817e-44b6-92f5-95d1dbad65f2
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	36d04ea0-9e53-4bd9-8e5b-1f8954828759
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	37491a41-13b7-4d46-8f5a-2243da00f635
419761bb-14fc-4e54-a697-c55ac69aaeb0	3779ee4e-0038-4296-bc56-b1b1f192258e
01652708-0ada-4456-a03f-6a478da7363f	1f4116ac-9ec8-4d57-8054-be873c915f45
34d5c62b-824d-4c5b-9703-24934e51df9d	11418c12-71e5-456e-8b8d-a1adef6f907f
95a32762-74ce-498d-af9e-35adedef2578	38ab2fa6-3529-4e5f-96cc-bcac63cced72
4ce2180b-94e6-4da2-a599-efed26981c10	38f01485-d5c3-46e2-9276-d19d58b6e79e
f779e449-852b-4f41-9958-ff5110959d9d	391a37f0-1d6f-478f-aa68-8bf75ce39c46
99f443ef-dc99-43e4-b060-1ce0e849c9a0	39e66a21-6452-402a-b56b-bd9492495c19
5b21b3fd-8c44-4aaa-83d8-b8337242d015	3a881f67-2015-4455-91ff-de1eca39dd75
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	3aad3a38-73f4-4dad-8920-633329728b6e
0a017529-c64e-4082-ae0f-a06405ba41cf	3b06bf4d-2fc7-4af5-b906-8443fd17c579
971322ba-7f14-4440-862a-54cdade49d68	3b668803-9e8b-4bc5-aeb7-a9cd0ec1aa1c
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	13585f6f-fd5c-4374-8319-694d34f576aa
6436abc0-85f9-4cf0-a576-711bf51e53f1	3eb94fe2-b0cf-4cb1-bea5-1f31221ee132
f4e9b54b-bec0-45a0-abc1-99d43007540e	3ecee621-5653-463f-916a-968c5d54fa45
788fc810-6d12-4523-b33d-1a18d75b77a8	3ed97f94-dbfd-4314-8074-cc1c40a768d1
23db2f8f-7c67-474e-8cb1-52b7be9c5404	02330b23-1456-487a-8638-a0f151becdc1
d23eb6e6-df16-4045-b28a-e789cff5dd24	3fbed669-421f-427c-bb07-b8dc8fac87f2
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	404df7d7-c667-4def-af86-970e021f346e
e6581470-9ac9-46ea-8efb-b8d4379eba11	02330b23-1456-487a-8638-a0f151becdc1
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	41a8ce5a-60ab-4c44-aa1d-e3cb6b74fea5
00aa30fa-3119-4499-9aef-4ec6d8b1514c	42f806b7-9883-4589-9400-d52d7390ad3f
b711afd2-11ef-4214-a2f8-38dbf8ebf054	445f744c-5b05-4105-ae9b-c734bb181526
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	44f59f56-447a-4627-b7e1-fd3ab7e0e206
bf402f11-d1d1-4459-90e4-8b63bae331cb	38ab2fa6-3529-4e5f-96cc-bcac63cced72
ddae4569-c206-464c-a824-9099aed5a9d2	4626a279-b4c8-4ac4-b319-bc9e02070ec3
54564d71-f101-497c-8515-4dfdd0ac52ca	11418c12-71e5-456e-8b8d-a1adef6f907f
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	46340777-bb13-4115-ab04-5e87c8b4e709
419761bb-14fc-4e54-a697-c55ac69aaeb0	4674e9fd-6458-4f2b-bbe5-4f39dbf1b7d7
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	47e1c222-a371-488e-8e9d-7bb6584cb86a
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	11418c12-71e5-456e-8b8d-a1adef6f907f
014b622a-d049-4a14-b4ae-c959848a93e4	496a1ed5-e9c5-4bce-83d6-b1ec15a430a9
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	49ce94f9-548c-4383-8b96-d63af2b45fc1
55251217-9566-4372-9052-aecc26c97ec4	1e0f4539-e79f-45c7-9d6b-53bdc04728de
eec4fb7d-3a4b-4ee3-914e-931589531bad	4a71206f-4198-4fed-8870-b3277d698f6b
3c8cfe38-b441-43d6-98df-5b75439bcffe	4a742689-cb82-420b-b4cd-69593563525b
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	4dae6e2a-94e3-47b2-9f55-31ff3064693f
2755e8c0-3a45-46cc-b050-c7f511a03e66	13585f6f-fd5c-4374-8319-694d34f576aa
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	4e344c93-0eb6-4032-b6d2-39f766aa62c5
51ae6140-30b0-4d7a-8726-fa060964f44d	4f0454fe-f440-407c-b62e-f4d5b29ccfd7
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	4fab4aae-fec8-4528-a36c-f9d48578bcc8
2e0d027d-2222-4de3-a6ea-c35210114936	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
4d2baf43-b3e1-45eb-8f10-a6f02d898616	51064fd4-7b6f-49b8-b08e-143f347c2313
014b622a-d049-4a14-b4ae-c959848a93e4	5212e56c-5b83-47c2-b075-3c13314396bb
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	527148d7-d1c1-4310-a13b-d78e2ecb0c38
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	11418c12-71e5-456e-8b8d-a1adef6f907f
f4e9b54b-bec0-45a0-abc1-99d43007540e	52f16178-2664-4100-b031-08f775b24022
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	5337bb4a-7dbf-499e-8aaa-59c659eae9dc
75816018-2182-464d-bc68-fd9e5909da4b	53b93d7e-1177-447f-8817-b2e61ab3758b
8b1de391-4e10-407b-b0fb-c4f29914ae42	54ac3b27-94e8-419e-9f94-69a5eead8168
11923a35-88f4-4775-bf1e-9f76852dea86	36d04ea0-9e53-4bd9-8e5b-1f8954828759
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	560433cb-8af6-4fd4-ab59-a56056fd0f13
8cf109c7-e239-419c-ac98-4cf2eec125d0	560a0b05-f576-4bbb-b690-64b9c7bd0248
23db2f8f-7c67-474e-8cb1-52b7be9c5404	56334d68-17be-4f7c-84c8-a2037cf7c22a
e6581470-9ac9-46ea-8efb-b8d4379eba11	566344e2-3388-465c-a472-3b1d3885350b
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	56c2d08b-d261-4fef-b573-57b3f741a9af
8d7f62eb-c809-477a-9351-d47e24e87f99	2113273f-d500-44ff-ad3b-af46e179f634
9422ce13-7817-483d-b634-e8e1dcd0f910	5745cde2-2751-4c0b-ac2e-8a4aac9ea927
2755e8c0-3a45-46cc-b050-c7f511a03e66	326ed66d-024e-4476-b0fd-82c4a9fc384b
ddae4569-c206-464c-a824-9099aed5a9d2	3779ee4e-0038-4296-bc56-b1b1f192258e
2408ff3e-c926-4b2f-b025-0ed59b3a0458	02330b23-1456-487a-8638-a0f151becdc1
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	58fb8e9f-4c4c-4726-b6d2-990cbe046c8a
46c6c7be-c12b-443c-91b2-691470a09e1e	592e01ef-f89f-4758-953a-bf81bd683dba
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	59499867-a0a7-4b33-a160-3b943e51b561
00aa30fa-3119-4499-9aef-4ec6d8b1514c	59fe01ae-ec91-4008-b294-85514537777c
f4e9b54b-bec0-45a0-abc1-99d43007540e	5a067454-0896-476e-8c8e-b598cabdd50b
2e0d027d-2222-4de3-a6ea-c35210114936	5a221161-2f20-47ab-b1e1-694810dd6bd7
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	1f4116ac-9ec8-4d57-8054-be873c915f45
347b5285-98a9-44a7-bb2c-d3f262065529	5bde5b8b-637e-4400-91f9-afe9abc62021
05a42b1f-a962-47ad-be9b-b564b4239b0d	5be3eccc-cd2a-435d-b1d4-7224193fb8b1
babe0916-3f66-43f4-9ca7-d796ec524322	11418c12-71e5-456e-8b8d-a1adef6f907f
6b22977d-b28c-481a-8f3e-8386a8df2e9f	5c681531-3dd9-4ffc-80f2-72f752a35f40
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	5cd48606-9a6c-447e-ba1f-7784bc116783
6436abc0-85f9-4cf0-a576-711bf51e53f1	5dfab766-7ccd-42f9-bd44-7150e142e9fc
9da91dfd-68e5-4f5c-98d9-bc763744490b	5e3451fa-b2d2-471b-ac73-6f554d945aac
24192bfb-2cab-42d0-bb27-302c19f7fb7b	5dfab766-7ccd-42f9-bd44-7150e142e9fc
355571fa-9c46-4779-afaa-0b6e52624aae	5f2670df-e678-41f9-b2ee-0ecf5b4a4b7d
4d2baf43-b3e1-45eb-8f10-a6f02d898616	5fd6f9ca-7761-49d5-b9d6-a36daeecdee2
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	60263ad3-d93a-41b5-819f-a9dc4bd4ca42
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	602d12a9-a2ac-4e4a-8dce-f5cb1dfd9cb7
843f65fc-1dec-490d-8dd7-2087927f6ef1	60333347-48a0-4ddf-8cb1-4605371790a8
0a67af79-f120-4dc7-aaba-0a220f12bf4b	6081c730-d0ad-4191-9f7d-eeedd7b733a8
2e0d027d-2222-4de3-a6ea-c35210114936	61285e53-895d-4df1-be5f-fdfe4f5b0e75
cc6db759-9762-4058-8970-d13e91f7aeb3	612d3939-4dd3-4d22-85ab-5ee5d620a65e
efa4e895-a827-4c8c-b047-dad641cba2b3	61340f1e-b722-4efd-b07d-54a795f3d109
9d66943e-609d-42d3-bd3d-ea1a04a5d461	6146b7b7-51bc-43d1-bbee-218c3c933537
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	61ac76cc-bad7-4ff3-8083-894171907a34
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	13585f6f-fd5c-4374-8319-694d34f576aa
9422ce13-7817-483d-b634-e8e1dcd0f910	5dfab766-7ccd-42f9-bd44-7150e142e9fc
f962bc25-6509-4305-b071-d26ba42d7170	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	62687980-fb3e-4888-ada6-6420a26ea441
3a984368-f9eb-4d93-ac1a-78e905b3c631	626f5bf6-a27d-43a1-9390-d6f6fbe55d65
0f733a5b-05a2-462e-8916-fceedf34e202	6287f75e-5259-48d4-92ee-96b003ff3ff4
b4d7d587-2528-4ecb-bc20-506e872a17ef	629ac625-dd80-4ae7-9bc2-4720ab0e5375
5b319a3d-d166-433c-8ed6-67265bb3eb29	62bea453-ff10-476d-abf8-6e4314a468b3
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	62e6276f-2954-4d96-9743-756b5cf860a3
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	6338e853-6342-40dc-af8a-bb8567d819bb
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	078f860f-fb39-4c40-8b0a-9cc6f6954b62
7014eb34-3d8d-490b-b789-704e4490401e	6414cd9a-74fd-40fe-bd83-09e55fb48a68
199f4048-bddf-4c0f-988b-2d52e04724c3	66d1068a-caa5-4dac-9ca6-9c49cd804f0b
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	66edb008-9cb3-4f35-98bf-fda480cc9c89
e18c4371-180d-4027-9beb-ea06aca9076c	146d0722-4004-4ea5-93fc-f803b0d6f655
cf031c28-c4f4-4895-b1a6-c809c984c8bb	68865207-a89d-4522-aace-685cdd0a35d3
082047de-da92-4608-8fae-9edc1d220d61	02330b23-1456-487a-8638-a0f151becdc1
057c12d9-97a7-4a2b-b61c-26857f683787	6b34c5ce-59ea-4405-b356-602bf8a5a71c
85698bfc-2a32-4761-b4d7-75b0b497b3a7	6c636bf0-f5da-4664-a38c-0920fd994276
ddae4569-c206-464c-a824-9099aed5a9d2	11418c12-71e5-456e-8b8d-a1adef6f907f
bf242853-7c92-4cbf-9ec5-aa8a185514d9	6cabf681-8485-4010-872e-5990d04a7a60
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	6cd1d4ef-edac-4371-9556-87c3fd38a19a
3e744701-d87b-4dd8-9241-70f80c690f3e	6d2242fb-43a5-41c1-acf3-8cbc17cfbcf6
057c12d9-97a7-4a2b-b61c-26857f683787	44f59f56-447a-4627-b7e1-fd3ab7e0e206
f4e9b54b-bec0-45a0-abc1-99d43007540e	6d3d0c6d-fb99-49e6-8d82-1940db88ebd9
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	287b4f60-5494-40a1-b3c2-10bee68e66d8
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	6dbcbce6-708b-4cab-a6cd-7df762473855
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	6de1b56e-e2b2-4712-91ea-7485331bf54c
7014eb34-3d8d-490b-b789-704e4490401e	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
0f733a5b-05a2-462e-8916-fceedf34e202	6e463b30-7d1a-4a9f-ae23-8d90405a22ed
cde09c48-c3c0-4f01-af85-cbdd56707b63	6f5b19c7-1c53-41a8-a1ac-58b71961722d
cdb923ab-68a2-45f7-b968-fea1bedddd81	6f6413fd-3fa8-4b65-a4d4-b816cecd930e
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	02330b23-1456-487a-8638-a0f151becdc1
cc6db759-9762-4058-8970-d13e91f7aeb3	715a1b54-9faf-4bbd-a2b7-b755dccd96fb
082047de-da92-4608-8fae-9edc1d220d61	718728f1-158e-46c2-84bc-6e8ca6408f13
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	72b0e2b7-ce82-462c-9399-d39a742f2afb
971322ba-7f14-4440-862a-54cdade49d68	73607203-54ad-48c0-9c3e-290abb881c54
5656cad3-11d7-444b-8ae5-17d7cefc9491	7398692b-b6d6-4cad-bb4d-af19cdfcb5b7
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	74d3b976-7f16-4a8e-9dee-0945234f3c80
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	7562a546-ccac-4e60-8120-6675ae339eac
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	759ae15e-d43b-4f2b-b71c-d49ec74c346b
e18c4371-180d-4027-9beb-ea06aca9076c	75bee6ea-766b-4361-8d6d-eaa67ea57287
1f89796e-3057-4ac6-884e-ffdaae869948	766c31c2-25ae-4428-b248-e9d92588815b
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	76965395-2818-4be6-961a-c7047c27ccd4
8b1de391-4e10-407b-b0fb-c4f29914ae42	769a00e8-f3a9-471e-9154-10c4f1e69dac
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	76b4b247-e7ba-4983-841d-61e86015c1f9
05c9c9b4-debd-444a-83d6-e99c9f1482fc	36d04ea0-9e53-4bd9-8e5b-1f8954828759
b8531ea5-65b3-456c-a661-018b2a10f663	77108372-1fb2-4421-bb6e-d1d6d7e3f135
05c9c9b4-debd-444a-83d6-e99c9f1482fc	7712ef85-c6b2-48c5-b0e2-b36ac3ab466b
b0b157e2-3c8e-488d-8d91-e1fb8093a053	1b67693e-5ba2-44af-850b-74c6e2aa998c
75816018-2182-464d-bc68-fd9e5909da4b	778b4d46-ae1e-4dd7-b5dc-5e86b4f3a340
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	77ffbe7f-5709-49d0-8e4e-c7c287713b70
bf242853-7c92-4cbf-9ec5-aa8a185514d9	785f9ed0-28ee-44d2-8469-b55f1fa4e727
14aa356c-908a-4e97-a3d8-c59823a3ac74	788d5244-6a32-4b2f-98ac-3edf5cfa7054
cf031c28-c4f4-4895-b1a6-c809c984c8bb	7985c459-203d-4ec3-a749-7665874c29e6
887c1786-5a90-4ccb-a330-dd270cfdb5a8	7a5d828a-339f-41d5-8d2c-b740f05ca5ba
d23eb6e6-df16-4045-b28a-e789cff5dd24	7a7c7654-89a6-4e8c-9480-a967a696b50b
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	7b468905-45e6-4c84-ac0f-b66692009a8e
24192bfb-2cab-42d0-bb27-302c19f7fb7b	7beea4e5-70ad-429e-a280-3eeacfaa00e9
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	7c04f534-b023-41b9-96dd-e9e909348eea
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	7c31d2c7-8ff6-4c1e-83a7-5ad992f94997
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	7c341a3d-921e-4a60-937a-ab5aceded11c
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	7cca7c3b-1c1a-464d-9d44-2a207ff248ce
8b1de391-4e10-407b-b0fb-c4f29914ae42	7d6d3821-4822-4f33-802e-e7a6a1daa0b0
f779e449-852b-4f41-9958-ff5110959d9d	7d6f6cd4-1292-4a71-acf2-be5ddcb9fd9d
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	7e2af3ec-e0b4-4bc1-a6a3-264fcea27c30
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	80b4d117-38ff-4883-97bc-377b091d0620
1f89796e-3057-4ac6-884e-ffdaae869948	81097b4b-f4f5-40e6-b7aa-447d637b0038
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	81304296-2b63-4e28-bf3a-a491bd98defb
f4e9b54b-bec0-45a0-abc1-99d43007540e	8168141f-b0fd-45df-bac7-f2e383a5be2d
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	2113273f-d500-44ff-ad3b-af46e179f634
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	81bd4fef-fce4-444d-8e0d-ca5935f9d629
14aa356c-908a-4e97-a3d8-c59823a3ac74	76b4b247-e7ba-4983-841d-61e86015c1f9
95a32762-74ce-498d-af9e-35adedef2578	82507363-10d7-40a5-9198-13e963bb9d6e
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	825c75af-1bb9-49b5-b24f-97592e50d93e
5be00293-fec6-451a-899e-7874790f1d92	8274b8b1-7f02-4d46-a455-0288a651596c
5b319a3d-d166-433c-8ed6-67265bb3eb29	82adafc9-227d-4a12-a988-d361022bde2c
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	83041869-2cdf-4458-82b6-78ad034f07b1
014b622a-d049-4a14-b4ae-c959848a93e4	83e5b8ab-6d7a-400d-ae80-4ed8e8209826
11923a35-88f4-4775-bf1e-9f76852dea86	83e7ce59-e14e-4e96-a4ff-390172484a50
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	843d016b-7b0e-4313-b464-a4907a4e65d2
7014eb34-3d8d-490b-b789-704e4490401e	844e981a-1a11-49dc-9d68-df1e8cf83068
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	8460cd01-c813-4f6c-a48d-9fd08518b268
1bcebd15-79f8-4f86-820a-4f4976f76f74	84a5fb9f-1bab-442a-9106-b56e7f148f5e
0966e873-193e-4426-b4a7-2fb37914f69b	82507363-10d7-40a5-9198-13e963bb9d6e
531297f8-fe91-49a2-a3ee-820aeecac6b2	85f813c3-68d8-4c9a-b9a2-5f2ace522b57
bf242853-7c92-4cbf-9ec5-aa8a185514d9	8649b39a-d977-49e7-b51b-18aff5a8b04d
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	3779ee4e-0038-4296-bc56-b1b1f192258e
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	2113273f-d500-44ff-ad3b-af46e179f634
8d7f62eb-c809-477a-9351-d47e24e87f99	87cad632-d455-462b-944c-3ce9c9637f09
6c4819b1-9aa8-4689-bb29-9efdecc5d346	87cb641f-7822-44e4-9455-72a97ad876cd
28562575-5965-4ffc-a249-276b4ce0bddd	87d11eaa-5c88-48f0-8ac6-f21738bd662c
1f89796e-3057-4ac6-884e-ffdaae869948	87da1b46-dbc7-48eb-9e95-d93d719e6f0c
eec4fb7d-3a4b-4ee3-914e-931589531bad	87cad632-d455-462b-944c-3ce9c9637f09
99f443ef-dc99-43e4-b060-1ce0e849c9a0	88b7fded-17dc-45dc-bf1b-704dfe681b76
46c6c7be-c12b-443c-91b2-691470a09e1e	88e7174e-91c8-4e3a-87a5-19bb9102e4b3
75816018-2182-464d-bc68-fd9e5909da4b	892691e9-cee6-4362-8065-104a850415fb
b8531ea5-65b3-456c-a661-018b2a10f663	8939b344-7c62-4be5-b645-f76fad95fb81
54564d71-f101-497c-8515-4dfdd0ac52ca	894b91a7-b9f5-4162-9702-52b79955a307
d26da9de-80aa-4944-a4d9-9c58a20a3fab	89821dda-f52d-467b-a866-9e55dde52d72
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	89d7f0c3-6361-46f2-8b9a-c78653c90bf8
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	1792c0b6-977f-4e91-bff6-34a75b456d22
28562575-5965-4ffc-a249-276b4ce0bddd	8b627890-a50a-40cf-95de-2ef14553f3f8
babe0916-3f66-43f4-9ca7-d796ec524322	8b6dcf3c-587a-4a48-876d-bad8130cd647
23db2f8f-7c67-474e-8cb1-52b7be9c5404	8b74c045-5faa-48b3-abdb-544cd324e5cd
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	8c81c1d1-da75-4c01-942f-7f8007e621e7
ca161ec3-8c53-4143-8d2e-eeba2325a333	8ce38614-175f-4e73-ba20-6dc5c818b0cf
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	8d1b382c-58bb-406e-b122-1d9c07c9521e
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	4a71206f-4198-4fed-8870-b3277d698f6b
05a42b1f-a962-47ad-be9b-b564b4239b0d	4a71206f-4198-4fed-8870-b3277d698f6b
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	8e164788-c206-4451-a6ca-518a872bbc52
8d7f62eb-c809-477a-9351-d47e24e87f99	4a71206f-4198-4fed-8870-b3277d698f6b
f779e449-852b-4f41-9958-ff5110959d9d	8e64452f-b078-4e05-8bb0-0b1ed62313a8
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	8ec1338b-1329-41e4-b98d-7429ad80d1b9
ddae4569-c206-464c-a824-9099aed5a9d2	38ab2fa6-3529-4e5f-96cc-bcac63cced72
b4d7d587-2528-4ecb-bc20-506e872a17ef	8f175c12-22b0-44dc-b5da-900a09dd411b
ddae4569-c206-464c-a824-9099aed5a9d2	8f5b2545-b9e2-4211-84f1-3919e95e4a71
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	8f87de7d-d569-4092-b619-20c814ea6ee7
843f65fc-1dec-490d-8dd7-2087927f6ef1	8f9b6919-ae56-48b6-b8d9-c9525341f361
b0b157e2-3c8e-488d-8d91-e1fb8093a053	1e0f4539-e79f-45c7-9d6b-53bdc04728de
f32527b5-6d3d-408e-ba00-8d048737ca7a	904696c9-1275-4f27-a0ac-5110b9dfee46
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	9050d7df-f10d-4197-aca5-6e41693734b6
cf29e43e-6827-4e61-96af-07f5698b2f6a	9064813e-12fd-4b1e-9b9f-0d273d8b8e9a
84aba88d-a34e-4f98-8b27-1a158c8f1f57	91ed7b4b-a71f-48cd-9aac-af8f0ca43765
e18c4371-180d-4027-9beb-ea06aca9076c	13585f6f-fd5c-4374-8319-694d34f576aa
84aba88d-a34e-4f98-8b27-1a158c8f1f57	9316bd1f-528d-4a5a-ab48-fa879e32b002
971322ba-7f14-4440-862a-54cdade49d68	83041869-2cdf-4458-82b6-78ad034f07b1
ca161ec3-8c53-4143-8d2e-eeba2325a333	9365e02f-318c-4792-902c-142252412958
eec4fb7d-3a4b-4ee3-914e-931589531bad	2113273f-d500-44ff-ad3b-af46e179f634
ced3a312-6a90-448c-abb9-8f505ad2a06f	93fb7c60-aede-4e00-82c9-9394d9da676f
531297f8-fe91-49a2-a3ee-820aeecac6b2	9470ed44-4223-46ac-be8b-730e404f915c
4d2baf43-b3e1-45eb-8f10-a6f02d898616	94c9ab8d-7fbc-4f31-9f07-9f649bd8869d
f962bc25-6509-4305-b071-d26ba42d7170	94d6c8a1-f81e-41ab-a8bb-c471c6198edc
eec4fb7d-3a4b-4ee3-914e-931589531bad	94fc8b4d-51fc-4072-a511-64a2f1cd46c9
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	4a71206f-4198-4fed-8870-b3277d698f6b
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	96097772-8f72-475f-bf25-f3ee5133c448
0a67af79-f120-4dc7-aaba-0a220f12bf4b	96449b2a-6620-4b2d-b613-9eb88672ea13
cc6db759-9762-4058-8970-d13e91f7aeb3	964dfbed-0500-48d8-a87b-c7d5939d4629
efa4e895-a827-4c8c-b047-dad641cba2b3	1f4116ac-9ec8-4d57-8054-be873c915f45
34d5c62b-824d-4c5b-9703-24934e51df9d	96e4581b-4fda-475f-bc1e-038a9ddc1bcc
f779e449-852b-4f41-9958-ff5110959d9d	97bec4d8-384f-4fef-aeb5-8a6c9c37bdeb
cca09e19-94cd-4491-bf78-f8e86c008c95	98548434-c878-4f7b-a92c-e12ea2cd0e7c
05a42b1f-a962-47ad-be9b-b564b4239b0d	2113273f-d500-44ff-ad3b-af46e179f634
51ae6140-30b0-4d7a-8726-fa060964f44d	9a2e3da5-acf3-42b8-acc0-979edbf29fc3
efa4e895-a827-4c8c-b047-dad641cba2b3	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
4ce2180b-94e6-4da2-a599-efed26981c10	9a592e5f-e14f-4ff7-ac66-86e5b8c43640
b8531ea5-65b3-456c-a661-018b2a10f663	9b2cabc5-85a7-408a-b382-243b8d144892
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	02330b23-1456-487a-8638-a0f151becdc1
3c8cfe38-b441-43d6-98df-5b75439bcffe	9e2967d3-aaf9-479f-9ad6-477cd4512f64
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	9e42e0dc-15ba-4e9b-9acd-29edd10d9d78
a2a17fec-e781-43c9-90ea-f342da0ae52c	9e6a20c7-553c-4c9b-88b4-9d5a033bd340
355571fa-9c46-4779-afaa-0b6e52624aae	5dfab766-7ccd-42f9-bd44-7150e142e9fc
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	9f0ef427-3217-4b76-af1b-c45c24db9d0c
bf242853-7c92-4cbf-9ec5-aa8a185514d9	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
593322c1-e3b5-4582-b397-dd1cf9e6999b	20e6b69a-536f-4aab-9026-174f9cf0d554
cf031c28-c4f4-4895-b1a6-c809c984c8bb	9fb2e9fb-a0e4-4e91-8fd2-973a0d8b928a
babe0916-3f66-43f4-9ca7-d796ec524322	a049585f-6beb-443b-9efa-8c62ca593c46
34d5c62b-824d-4c5b-9703-24934e51df9d	a05c9c53-c3bc-4512-b85c-64f9653e41a0
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	0d01c918-8b27-4c9d-b7ee-46e67d2d1820
33ef3787-5f30-4b93-8c7c-165f08468edb	a0dc4bc7-fda7-4757-b446-6d7123f6f9e3
0f733a5b-05a2-462e-8916-fceedf34e202	02330b23-1456-487a-8638-a0f151becdc1
b0b157e2-3c8e-488d-8d91-e1fb8093a053	4a71206f-4198-4fed-8870-b3277d698f6b
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	83041869-2cdf-4458-82b6-78ad034f07b1
2755e8c0-3a45-46cc-b050-c7f511a03e66	a31dbc90-9ece-47c8-aab2-2bc10ff54a50
5b21b3fd-8c44-4aaa-83d8-b8337242d015	a34ad0df-5beb-449b-a320-529def100d25
e6581470-9ac9-46ea-8efb-b8d4379eba11	a40962d6-2262-4a91-9971-3417ee630917
cde09c48-c3c0-4f01-af85-cbdd56707b63	a4145c55-b5e1-49fc-a400-cf72ccf96746
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	8f5b2545-b9e2-4211-84f1-3919e95e4a71
788fc810-6d12-4523-b33d-1a18d75b77a8	a56e8be7-0ad9-4073-842a-d310a4e7bf8a
3c8cfe38-b441-43d6-98df-5b75439bcffe	a5d9a1a9-3bde-4e1e-b953-46e39d70bd6b
0966e873-193e-4426-b4a7-2fb37914f69b	38ab2fa6-3529-4e5f-96cc-bcac63cced72
7014eb34-3d8d-490b-b789-704e4490401e	38ab2fa6-3529-4e5f-96cc-bcac63cced72
5be00293-fec6-451a-899e-7874790f1d92	a68c39b3-90de-493f-914c-4d87b8c2f65f
5be00293-fec6-451a-899e-7874790f1d92	02330b23-1456-487a-8638-a0f151becdc1
8b1de391-4e10-407b-b0fb-c4f29914ae42	a6e01e3b-92e5-4e7c-b630-f38537b01ecb
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	38ab2fa6-3529-4e5f-96cc-bcac63cced72
3a984368-f9eb-4d93-ac1a-78e905b3c631	1f4116ac-9ec8-4d57-8054-be873c915f45
05a42b1f-a962-47ad-be9b-b564b4239b0d	a75affce-af02-4bb7-ab1b-1a9d56a0dda5
cdb923ab-68a2-45f7-b968-fea1bedddd81	a8770842-db87-4611-9a1b-2640749c9436
1f89796e-3057-4ac6-884e-ffdaae869948	a8a02bc5-d831-410c-81bf-c69f8497ff90
2408ff3e-c926-4b2f-b025-0ed59b3a0458	a8eda789-87a5-4a7b-a662-15e2df291d7f
bf402f11-d1d1-4459-90e4-8b63bae331cb	1697df63-c002-4b20-88f4-2026dbf01898
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	aaed7e97-a4f6-4ef7-ba8a-005ad4cb4ceb
d23eb6e6-df16-4045-b28a-e789cff5dd24	11418c12-71e5-456e-8b8d-a1adef6f907f
3e744701-d87b-4dd8-9241-70f80c690f3e	ab81e999-2a2f-4035-a29e-096f41557ac4
f32527b5-6d3d-408e-ba00-8d048737ca7a	abea60ee-40ae-4256-a2eb-1419d98453d2
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	abf92569-9e5d-4869-94af-e3f32a1861c1
ced3a312-6a90-448c-abb9-8f505ad2a06f	ac222a7f-d860-40ec-8ec4-58074eeba541
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	ac480ba4-9771-4283-b300-557dfec246ec
f32527b5-6d3d-408e-ba00-8d048737ca7a	ac6648d0-54cf-405c-9066-ec5e0735d359
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	ac799b53-cd59-45bb-aea8-a722b480899c
bf242853-7c92-4cbf-9ec5-aa8a185514d9	aca4439d-a9ac-4220-8a3a-cd57e1a92b87
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
0966e873-193e-4426-b4a7-2fb37914f69b	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	ae6127fd-717d-42f2-9b66-2f2d8f4f1228
0966e873-193e-4426-b4a7-2fb37914f69b	1f4116ac-9ec8-4d57-8054-be873c915f45
6b22977d-b28c-481a-8f3e-8386a8df2e9f	b01cf816-e00d-4786-85c1-9c2fc90fb282
3a984368-f9eb-4d93-ac1a-78e905b3c631	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
ae79052b-8c2a-42fb-a586-2fb55da98aa2	b05a5252-3260-46b8-befe-940edf096471
0f733a5b-05a2-462e-8916-fceedf34e202	b1555c82-32af-4692-8743-1f9c5e0fb5a8
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	4a71206f-4198-4fed-8870-b3277d698f6b
887c1786-5a90-4ccb-a330-dd270cfdb5a8	b2ec9be1-85ce-49bb-b19e-8a614e3bba43
43311cb3-9637-4e02-a936-739078d4b077	29cab333-ca29-43ff-8c6c-f1ef57ec4d59
5be00293-fec6-451a-899e-7874790f1d92	11418c12-71e5-456e-8b8d-a1adef6f907f
082047de-da92-4608-8fae-9edc1d220d61	b3f80756-2ff3-4894-865e-576ea1e3ff70
9422ce13-7817-483d-b634-e8e1dcd0f910	759ae15e-d43b-4f2b-b71c-d49ec74c346b
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	b47200ab-2b9d-4a56-a597-143b9b4b71e0
199f4048-bddf-4c0f-988b-2d52e04724c3	1325f4b6-e9c3-4bb7-9b6d-cb630b3113cb
3c8cfe38-b441-43d6-98df-5b75439bcffe	13585f6f-fd5c-4374-8319-694d34f576aa
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	02330b23-1456-487a-8638-a0f151becdc1
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	b6cab585-32e1-4d26-8d55-3922af63d4cc
54564d71-f101-497c-8515-4dfdd0ac52ca	b6da4112-3cbe-4143-b09a-5729b1e3ba68
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	b6e317ec-6ece-42e1-bb4c-7342f482f635
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	036cd64f-e2fc-4e13-9e49-403af452ff07
f962bc25-6509-4305-b071-d26ba42d7170	b7681e93-2dfc-424e-a1f7-a3e4efc77f6e
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	b76ae28c-ef2b-4ab9-978a-1fec177479c1
46c6c7be-c12b-443c-91b2-691470a09e1e	b7ca35ea-8359-4601-b2cd-4c6b60f45f4f
01652708-0ada-4456-a03f-6a478da7363f	b81f7ab7-2e21-4b95-9ae4-9e3287a5cdf0
788fc810-6d12-4523-b33d-1a18d75b77a8	88e7174e-91c8-4e3a-87a5-19bb9102e4b3
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	b8973f7b-8f5d-4517-bd9a-6aeab69695b6
0a017529-c64e-4082-ae0f-a06405ba41cf	13585f6f-fd5c-4374-8319-694d34f576aa
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	38ab2fa6-3529-4e5f-96cc-bcac63cced72
5b21b3fd-8c44-4aaa-83d8-b8337242d015	b943a114-6080-47ce-97bc-71f6865f6d0b
cca09e19-94cd-4491-bf78-f8e86c008c95	b981fe52-c6ce-41ea-9677-aa90057f2965
3a984368-f9eb-4d93-ac1a-78e905b3c631	38ab2fa6-3529-4e5f-96cc-bcac63cced72
cca09e19-94cd-4491-bf78-f8e86c008c95	ba15123a-d0af-430b-ad99-09a4996bf2a1
887c1786-5a90-4ccb-a330-dd270cfdb5a8	13585f6f-fd5c-4374-8319-694d34f576aa
347b5285-98a9-44a7-bb2c-d3f262065529	bb31bdea-f067-4e2b-a6c6-49ff6ae36993
cf29e43e-6827-4e61-96af-07f5698b2f6a	629ac625-dd80-4ae7-9bc2-4720ab0e5375
cf29e43e-6827-4e61-96af-07f5698b2f6a	bb6af0d2-5263-4dfd-aade-10642e3490f1
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	bcc7aca2-e2a0-47e9-a9d4-85fada01a054
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	13585f6f-fd5c-4374-8319-694d34f576aa
34d5c62b-824d-4c5b-9703-24934e51df9d	bd5b58a9-11d4-49be-9d30-c8906d767d8a
1f89796e-3057-4ac6-884e-ffdaae869948	1cd96093-b738-40de-b0af-fe06abb98983
0a67af79-f120-4dc7-aaba-0a220f12bf4b	be21bed3-bb9d-4929-9887-89507f335fca
2e0d027d-2222-4de3-a6ea-c35210114936	38ab2fa6-3529-4e5f-96cc-bcac63cced72
28562575-5965-4ffc-a249-276b4ce0bddd	02330b23-1456-487a-8638-a0f151becdc1
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	bee09d61-74ea-435c-9e87-7e2931a1bf09
cca09e19-94cd-4491-bf78-f8e86c008c95	0d01c918-8b27-4c9d-b7ee-46e67d2d1820
51ae6140-30b0-4d7a-8726-fa060964f44d	76b4b247-e7ba-4983-841d-61e86015c1f9
46c6c7be-c12b-443c-91b2-691470a09e1e	bf4dc76c-cc15-4edf-a018-e5e95b8acc29
01652708-0ada-4456-a03f-6a478da7363f	38ab2fa6-3529-4e5f-96cc-bcac63cced72
355571fa-9c46-4779-afaa-0b6e52624aae	c015a643-c5b8-40ad-b0b5-b510ae33c836
ae79052b-8c2a-42fb-a586-2fb55da98aa2	c05a263e-c782-4a37-a751-6ef63a4313d7
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	c1046171-bb13-4d14-9926-03ef94af83b1
b711afd2-11ef-4214-a2f8-38dbf8ebf054	76b4b247-e7ba-4983-841d-61e86015c1f9
b711afd2-11ef-4214-a2f8-38dbf8ebf054	c5373a42-34f1-49db-9aa8-84d82e07152b
887c1786-5a90-4ccb-a330-dd270cfdb5a8	c5aec934-55a7-45ba-844a-8672f6758d53
b711afd2-11ef-4214-a2f8-38dbf8ebf054	c5ddfad7-e67e-4ca5-8702-f6529fd4ecbd
419761bb-14fc-4e54-a697-c55ac69aaeb0	02330b23-1456-487a-8638-a0f151becdc1
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	c736fe5f-b548-4439-bde1-098e1bfae629
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	c755b4ce-9894-498f-bc86-61b7c9d31aaa
cdb923ab-68a2-45f7-b968-fea1bedddd81	c757f4fa-61ff-4b74-b850-cca491b3db36
355571fa-9c46-4779-afaa-0b6e52624aae	3779ee4e-0038-4296-bc56-b1b1f192258e
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	c7e394f7-882a-4e21-b05a-b02c34b1a4b6
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	c7f0769f-3f14-48a8-bc4f-dfb40c5a2c2d
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	c7fc5e05-51ca-4d09-8a48-5a452008ad4f
6c4819b1-9aa8-4689-bb29-9efdecc5d346	87da1b46-dbc7-48eb-9e95-d93d719e6f0c
85698bfc-2a32-4761-b4d7-75b0b497b3a7	a75affce-af02-4bb7-ab1b-1a9d56a0dda5
8cf109c7-e239-419c-ac98-4cf2eec125d0	c8afd7ac-02ae-496c-a97a-5419663aede7
cf031c28-c4f4-4895-b1a6-c809c984c8bb	c8e6886d-62f0-4b46-8686-1291848dde5c
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	a68c39b3-90de-493f-914c-4d87b8c2f65f
5b21b3fd-8c44-4aaa-83d8-b8337242d015	ca62cf64-8616-4818-bd8c-e95f624e2cd5
e18c4371-180d-4027-9beb-ea06aca9076c	ca8fce0e-f9dc-45bc-a99f-a2bd1fc94b5c
eec4fb7d-3a4b-4ee3-914e-931589531bad	cac6a52f-93df-48e7-ba57-3840bcec245e
14aa356c-908a-4e97-a3d8-c59823a3ac74	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
43311cb3-9637-4e02-a936-739078d4b077	14d8eab2-a540-475a-9678-2134262e19a2
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	02330b23-1456-487a-8638-a0f151becdc1
2755e8c0-3a45-46cc-b050-c7f511a03e66	146d0722-4004-4ea5-93fc-f803b0d6f655
6c4819b1-9aa8-4689-bb29-9efdecc5d346	11418c12-71e5-456e-8b8d-a1adef6f907f
cde09c48-c3c0-4f01-af85-cbdd56707b63	ccec4ac7-2be9-419b-a0e8-6adc43a40a02
e6581470-9ac9-46ea-8efb-b8d4379eba11	ce03a185-0bf5-4612-8485-5f53dc955340
05c9c9b4-debd-444a-83d6-e99c9f1482fc	ce860a8a-330e-4c66-83a8-f8473ad9b90b
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	ceacfbbb-a05d-46ff-8b68-2702da9960f9
3e744701-d87b-4dd8-9241-70f80c690f3e	cf406764-50fe-4b89-97df-7cf2219d30e4
85698bfc-2a32-4761-b4d7-75b0b497b3a7	c736fe5f-b548-4439-bde1-098e1bfae629
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	38ab2fa6-3529-4e5f-96cc-bcac63cced72
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	29cab333-ca29-43ff-8c6c-f1ef57ec4d59
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	d1b6802a-aa3c-45de-8e93-4293fa9a7ee5
14aa356c-908a-4e97-a3d8-c59823a3ac74	d207527c-5619-48fd-b88d-f2db9faa5dd1
9da91dfd-68e5-4f5c-98d9-bc763744490b	d264d1dc-bd92-4b20-ab82-d4af59efffaa
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	d2699fbe-d564-4fb7-8d5f-c3a71ac31ca8
593322c1-e3b5-4582-b397-dd1cf9e6999b	d33be47c-7b2b-4ee9-9c63-6cdae33027c5
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	d376bfa6-4b60-4705-a2b1-1f4d6af35b72
4d2baf43-b3e1-45eb-8f10-a6f02d898616	d3fbd78c-f8df-4e81-8451-c8d55eeefaf3
9d66943e-609d-42d3-bd3d-ea1a04a5d461	016e5fee-0387-4455-bf9f-9d0f74cccabc
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	d4857f97-ea34-41d7-95d3-7ae4de19aa07
cc6db759-9762-4058-8970-d13e91f7aeb3	02330b23-1456-487a-8638-a0f151becdc1
14aa356c-908a-4e97-a3d8-c59823a3ac74	b6da4112-3cbe-4143-b09a-5729b1e3ba68
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	2f0f4ca8-7b62-4c73-a9fd-f30c5134c26f
cdb923ab-68a2-45f7-b968-fea1bedddd81	d6cebca1-610b-4d9b-ae0e-2e5eda791c85
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	d756ffff-15b3-482c-8b93-6ded5fe59e64
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	d7cdb62f-e0cb-4aa2-9d82-887d300c7f75
55251217-9566-4372-9052-aecc26c97ec4	d823054a-301b-46ac-9da4-2c797d38802e
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	d827e642-e991-45c4-951c-549b4cc5d87d
9d66943e-609d-42d3-bd3d-ea1a04a5d461	d8cd28b6-7e4b-459d-8f7b-02c0653b06a4
6436abc0-85f9-4cf0-a576-711bf51e53f1	d93d8d82-3c00-406d-8921-16012765bde1
057c12d9-97a7-4a2b-b61c-26857f683787	aca4439d-a9ac-4220-8a3a-cd57e1a92b87
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	88e7174e-91c8-4e3a-87a5-19bb9102e4b3
1bcebd15-79f8-4f86-820a-4f4976f76f74	0f3763db-ab92-46bd-8c90-59e1d1bf8898
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	daa5bf22-ebe1-4c39-ad40-09a8ac1c0a2c
9422ce13-7817-483d-b634-e8e1dcd0f910	dac6fb03-ce1e-4cda-bb19-a75d09d831f4
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	db4ffb1f-7872-4f02-a546-009a8453ec69
cf29e43e-6827-4e61-96af-07f5698b2f6a	db50ae51-cbc0-4ae0-b2fd-063b82afae54
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	db7c16d1-6aaf-4edb-8476-63e3ea3974d1
7014eb34-3d8d-490b-b789-704e4490401e	1f4116ac-9ec8-4d57-8054-be873c915f45
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	47e1c222-a371-488e-8e9d-7bb6584cb86a
0f733a5b-05a2-462e-8916-fceedf34e202	81bd4fef-fce4-444d-8e0d-ca5935f9d629
eec4fb7d-3a4b-4ee3-914e-931589531bad	df3b6626-41e5-4e25-9b9c-e141a5efa290
347b5285-98a9-44a7-bb2c-d3f262065529	df403b12-a04b-42c7-83b2-a2ae64b64ce0
cde09c48-c3c0-4f01-af85-cbdd56707b63	146d0722-4004-4ea5-93fc-f803b0d6f655
46c6c7be-c12b-443c-91b2-691470a09e1e	87da1b46-dbc7-48eb-9e95-d93d719e6f0c
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	1b67693e-5ba2-44af-850b-74c6e2aa998c
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	02330b23-1456-487a-8638-a0f151becdc1
843f65fc-1dec-490d-8dd7-2087927f6ef1	e056fdcf-e68e-4ce7-a379-6abdaae01c78
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	e066a3e3-32bb-46b1-8f3a-787826b1205e
a2a17fec-e781-43c9-90ea-f342da0ae52c	e092a6b7-4b91-45e6-a864-86bbe920915f
419761bb-14fc-4e54-a697-c55ac69aaeb0	e22b5337-d6c8-4a48-a8a0-d5240326b4fc
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	e22d2f90-945f-4c38-bdbd-b1c91b55e9eb
28562575-5965-4ffc-a249-276b4ce0bddd	e2836c92-af85-425c-867d-e6d27678749c
ae79052b-8c2a-42fb-a586-2fb55da98aa2	e2c1c368-7bd6-45a9-a98c-1eb27207fac1
efa4e895-a827-4c8c-b047-dad641cba2b3	38ab2fa6-3529-4e5f-96cc-bcac63cced72
11923a35-88f4-4775-bf1e-9f76852dea86	e4f80d09-5929-4e49-b129-8a8c9842622f
85698bfc-2a32-4761-b4d7-75b0b497b3a7	e59bf74c-48d6-464c-968e-fcda87e0e4a2
00aa30fa-3119-4499-9aef-4ec6d8b1514c	e5e09d9c-df76-4e35-b61e-2d7ed1f1b284
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	e5e946f4-339d-432d-8f51-680c26eaec00
cde09c48-c3c0-4f01-af85-cbdd56707b63	e6439629-8ffe-487d-a54c-49e10b1c9def
5656cad3-11d7-444b-8ae5-17d7cefc9491	e6dba5ab-0333-4ff0-9379-f726455e3520
75816018-2182-464d-bc68-fd9e5909da4b	e747a2cc-bf4b-4346-af00-2cb29fd13742
971322ba-7f14-4440-862a-54cdade49d68	e75960ce-0724-46c8-882b-d8ddbc3b22c4
33ef3787-5f30-4b93-8c7c-165f08468edb	e806a732-d4e6-4b72-a9de-8812370941f0
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	078f860f-fb39-4c40-8b0a-9cc6f6954b62
51ae6140-30b0-4d7a-8726-fa060964f44d	e864a7f6-3e81-4d41-ac01-7f7f84fc0649
c731299b-8f95-4c76-8297-c05ec490e723	e8f0cde7-b8b0-4484-abbd-3df0bd5fdd34
01652708-0ada-4456-a03f-6a478da7363f	2d6a99d8-a561-4d9d-8afb-d37fe4f6cf17
8d7f62eb-c809-477a-9351-d47e24e87f99	e9a5b782-e8f6-4804-9020-447a6fc1431b
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	1f4116ac-9ec8-4d57-8054-be873c915f45
05c9c9b4-debd-444a-83d6-e99c9f1482fc	e9cec825-ebd6-4e83-88de-71f4608d407a
0a017529-c64e-4082-ae0f-a06405ba41cf	e9d6fb78-40a4-4abb-ac01-b49300d91cab
014b622a-d049-4a14-b4ae-c959848a93e4	eb14915d-70c7-47e7-9781-a9165ace9a72
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	eb229ab3-f139-4ece-9973-93613656b645
2755e8c0-3a45-46cc-b050-c7f511a03e66	ebee007f-0240-410f-bb60-4672481b9b97
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	ed39a831-f174-4899-b4a5-65fdb7cc1332
d26da9de-80aa-4944-a4d9-9c58a20a3fab	ed505628-fa7a-44d4-9afb-9609471c7337
5656cad3-11d7-444b-8ae5-17d7cefc9491	ed5b4446-a5cc-4351-a377-93e3e886069a
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	ee0be4f3-ad93-4ca9-bb01-88a99cdc5838
95a32762-74ce-498d-af9e-35adedef2578	1f4116ac-9ec8-4d57-8054-be873c915f45
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	eef59a42-8a08-429f-875a-2fe5a2a3f138
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	0d01c918-8b27-4c9d-b7ee-46e67d2d1820
531297f8-fe91-49a2-a3ee-820aeecac6b2	7a7c7654-89a6-4e8c-9480-a967a696b50b
0a017529-c64e-4082-ae0f-a06405ba41cf	ef74802f-740b-4bf9-a42b-53dd9be5cc6d
43311cb3-9637-4e02-a936-739078d4b077	ef86ee53-ac3b-4680-ada0-147587aa6363
99f443ef-dc99-43e4-b060-1ce0e849c9a0	ef9998f7-63b8-43f9-a21d-8de3b5cfb061
28562575-5965-4ffc-a249-276b4ce0bddd	efb6024d-b8a0-4893-82dc-636e9b520bd7
54564d71-f101-497c-8515-4dfdd0ac52ca	02330b23-1456-487a-8638-a0f151becdc1
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	078f860f-fb39-4c40-8b0a-9cc6f6954b62
6c4819b1-9aa8-4689-bb29-9efdecc5d346	f0ce8c12-15e1-4007-a6fa-7f602e59be1d
0a67af79-f120-4dc7-aaba-0a220f12bf4b	f186d892-e664-4f18-b894-925a376a0552
8d7f62eb-c809-477a-9351-d47e24e87f99	f27597bc-eb66-4192-baff-9736bc6a5931
ae79052b-8c2a-42fb-a586-2fb55da98aa2	f282abe9-48f5-409a-b69f-f731807d4b7b
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	f355ce68-ffb4-40fc-a3dc-bd6c44156749
f779e449-852b-4f41-9958-ff5110959d9d	f35e1804-0f86-4f72-bf34-9a53ee8e0c46
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	f36ec5fb-4b22-4241-8286-d6cededb452a
5b319a3d-d166-433c-8ed6-67265bb3eb29	f390c500-6c30-41dd-b2f3-c945e6b389a5
75816018-2182-464d-bc68-fd9e5909da4b	f4296a74-58b9-4063-8bc1-150d0fdfad57
85698bfc-2a32-4761-b4d7-75b0b497b3a7	38f01485-d5c3-46e2-9276-d19d58b6e79e
55251217-9566-4372-9052-aecc26c97ec4	f5195cb5-26ca-4b1c-93f9-c898d6f76dfc
bf402f11-d1d1-4459-90e4-8b63bae331cb	76b4b247-e7ba-4983-841d-61e86015c1f9
9da91dfd-68e5-4f5c-98d9-bc763744490b	f58b84e2-3fcf-439a-87df-96ddcb7513f3
efa4e895-a827-4c8c-b047-dad641cba2b3	f58fbd6b-5400-4091-b527-397fac8abe58
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	f5ace6dc-3209-48f8-892e-8fe81781b528
843f65fc-1dec-490d-8dd7-2087927f6ef1	f6e84ad7-160f-4c17-adc1-3161b98d4737
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	f7a0afd4-238c-452a-af63-142a8b577133
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	02330b23-1456-487a-8638-a0f151becdc1
f32527b5-6d3d-408e-ba00-8d048737ca7a	f80ccb5a-1676-49cc-97a5-2de4054784d8
84aba88d-a34e-4f98-8b27-1a158c8f1f57	f828735c-e48a-40d5-a106-1c76185fb24c
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	f86a93ac-9edb-4d53-9032-ca094f9a319a
082047de-da92-4608-8fae-9edc1d220d61	11418c12-71e5-456e-8b8d-a1adef6f907f
5656cad3-11d7-444b-8ae5-17d7cefc9491	f8ced3f8-6202-4c9e-b7fc-544be025b635
531297f8-fe91-49a2-a3ee-820aeecac6b2	f95a19d2-4a97-4d08-b916-4c4cb34009f4
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	fa0f082f-11c2-4cbe-ae5d-06b91bc309e2
014b622a-d049-4a14-b4ae-c959848a93e4	fa49852a-4bd9-46a3-b4a3-7861c0805ecf
54564d71-f101-497c-8515-4dfdd0ac52ca	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	fad4b58f-7884-4123-b4a7-8f0342485566
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	fae4ff2b-8c1a-404c-9827-46672fc95bdf
355571fa-9c46-4779-afaa-0b6e52624aae	fb070fae-7b8f-4272-9bc6-087ea43d3ad3
843f65fc-1dec-490d-8dd7-2087927f6ef1	fdae8484-1e4c-4f17-bcdb-f6ca0656ce07
00aa30fa-3119-4499-9aef-4ec6d8b1514c	fe20f07d-22d1-4ff0-b162-b0e17f344614
2408ff3e-c926-4b2f-b025-0ed59b3a0458	fe433bf9-4478-4612-84de-7f7cb4ad3ca5
f962bc25-6509-4305-b071-d26ba42d7170	fe5324ef-e37b-490f-b5ba-c435f3b2f06d
00aa30fa-3119-4499-9aef-4ec6d8b1514c	3cbe18b4-b6d4-4c5f-8b39-40e32c79fb61
d26da9de-80aa-4944-a4d9-9c58a20a3fab	b3f80756-2ff3-4894-865e-576ea1e3ff70
057c12d9-97a7-4a2b-b61c-26857f683787	3402b185-e24c-4749-bf59-0f754378671f
\.


--
-- Data for Name: factions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factions (faction) FROM stdin;
Commonwealth
Dominion
Leshavult
Shades
\.


--
-- Data for Name: characters_to_factions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.characters_to_factions (character_id, faction) FROM stdin;
28562575-5965-4ffc-a249-276b4ce0bddd	Dominion
28562575-5965-4ffc-a249-276b4ce0bddd	Shades
b4d7d587-2528-4ecb-bc20-506e872a17ef	Dominion
b4d7d587-2528-4ecb-bc20-506e872a17ef	Shades
199f4048-bddf-4c0f-988b-2d52e04724c3	Dominion
199f4048-bddf-4c0f-988b-2d52e04724c3	Commonwealth
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	Commonwealth
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	Commonwealth
2408ff3e-c926-4b2f-b025-0ed59b3a0458	Commonwealth
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	Dominion
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	Dominion
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	Shades
d26da9de-80aa-4944-a4d9-9c58a20a3fab	Dominion
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	Commonwealth
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	Dominion
9422ce13-7817-483d-b634-e8e1dcd0f910	Dominion
cc6db759-9762-4058-8970-d13e91f7aeb3	Dominion
4d2baf43-b3e1-45eb-8f10-a6f02d898616	Dominion
4d2baf43-b3e1-45eb-8f10-a6f02d898616	Shades
887c1786-5a90-4ccb-a330-dd270cfdb5a8	Commonwealth
11923a35-88f4-4775-bf1e-9f76852dea86	Commonwealth
8b1de391-4e10-407b-b0fb-c4f29914ae42	Commonwealth
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	Dominion
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	Dominion
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	Commonwealth
c731299b-8f95-4c76-8297-c05ec490e723	Commonwealth
c731299b-8f95-4c76-8297-c05ec490e723	Dominion
cf031c28-c4f4-4895-b1a6-c809c984c8bb	Leshavult
23db2f8f-7c67-474e-8cb1-52b7be9c5404	Dominion
bf402f11-d1d1-4459-90e4-8b63bae331cb	Dominion
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	Dominion
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	Dominion
85698bfc-2a32-4761-b4d7-75b0b497b3a7	Dominion
33ef3787-5f30-4b93-8c7c-165f08468edb	Shades
593322c1-e3b5-4582-b397-dd1cf9e6999b	Commonwealth
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	Commonwealth
9da91dfd-68e5-4f5c-98d9-bc763744490b	Commonwealth
6c4819b1-9aa8-4689-bb29-9efdecc5d346	Dominion
6c4819b1-9aa8-4689-bb29-9efdecc5d346	Leshavult
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	Commonwealth
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	Dominion
788fc810-6d12-4523-b33d-1a18d75b77a8	Commonwealth
082047de-da92-4608-8fae-9edc1d220d61	Dominion
e6581470-9ac9-46ea-8efb-b8d4379eba11	Dominion
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	Dominion
8cf109c7-e239-419c-ac98-4cf2eec125d0	Leshavult
2755e8c0-3a45-46cc-b050-c7f511a03e66	Dominion
cca09e19-94cd-4491-bf78-f8e86c008c95	Commonwealth
ddae4569-c206-464c-a824-9099aed5a9d2	Dominion
1bcebd15-79f8-4f86-820a-4f4976f76f74	Commonwealth
46c6c7be-c12b-443c-91b2-691470a09e1e	Commonwealth
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	Dominion
1f89796e-3057-4ac6-884e-ffdaae869948	Commonwealth
14aa356c-908a-4e97-a3d8-c59823a3ac74	Commonwealth
e18c4371-180d-4027-9beb-ea06aca9076c	Dominion
6436abc0-85f9-4cf0-a576-711bf51e53f1	Leshavult
55251217-9566-4372-9052-aecc26c97ec4	Commonwealth
843f65fc-1dec-490d-8dd7-2087927f6ef1	Leshavult
843f65fc-1dec-490d-8dd7-2087927f6ef1	Shades
05a42b1f-a962-47ad-be9b-b564b4239b0d	Dominion
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	Dominion
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	Leshavult
b711afd2-11ef-4214-a2f8-38dbf8ebf054	Dominion
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	Dominion
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	Commonwealth
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	Commonwealth
24192bfb-2cab-42d0-bb27-302c19f7fb7b	Leshavult
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	Dominion
43311cb3-9637-4e02-a936-739078d4b077	Leshavult
51ae6140-30b0-4d7a-8726-fa060964f44d	Commonwealth
f32527b5-6d3d-408e-ba00-8d048737ca7a	Commonwealth
f32527b5-6d3d-408e-ba00-8d048737ca7a	Leshavult
a2a17fec-e781-43c9-90ea-f342da0ae52c	Dominion
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	Dominion
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	Commonwealth
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	Dominion
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	Dominion
54564d71-f101-497c-8515-4dfdd0ac52ca	Dominion
54564d71-f101-497c-8515-4dfdd0ac52ca	Leshavult
ced3a312-6a90-448c-abb9-8f505ad2a06f	Dominion
ced3a312-6a90-448c-abb9-8f505ad2a06f	Shades
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	Leshavult
eec4fb7d-3a4b-4ee3-914e-931589531bad	Dominion
355571fa-9c46-4779-afaa-0b6e52624aae	Commonwealth
9d66943e-609d-42d3-bd3d-ea1a04a5d461	Commonwealth
5be00293-fec6-451a-899e-7874790f1d92	Leshavult
419761bb-14fc-4e54-a697-c55ac69aaeb0	Dominion
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	Dominion
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	Leshavult
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	Commonwealth
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	Leshavult
cf29e43e-6827-4e61-96af-07f5698b2f6a	Dominion
75816018-2182-464d-bc68-fd9e5909da4b	Leshavult
0f733a5b-05a2-462e-8916-fceedf34e202	Dominion
99f443ef-dc99-43e4-b060-1ce0e849c9a0	Commonwealth
99f443ef-dc99-43e4-b060-1ce0e849c9a0	Leshavult
5b21b3fd-8c44-4aaa-83d8-b8337242d015	Commonwealth
5b21b3fd-8c44-4aaa-83d8-b8337242d015	Leshavult
cde09c48-c3c0-4f01-af85-cbdd56707b63	Dominion
cdb923ab-68a2-45f7-b968-fea1bedddd81	Dominion
84aba88d-a34e-4f98-8b27-1a158c8f1f57	Dominion
84aba88d-a34e-4f98-8b27-1a158c8f1f57	Leshavult
057c12d9-97a7-4a2b-b61c-26857f683787	Dominion
057c12d9-97a7-4a2b-b61c-26857f683787	Leshavult
00aa30fa-3119-4499-9aef-4ec6d8b1514c	Dominion
4ce2180b-94e6-4da2-a599-efed26981c10	Dominion
2e0d027d-2222-4de3-a6ea-c35210114936	Shades
347b5285-98a9-44a7-bb2c-d3f262065529	Commonwealth
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	Dominion
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	Leshavult
babe0916-3f66-43f4-9ca7-d796ec524322	Commonwealth
34d5c62b-824d-4c5b-9703-24934e51df9d	Leshavult
3e744701-d87b-4dd8-9241-70f80c690f3e	Leshavult
ca161ec3-8c53-4143-8d2e-eeba2325a333	Commonwealth
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	Commonwealth
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	Leshavult
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	Commonwealth
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	Leshavult
d23eb6e6-df16-4045-b28a-e789cff5dd24	Commonwealth
d23eb6e6-df16-4045-b28a-e789cff5dd24	Leshavult
b8531ea5-65b3-456c-a661-018b2a10f663	Commonwealth
bf242853-7c92-4cbf-9ec5-aa8a185514d9	Leshavult
f4e9b54b-bec0-45a0-abc1-99d43007540e	Leshavult
5656cad3-11d7-444b-8ae5-17d7cefc9491	Leshavult
3c8cfe38-b441-43d6-98df-5b75439bcffe	Leshavult
3c8cfe38-b441-43d6-98df-5b75439bcffe	Shades
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	Shades
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	Dominion
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	Shades
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	Shades
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	Shades
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	Dominion
efa4e895-a827-4c8c-b047-dad641cba2b3	Shades
014b622a-d049-4a14-b4ae-c959848a93e4	Shades
0a017529-c64e-4082-ae0f-a06405ba41cf	Shades
01652708-0ada-4456-a03f-6a478da7363f	Shades
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	Shades
7014eb34-3d8d-490b-b789-704e4490401e	Shades
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Shades
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Commonwealth
0a67af79-f120-4dc7-aaba-0a220f12bf4b	Shades
0a67af79-f120-4dc7-aaba-0a220f12bf4b	Dominion
f962bc25-6509-4305-b071-d26ba42d7170	Shades
ae79052b-8c2a-42fb-a586-2fb55da98aa2	Shades
531297f8-fe91-49a2-a3ee-820aeecac6b2	Shades
0966e873-193e-4426-b4a7-2fb37914f69b	Shades
3a984368-f9eb-4d93-ac1a-78e905b3c631	Shades
b0b157e2-3c8e-488d-8d91-e1fb8093a053	Commonwealth
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	Dominion
95a32762-74ce-498d-af9e-35adedef2578	Shades
a31f9301-6064-4047-91e2-b3140b6bf486	Commonwealth
a31f9301-6064-4047-91e2-b3140b6bf486	Leshavult
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	Shades
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	Shades
8d7f62eb-c809-477a-9351-d47e24e87f99	Dominion
8d7f62eb-c809-477a-9351-d47e24e87f99	Shades
05c9c9b4-debd-444a-83d6-e99c9f1482fc	Commonwealth
5b319a3d-d166-433c-8ed6-67265bb3eb29	Dominion
f779e449-852b-4f41-9958-ff5110959d9d	Shades
971322ba-7f14-4440-862a-54cdade49d68	Commonwealth
\.


--
-- Data for Name: keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.keywords (keyword) FROM stdin;
Faerie
Spirit
Animal
Pirate
Giant
Gnome
Norse
Noble
Rogue
Human
Wizard
Cleric
Goblin
Soldier
Troll
Militia
Mercenary
Cultist
Risen
Treefolk
Faun
Psychopomp
Food
Machine
Aquatic
Elrich
Musician
Familiar
Babeling
Merfolk
\.


--
-- Data for Name: characters_to_keywords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.characters_to_keywords (character_id, keyword) FROM stdin;
28562575-5965-4ffc-a249-276b4ce0bddd	Faerie
28562575-5965-4ffc-a249-276b4ce0bddd	Spirit
b4d7d587-2528-4ecb-bc20-506e872a17ef	Spirit
b4d7d587-2528-4ecb-bc20-506e872a17ef	Animal
b4d7d587-2528-4ecb-bc20-506e872a17ef	Pirate
199f4048-bddf-4c0f-988b-2d52e04724c3	Giant
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	Gnome
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	Animal
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	Norse
2c836ba3-fdc6-4b98-b67a-5e3fd123c997	Noble
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	Gnome
60332bd5-e0e9-4161-b27e-9d13a19fd0fc	Rogue
2408ff3e-c926-4b2f-b025-0ed59b3a0458	Human
2408ff3e-c926-4b2f-b025-0ed59b3a0458	Wizard
2408ff3e-c926-4b2f-b025-0ed59b3a0458	Cleric
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	Faerie
fdf673a6-6a0c-4d0c-99a3-4b28c227a89c	Rogue
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	Faerie
b0de7c86-8cc4-4ad5-81a0-8e9eebf3130f	Pirate
d26da9de-80aa-4944-a4d9-9c58a20a3fab	Goblin
d26da9de-80aa-4944-a4d9-9c58a20a3fab	Soldier
d26da9de-80aa-4944-a4d9-9c58a20a3fab	Animal
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	Gnome
348467a3-9e29-4eb7-bb1a-7cdb9e2b5464	Cleric
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	Human
52b69c3b-94b6-4a16-877a-991aaa8ddbaa	Pirate
9422ce13-7817-483d-b634-e8e1dcd0f910	Goblin
9422ce13-7817-483d-b634-e8e1dcd0f910	Faerie
9422ce13-7817-483d-b634-e8e1dcd0f910	Wizard
cc6db759-9762-4058-8970-d13e91f7aeb3	Faerie
cc6db759-9762-4058-8970-d13e91f7aeb3	Noble
4d2baf43-b3e1-45eb-8f10-a6f02d898616	Troll
4d2baf43-b3e1-45eb-8f10-a6f02d898616	Spirit
4d2baf43-b3e1-45eb-8f10-a6f02d898616	Pirate
887c1786-5a90-4ccb-a330-dd270cfdb5a8	Gnome
887c1786-5a90-4ccb-a330-dd270cfdb5a8	Soldier
887c1786-5a90-4ccb-a330-dd270cfdb5a8	Militia
11923a35-88f4-4775-bf1e-9f76852dea86	Human
11923a35-88f4-4775-bf1e-9f76852dea86	Animal
11923a35-88f4-4775-bf1e-9f76852dea86	Mercenary
8b1de391-4e10-407b-b0fb-c4f29914ae42	Human
8b1de391-4e10-407b-b0fb-c4f29914ae42	Animal
8b1de391-4e10-407b-b0fb-c4f29914ae42	Soldier
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	Faerie
c48c2fc8-24a2-4c14-ba5a-ec4c259fa966	Rogue
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	Goblin
0ee8d3d5-da8f-4fd1-b93b-e2a5709c2d40	Wizard
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	Gnome
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	Noble
83f7ea11-36a9-45cd-b95d-a3d65bdbc015	Militia
c731299b-8f95-4c76-8297-c05ec490e723	Giant
c731299b-8f95-4c76-8297-c05ec490e723	Mercenary
cf031c28-c4f4-4895-b1a6-c809c984c8bb	Gnome
cf031c28-c4f4-4895-b1a6-c809c984c8bb	Cultist
cf031c28-c4f4-4895-b1a6-c809c984c8bb	Rogue
23db2f8f-7c67-474e-8cb1-52b7be9c5404	Goblin
23db2f8f-7c67-474e-8cb1-52b7be9c5404	Wizard
bf402f11-d1d1-4459-90e4-8b63bae331cb	Faerie
bf402f11-d1d1-4459-90e4-8b63bae331cb	Rogue
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	Goblin
a5934f3e-1bb2-4e55-89e4-5edb05ee1ff2	Soldier
3c1913ca-377d-4df9-970d-da4c7d8d7a5c	Faerie
85698bfc-2a32-4761-b4d7-75b0b497b3a7	Faerie
85698bfc-2a32-4761-b4d7-75b0b497b3a7	Soldier
33ef3787-5f30-4b93-8c7c-165f08468edb	Risen
33ef3787-5f30-4b93-8c7c-165f08468edb	Soldier
33ef3787-5f30-4b93-8c7c-165f08468edb	Noble
593322c1-e3b5-4582-b397-dd1cf9e6999b	Human
593322c1-e3b5-4582-b397-dd1cf9e6999b	Soldier
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	Gnome
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	Norse
80a11d7f-ee4d-4373-ac2c-44344ce5f78d	Cleric
9da91dfd-68e5-4f5c-98d9-bc763744490b	Human
9da91dfd-68e5-4f5c-98d9-bc763744490b	Noble
6c4819b1-9aa8-4689-bb29-9efdecc5d346	Troll
6c4819b1-9aa8-4689-bb29-9efdecc5d346	Wizard
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	Human
04db53c8-46bf-4d7c-9fbe-efe98959bfbe	Soldier
b97c6f86-e76b-4a6c-b5ad-c013e79bfca4	Faerie
788fc810-6d12-4523-b33d-1a18d75b77a8	Gnome
788fc810-6d12-4523-b33d-1a18d75b77a8	Militia
788fc810-6d12-4523-b33d-1a18d75b77a8	Animal
082047de-da92-4608-8fae-9edc1d220d61	Goblin
082047de-da92-4608-8fae-9edc1d220d61	Wizard
e6581470-9ac9-46ea-8efb-b8d4379eba11	Faerie
e6581470-9ac9-46ea-8efb-b8d4379eba11	Rogue
b876c0b1-5ba2-4c4b-b05b-eb2eec4adef7	Goblin
8cf109c7-e239-419c-ac98-4cf2eec125d0	Human
8cf109c7-e239-419c-ac98-4cf2eec125d0	Animal
8cf109c7-e239-419c-ac98-4cf2eec125d0	Cultist
2755e8c0-3a45-46cc-b050-c7f511a03e66	Goblin
2755e8c0-3a45-46cc-b050-c7f511a03e66	Soldier
cca09e19-94cd-4491-bf78-f8e86c008c95	Human
cca09e19-94cd-4491-bf78-f8e86c008c95	Soldier
ddae4569-c206-464c-a824-9099aed5a9d2	Faerie
ddae4569-c206-464c-a824-9099aed5a9d2	Wizard
1bcebd15-79f8-4f86-820a-4f4976f76f74	Human
1bcebd15-79f8-4f86-820a-4f4976f76f74	Mercenary
1bcebd15-79f8-4f86-820a-4f4976f76f74	Soldier
46c6c7be-c12b-443c-91b2-691470a09e1e	Gnome
46c6c7be-c12b-443c-91b2-691470a09e1e	Militia
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	Goblin
ad5e2a3d-29f6-4205-b8ff-238508b6b7d8	Wizard
1f89796e-3057-4ac6-884e-ffdaae869948	Gnome
1f89796e-3057-4ac6-884e-ffdaae869948	Militia
14aa356c-908a-4e97-a3d8-c59823a3ac74	Human
14aa356c-908a-4e97-a3d8-c59823a3ac74	Rogue
e18c4371-180d-4027-9beb-ea06aca9076c	Goblin
e18c4371-180d-4027-9beb-ea06aca9076c	Troll
6436abc0-85f9-4cf0-a576-711bf51e53f1	Spirit
6436abc0-85f9-4cf0-a576-711bf51e53f1	Treefolk
55251217-9566-4372-9052-aecc26c97ec4	Human
55251217-9566-4372-9052-aecc26c97ec4	Noble
843f65fc-1dec-490d-8dd7-2087927f6ef1	Treefolk
843f65fc-1dec-490d-8dd7-2087927f6ef1	Spirit
05a42b1f-a962-47ad-be9b-b564b4239b0d	Human
05a42b1f-a962-47ad-be9b-b564b4239b0d	Pirate
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	Human
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	Noble
89fc4ec0-c810-4b53-a8d7-f3275ddbfb70	Animal
b711afd2-11ef-4214-a2f8-38dbf8ebf054	Human
b711afd2-11ef-4214-a2f8-38dbf8ebf054	Noble
ebdc6f24-77ac-4544-b3b4-4d57bfca00e7	Troll
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	Gnome
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	Noble
0b7ace83-616b-42f9-ab8e-48ed1a5a32fc	Norse
1f3c8b13-3b58-49ae-aa05-4c6f66ed06ef	Gnome
24192bfb-2cab-42d0-bb27-302c19f7fb7b	Faun
24192bfb-2cab-42d0-bb27-302c19f7fb7b	Cultist
24192bfb-2cab-42d0-bb27-302c19f7fb7b	Cleric
f99da925-6af3-4c7a-8c52-0d4aab0ed8af	Troll
43311cb3-9637-4e02-a936-739078d4b077	Faun
43311cb3-9637-4e02-a936-739078d4b077	Spirit
51ae6140-30b0-4d7a-8726-fa060964f44d	Human
f32527b5-6d3d-408e-ba00-8d048737ca7a	Human
f32527b5-6d3d-408e-ba00-8d048737ca7a	Cultist
f32527b5-6d3d-408e-ba00-8d048737ca7a	Cleric
a2a17fec-e781-43c9-90ea-f342da0ae52c	Goblin
a2a17fec-e781-43c9-90ea-f342da0ae52c	Pirate
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	Goblin
b5b516cb-5236-4cc7-8bce-d18185d6c1d7	Noble
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	Gnome
c4a8bd01-08d2-4af9-bbe5-5980bcf86529	Rogue
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	Goblin
d152ceab-9d01-49a7-8173-e7da7bd0d1b2	Pirate
54564d71-f101-497c-8515-4dfdd0ac52ca	Human
54564d71-f101-497c-8515-4dfdd0ac52ca	Noble
ced3a312-6a90-448c-abb9-8f505ad2a06f	Goblin
ced3a312-6a90-448c-abb9-8f505ad2a06f	Rogue
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	Faun
c3bbc45f-c5e3-4521-98a3-e8d8788f2746	Wizard
eec4fb7d-3a4b-4ee3-914e-931589531bad	Goblin
eec4fb7d-3a4b-4ee3-914e-931589531bad	Pirate
355571fa-9c46-4779-afaa-0b6e52624aae	Gnome
355571fa-9c46-4779-afaa-0b6e52624aae	Rogue
355571fa-9c46-4779-afaa-0b6e52624aae	Norse
9d66943e-609d-42d3-bd3d-ea1a04a5d461	Giant
9d66943e-609d-42d3-bd3d-ea1a04a5d461	Mercenary
9d66943e-609d-42d3-bd3d-ea1a04a5d461	Norse
5be00293-fec6-451a-899e-7874790f1d92	Faun
419761bb-14fc-4e54-a697-c55ac69aaeb0	Faerie
419761bb-14fc-4e54-a697-c55ac69aaeb0	Rogue
419761bb-14fc-4e54-a697-c55ac69aaeb0	Wizard
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	Faerie
da45d6e6-f44c-4408-9497-8a8f8f3b7c17	Cultist
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	Faun
d7cb3777-70c7-4a71-a05e-f5890fa7c9dd	Soldier
cf29e43e-6827-4e61-96af-07f5698b2f6a	Animal
cf29e43e-6827-4e61-96af-07f5698b2f6a	Goblin
cf29e43e-6827-4e61-96af-07f5698b2f6a	Pirate
75816018-2182-464d-bc68-fd9e5909da4b	Faun
75816018-2182-464d-bc68-fd9e5909da4b	Cultist
0f733a5b-05a2-462e-8916-fceedf34e202	Faerie
0f733a5b-05a2-462e-8916-fceedf34e202	Noble
99f443ef-dc99-43e4-b060-1ce0e849c9a0	Giant
99f443ef-dc99-43e4-b060-1ce0e849c9a0	Cultist
5b21b3fd-8c44-4aaa-83d8-b8337242d015	Faun
5b21b3fd-8c44-4aaa-83d8-b8337242d015	Wizard
cde09c48-c3c0-4f01-af85-cbdd56707b63	Goblin
cde09c48-c3c0-4f01-af85-cbdd56707b63	Soldier
cdb923ab-68a2-45f7-b968-fea1bedddd81	Animal
cdb923ab-68a2-45f7-b968-fea1bedddd81	Pirate
84aba88d-a34e-4f98-8b27-1a158c8f1f57	Spirit
057c12d9-97a7-4a2b-b61c-26857f683787	Human
057c12d9-97a7-4a2b-b61c-26857f683787	Noble
057c12d9-97a7-4a2b-b61c-26857f683787	Spirit
00aa30fa-3119-4499-9aef-4ec6d8b1514c	Goblin
4ce2180b-94e6-4da2-a599-efed26981c10	Faerie
4ce2180b-94e6-4da2-a599-efed26981c10	Animal
4ce2180b-94e6-4da2-a599-efed26981c10	Soldier
2e0d027d-2222-4de3-a6ea-c35210114936	Psychopomp
2e0d027d-2222-4de3-a6ea-c35210114936	Food
347b5285-98a9-44a7-bb2c-d3f262065529	Norse
347b5285-98a9-44a7-bb2c-d3f262065529	Gnome
347b5285-98a9-44a7-bb2c-d3f262065529	Mercenary
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	Human
fd93b75d-7ad3-4c10-a4e7-922878c66c5a	Rogue
ace8c93d-bfcd-4fcf-80e3-ecdab5880eb9	Spirit
babe0916-3f66-43f4-9ca7-d796ec524322	Human
babe0916-3f66-43f4-9ca7-d796ec524322	Cleric
34d5c62b-824d-4c5b-9703-24934e51df9d	Spirit
3e744701-d87b-4dd8-9241-70f80c690f3e	Spirit
ca161ec3-8c53-4143-8d2e-eeba2325a333	Gnome
ca161ec3-8c53-4143-8d2e-eeba2325a333	Machine
ca161ec3-8c53-4143-8d2e-eeba2325a333	Militia
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	Faun
0fe0c1df-68f4-44fb-b5d0-2d38c8fb796c	Soldier
68d2fdd3-a2b7-44fa-8bc4-842a5a9141ba	Animal
d23eb6e6-df16-4045-b28a-e789cff5dd24	Faun
d23eb6e6-df16-4045-b28a-e789cff5dd24	Cleric
b8531ea5-65b3-456c-a661-018b2a10f663	Human
b8531ea5-65b3-456c-a661-018b2a10f663	Cleric
bf242853-7c92-4cbf-9ec5-aa8a185514d9	Spirit
f4e9b54b-bec0-45a0-abc1-99d43007540e	Treefolk
f4e9b54b-bec0-45a0-abc1-99d43007540e	Spirit
5656cad3-11d7-444b-8ae5-17d7cefc9491	Human
5656cad3-11d7-444b-8ae5-17d7cefc9491	Cultist
5656cad3-11d7-444b-8ae5-17d7cefc9491	Cleric
3c8cfe38-b441-43d6-98df-5b75439bcffe	Faun
3c8cfe38-b441-43d6-98df-5b75439bcffe	Spirit
43aaf65c-8abc-43dc-8e0e-fed2ba15a917	Spirit
c1af8ded-b8f4-4bc6-b6e1-99d05c0b818f	Spirit
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	Psychopomp
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	Animal
4b1a42ff-4aa6-4ebe-8b73-52c6c62d0931	Soldier
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	Human
8bd17362-47c0-4b68-aea1-8c1fd3fdd1d5	Rogue
efa4e895-a827-4c8c-b047-dad641cba2b3	Psychopomp
efa4e895-a827-4c8c-b047-dad641cba2b3	Animal
efa4e895-a827-4c8c-b047-dad641cba2b3	Aquatic
014b622a-d049-4a14-b4ae-c959848a93e4	Spirit
014b622a-d049-4a14-b4ae-c959848a93e4	Elrich
014b622a-d049-4a14-b4ae-c959848a93e4	Noble
0a017529-c64e-4082-ae0f-a06405ba41cf	Risen
0a017529-c64e-4082-ae0f-a06405ba41cf	Soldier
01652708-0ada-4456-a03f-6a478da7363f	Psychopomp
01652708-0ada-4456-a03f-6a478da7363f	Soldier
01652708-0ada-4456-a03f-6a478da7363f	Musician
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	Psychopomp
c7e297e1-8e3e-4f8e-b5f4-b1be146db893	Familiar
7014eb34-3d8d-490b-b789-704e4490401e	Psychopomp
7014eb34-3d8d-490b-b789-704e4490401e	Familiar
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Risen
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Soldier
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Giant
6b22977d-b28c-481a-8f3e-8386a8df2e9f	Norse
0a67af79-f120-4dc7-aaba-0a220f12bf4b	Risen
0a67af79-f120-4dc7-aaba-0a220f12bf4b	Animal
0a67af79-f120-4dc7-aaba-0a220f12bf4b	Noble
f962bc25-6509-4305-b071-d26ba42d7170	Spirit
ae79052b-8c2a-42fb-a586-2fb55da98aa2	Spirit
531297f8-fe91-49a2-a3ee-820aeecac6b2	Risen
0966e873-193e-4426-b4a7-2fb37914f69b	Psychopomp
0966e873-193e-4426-b4a7-2fb37914f69b	Babeling
3a984368-f9eb-4d93-ac1a-78e905b3c631	Psychopomp
3a984368-f9eb-4d93-ac1a-78e905b3c631	Babeling
b0b157e2-3c8e-488d-8d91-e1fb8093a053	Human
b0b157e2-3c8e-488d-8d91-e1fb8093a053	Noble
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	Human
617ae5a9-9851-49b1-9eae-f0aaa59bfbab	Rogue
95a32762-74ce-498d-af9e-35adedef2578	Psychopomp
95a32762-74ce-498d-af9e-35adedef2578	Babeling
a31f9301-6064-4047-91e2-b3140b6bf486	Animal
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	Risen
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	Cleric
bbd9fd06-68f8-4d7e-bc48-cc140406d81b	Soldier
c1cf0b03-9fb3-4c3c-8cd4-2c6ab03fa190	Spirit
8d7f62eb-c809-477a-9351-d47e24e87f99	Spirit
8d7f62eb-c809-477a-9351-d47e24e87f99	Pirate
05c9c9b4-debd-444a-83d6-e99c9f1482fc	Human
05c9c9b4-debd-444a-83d6-e99c9f1482fc	Mercenary
5b319a3d-d166-433c-8ed6-67265bb3eb29	Goblin
5b319a3d-d166-433c-8ed6-67265bb3eb29	Machine
5b319a3d-d166-433c-8ed6-67265bb3eb29	Animal
f779e449-852b-4f41-9958-ff5110959d9d	Spirit
f779e449-852b-4f41-9958-ff5110959d9d	Merfolk
971322ba-7f14-4440-862a-54cdade49d68	Gnome
971322ba-7f14-4440-862a-54cdade49d68	Machine
\.


--
-- Data for Name: damage_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.damage_types (damage_type) FROM stdin;
Slicing
Piercing
Impact
Magical
\.


--
-- Data for Name: melee_moves_to_damage_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.melee_moves_to_damage_types (melee_move_id, damage_type) FROM stdin;
10916f22-e020-4161-bade-ca227a3db51e	Impact
10916f22-e020-4161-bade-ca227a3db51e	Slicing
20b29022-920e-40f5-bb31-81bf895bb6f3	Piercing
67dab184-4881-4710-b486-0b22594b0649	Slicing
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Slicing
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Piercing
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	Impact
51916402-3cbc-45ad-86aa-700c3b0d7e86	Slicing
51916402-3cbc-45ad-86aa-700c3b0d7e86	Magical
08971624-1664-4268-a825-1cdad8416572	Impact
98039bbd-b1ab-40a7-94d3-c936454b1ace	Impact
ff6388e9-8615-4574-84ff-6ba64e086383	Magical
16d172bf-8e7d-4f9f-8560-79c0957eee88	Impact
492a69a0-715b-4838-8c3d-f7e851c33ea5	Impact
7a3c5c03-6286-4b32-aff4-9d1930eedd99	Piercing
13a40511-8686-49cb-9c6b-cc290fa38186	Slicing
13a40511-8686-49cb-9c6b-cc290fa38186	Piercing
efb10611-d7d0-4a90-b87a-9d55d4d2a232	Impact
66470247-2367-426d-b990-07292515613a	Piercing
854f99c4-86cd-4e20-9ea5-d048c8fc0958	Piercing
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	Impact
c84e62a9-1b2b-4298-ae50-16a15ae278c8	Impact
5230c787-3058-46bd-a098-85be7615ce8e	Impact
3a049366-1f6a-43a0-a22c-4506d832b437	Piercing
f22205ad-d2a6-481d-b531-47e9949047cd	Piercing
5a0d50a1-2587-401a-ab15-ceea3e0e4892	Impact
50ce11f0-7a21-48ad-86d0-a412f925a40a	Impact
e9471f76-bd2a-4643-90c5-5d2d61f214c6	Slicing
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	Magical
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	Impact
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	Slicing
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	Impact
037effd3-1eb8-4966-acae-660cb98d2458	Magical
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	Impact
80392f73-75f7-41f4-9df6-625936105f15	Piercing
80392f73-75f7-41f4-9df6-625936105f15	Impact
2c70346b-9944-4574-a295-ff1b30caca03	Impact
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	Slicing
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	Impact
61d18ef6-d477-48b0-92e9-d0a1338074b8	Slicing
646864f1-ca8f-4ad8-8851-d95801acd624	Impact
445073c0-87b2-4932-89e6-f6fa5a96b9cb	Piercing
72388572-fbff-42ac-91ed-d8955e6ea3e7	Impact
cebf5769-948f-483c-a153-f1015698e75d	Slicing
bdadb0c7-6bd0-492f-83cc-5b128af69a58	Piercing
e410d649-4a63-4f88-a124-5b3bd124258d	Piercing
6756b259-15a6-4a5c-83c3-f5b9037845c8	Impact
a899a757-3184-4a75-b492-d2fae406ea6a	Slicing
b201510a-0bb2-49d2-9aa0-81a9136f66eb	Piercing
e81e324e-9511-4080-a902-c792c8b7b585	Impact
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	Impact
523efc1f-ff14-4318-89d1-0f2cf88d5112	Magical
5433cdc0-490c-4eec-8b55-0b6f06acaf77	Impact
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	Impact
7ceb647b-10b5-47dc-98fd-9c4511db927b	Impact
17fba3f5-72d2-4e33-a210-f5b2451431ce	Piercing
24b223ba-9167-4915-9c47-b6f5a5a225a3	Piercing
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	Piercing
06ad423d-0ac6-459f-b291-e04067b219cf	Slicing
06ad423d-0ac6-459f-b291-e04067b219cf	Impact
6de7d5e1-af52-40d0-a481-72ebf2a34515	Impact
5b3dfea5-2712-4be9-afe6-7fc86f455933	Impact
b3011812-bfcb-4de9-9e19-2c23833e06be	Impact
c15fbffc-7a53-444d-8925-187e7146de54	Slicing
c15fbffc-7a53-444d-8925-187e7146de54	Piercing
c15fbffc-7a53-444d-8925-187e7146de54	Impact
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	Slicing
b602525c-c512-4561-9c3c-bbd909dd0718	Magical
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	Impact
172ccc68-f021-42ad-9777-ad163d8faf01	Impact
16557732-3bb4-4bbf-b277-e1b7704384e7	Piercing
af99cd73-9ad1-4a5f-8cee-928b09d31470	Impact
95650ea5-b422-41ef-a1d3-80ed4e145a7e	Slicing
d6c97f5a-05d5-4871-880c-3092969dc1cb	Impact
e0e5474d-b5fc-45dd-8385-396aa4905cd1	Impact
869cfe9f-2190-4cb8-87db-6fd9190de6bd	Slicing
\.


--
-- Data for Name: melee_outcomes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.melee_outcomes (melee_move_id, opposing_move_id, damage, is_counter) FROM stdin;
1f885eaf-5970-4947-addf-5dd4320152ca	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
1f885eaf-5970-4947-addf-5dd4320152ca	10916f22-e020-4161-bade-ca227a3db51e	\N	t
1f885eaf-5970-4947-addf-5dd4320152ca	67dab184-4881-4710-b486-0b22594b0649	\N	f
1f885eaf-5970-4947-addf-5dd4320152ca	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
1f885eaf-5970-4947-addf-5dd4320152ca	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
1f885eaf-5970-4947-addf-5dd4320152ca	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
10916f22-e020-4161-bade-ca227a3db51e	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
10916f22-e020-4161-bade-ca227a3db51e	10916f22-e020-4161-bade-ca227a3db51e	0	f
10916f22-e020-4161-bade-ca227a3db51e	67dab184-4881-4710-b486-0b22594b0649	3	f
10916f22-e020-4161-bade-ca227a3db51e	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
10916f22-e020-4161-bade-ca227a3db51e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
10916f22-e020-4161-bade-ca227a3db51e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
20b29022-920e-40f5-bb31-81bf895bb6f3	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
20b29022-920e-40f5-bb31-81bf895bb6f3	10916f22-e020-4161-bade-ca227a3db51e	2	f
20b29022-920e-40f5-bb31-81bf895bb6f3	67dab184-4881-4710-b486-0b22594b0649	\N	f
20b29022-920e-40f5-bb31-81bf895bb6f3	20b29022-920e-40f5-bb31-81bf895bb6f3	3	f
20b29022-920e-40f5-bb31-81bf895bb6f3	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
20b29022-920e-40f5-bb31-81bf895bb6f3	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
67dab184-4881-4710-b486-0b22594b0649	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
67dab184-4881-4710-b486-0b22594b0649	10916f22-e020-4161-bade-ca227a3db51e	2	f
67dab184-4881-4710-b486-0b22594b0649	67dab184-4881-4710-b486-0b22594b0649	0	f
67dab184-4881-4710-b486-0b22594b0649	20b29022-920e-40f5-bb31-81bf895bb6f3	0	t
67dab184-4881-4710-b486-0b22594b0649	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
67dab184-4881-4710-b486-0b22594b0649	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
7f40c8fe-d847-4694-a09a-acf689fd5d2d	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
7f40c8fe-d847-4694-a09a-acf689fd5d2d	10916f22-e020-4161-bade-ca227a3db51e	\N	f
7f40c8fe-d847-4694-a09a-acf689fd5d2d	67dab184-4881-4710-b486-0b22594b0649	\N	f
7f40c8fe-d847-4694-a09a-acf689fd5d2d	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
7f40c8fe-d847-4694-a09a-acf689fd5d2d	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
7f40c8fe-d847-4694-a09a-acf689fd5d2d	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	t
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	10916f22-e020-4161-bade-ca227a3db51e	1	f
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	67dab184-4881-4710-b486-0b22594b0649	2	f
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
f3ff3c3a-5aa6-4092-ab66-be277b9294a1	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
51916402-3cbc-45ad-86aa-700c3b0d7e86	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
51916402-3cbc-45ad-86aa-700c3b0d7e86	10916f22-e020-4161-bade-ca227a3db51e	1	f
51916402-3cbc-45ad-86aa-700c3b0d7e86	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
51916402-3cbc-45ad-86aa-700c3b0d7e86	67dab184-4881-4710-b486-0b22594b0649	2	f
51916402-3cbc-45ad-86aa-700c3b0d7e86	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
51916402-3cbc-45ad-86aa-700c3b0d7e86	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
08971624-1664-4268-a825-1cdad8416572	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
08971624-1664-4268-a825-1cdad8416572	10916f22-e020-4161-bade-ca227a3db51e	1	f
08971624-1664-4268-a825-1cdad8416572	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
08971624-1664-4268-a825-1cdad8416572	67dab184-4881-4710-b486-0b22594b0649	1	f
08971624-1664-4268-a825-1cdad8416572	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
08971624-1664-4268-a825-1cdad8416572	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
98039bbd-b1ab-40a7-94d3-c936454b1ace	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
98039bbd-b1ab-40a7-94d3-c936454b1ace	10916f22-e020-4161-bade-ca227a3db51e	1	f
98039bbd-b1ab-40a7-94d3-c936454b1ace	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
98039bbd-b1ab-40a7-94d3-c936454b1ace	67dab184-4881-4710-b486-0b22594b0649	1	f
98039bbd-b1ab-40a7-94d3-c936454b1ace	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
98039bbd-b1ab-40a7-94d3-c936454b1ace	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	10916f22-e020-4161-bade-ca227a3db51e	\N	f
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	67dab184-4881-4710-b486-0b22594b0649	\N	f
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
f3a613d7-786e-4bf4-aa8b-bfe76cc21dcb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
ff6388e9-8615-4574-84ff-6ba64e086383	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
ff6388e9-8615-4574-84ff-6ba64e086383	10916f22-e020-4161-bade-ca227a3db51e	2	f
ff6388e9-8615-4574-84ff-6ba64e086383	20b29022-920e-40f5-bb31-81bf895bb6f3	3	f
ff6388e9-8615-4574-84ff-6ba64e086383	67dab184-4881-4710-b486-0b22594b0649	\N	f
ff6388e9-8615-4574-84ff-6ba64e086383	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
ff6388e9-8615-4574-84ff-6ba64e086383	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
1c70e8da-ee94-4006-8a76-3f93da6b521a	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
1c70e8da-ee94-4006-8a76-3f93da6b521a	10916f22-e020-4161-bade-ca227a3db51e	\N	f
1c70e8da-ee94-4006-8a76-3f93da6b521a	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
1c70e8da-ee94-4006-8a76-3f93da6b521a	67dab184-4881-4710-b486-0b22594b0649	\N	f
1c70e8da-ee94-4006-8a76-3f93da6b521a	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
1c70e8da-ee94-4006-8a76-3f93da6b521a	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
16d172bf-8e7d-4f9f-8560-79c0957eee88	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
16d172bf-8e7d-4f9f-8560-79c0957eee88	10916f22-e020-4161-bade-ca227a3db51e	2	f
16d172bf-8e7d-4f9f-8560-79c0957eee88	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
16d172bf-8e7d-4f9f-8560-79c0957eee88	67dab184-4881-4710-b486-0b22594b0649	\N	f
16d172bf-8e7d-4f9f-8560-79c0957eee88	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
16d172bf-8e7d-4f9f-8560-79c0957eee88	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
70faed2f-2831-4c6a-a774-9dbb490c374e	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
70faed2f-2831-4c6a-a774-9dbb490c374e	10916f22-e020-4161-bade-ca227a3db51e	\N	f
70faed2f-2831-4c6a-a774-9dbb490c374e	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
70faed2f-2831-4c6a-a774-9dbb490c374e	67dab184-4881-4710-b486-0b22594b0649	\N	f
70faed2f-2831-4c6a-a774-9dbb490c374e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
70faed2f-2831-4c6a-a774-9dbb490c374e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
492a69a0-715b-4838-8c3d-f7e851c33ea5	1f885eaf-5970-4947-addf-5dd4320152ca	3	f
492a69a0-715b-4838-8c3d-f7e851c33ea5	10916f22-e020-4161-bade-ca227a3db51e	3	f
492a69a0-715b-4838-8c3d-f7e851c33ea5	20b29022-920e-40f5-bb31-81bf895bb6f3	3	f
492a69a0-715b-4838-8c3d-f7e851c33ea5	67dab184-4881-4710-b486-0b22594b0649	3	f
492a69a0-715b-4838-8c3d-f7e851c33ea5	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
492a69a0-715b-4838-8c3d-f7e851c33ea5	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
c8045c1a-52bc-4c3a-9c34-6c01455a617e	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
c8045c1a-52bc-4c3a-9c34-6c01455a617e	10916f22-e020-4161-bade-ca227a3db51e	\N	f
c8045c1a-52bc-4c3a-9c34-6c01455a617e	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
c8045c1a-52bc-4c3a-9c34-6c01455a617e	67dab184-4881-4710-b486-0b22594b0649	\N	f
c8045c1a-52bc-4c3a-9c34-6c01455a617e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
c8045c1a-52bc-4c3a-9c34-6c01455a617e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
7a3c5c03-6286-4b32-aff4-9d1930eedd99	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
7a3c5c03-6286-4b32-aff4-9d1930eedd99	10916f22-e020-4161-bade-ca227a3db51e	3	f
7a3c5c03-6286-4b32-aff4-9d1930eedd99	20b29022-920e-40f5-bb31-81bf895bb6f3	4	f
7a3c5c03-6286-4b32-aff4-9d1930eedd99	67dab184-4881-4710-b486-0b22594b0649	\N	f
7a3c5c03-6286-4b32-aff4-9d1930eedd99	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
7a3c5c03-6286-4b32-aff4-9d1930eedd99	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
13a40511-8686-49cb-9c6b-cc290fa38186	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
13a40511-8686-49cb-9c6b-cc290fa38186	10916f22-e020-4161-bade-ca227a3db51e	1	f
13a40511-8686-49cb-9c6b-cc290fa38186	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
13a40511-8686-49cb-9c6b-cc290fa38186	67dab184-4881-4710-b486-0b22594b0649	2	f
13a40511-8686-49cb-9c6b-cc290fa38186	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
13a40511-8686-49cb-9c6b-cc290fa38186	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
efb10611-d7d0-4a90-b87a-9d55d4d2a232	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
efb10611-d7d0-4a90-b87a-9d55d4d2a232	10916f22-e020-4161-bade-ca227a3db51e	2	f
efb10611-d7d0-4a90-b87a-9d55d4d2a232	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
efb10611-d7d0-4a90-b87a-9d55d4d2a232	67dab184-4881-4710-b486-0b22594b0649	\N	f
efb10611-d7d0-4a90-b87a-9d55d4d2a232	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
efb10611-d7d0-4a90-b87a-9d55d4d2a232	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
7885e95b-96b6-4a84-b531-d557475a6813	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
7885e95b-96b6-4a84-b531-d557475a6813	10916f22-e020-4161-bade-ca227a3db51e	\N	f
7885e95b-96b6-4a84-b531-d557475a6813	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
7885e95b-96b6-4a84-b531-d557475a6813	67dab184-4881-4710-b486-0b22594b0649	\N	f
7885e95b-96b6-4a84-b531-d557475a6813	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
7885e95b-96b6-4a84-b531-d557475a6813	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
66470247-2367-426d-b990-07292515613a	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
66470247-2367-426d-b990-07292515613a	10916f22-e020-4161-bade-ca227a3db51e	2	f
66470247-2367-426d-b990-07292515613a	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
66470247-2367-426d-b990-07292515613a	67dab184-4881-4710-b486-0b22594b0649	1	f
66470247-2367-426d-b990-07292515613a	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
66470247-2367-426d-b990-07292515613a	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
854f99c4-86cd-4e20-9ea5-d048c8fc0958	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
854f99c4-86cd-4e20-9ea5-d048c8fc0958	10916f22-e020-4161-bade-ca227a3db51e	2	f
854f99c4-86cd-4e20-9ea5-d048c8fc0958	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
854f99c4-86cd-4e20-9ea5-d048c8fc0958	67dab184-4881-4710-b486-0b22594b0649	1	f
854f99c4-86cd-4e20-9ea5-d048c8fc0958	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
854f99c4-86cd-4e20-9ea5-d048c8fc0958	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	10916f22-e020-4161-bade-ca227a3db51e	2	f
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	67dab184-4881-4710-b486-0b22594b0649	2	f
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
6da7d0a3-af72-4cc9-ad3e-3e2a1e1f4593	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
c84e62a9-1b2b-4298-ae50-16a15ae278c8	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
c84e62a9-1b2b-4298-ae50-16a15ae278c8	10916f22-e020-4161-bade-ca227a3db51e	1	f
c84e62a9-1b2b-4298-ae50-16a15ae278c8	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
c84e62a9-1b2b-4298-ae50-16a15ae278c8	67dab184-4881-4710-b486-0b22594b0649	1	f
c84e62a9-1b2b-4298-ae50-16a15ae278c8	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
c84e62a9-1b2b-4298-ae50-16a15ae278c8	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
5230c787-3058-46bd-a098-85be7615ce8e	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
5230c787-3058-46bd-a098-85be7615ce8e	10916f22-e020-4161-bade-ca227a3db51e	1	f
5230c787-3058-46bd-a098-85be7615ce8e	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
5230c787-3058-46bd-a098-85be7615ce8e	67dab184-4881-4710-b486-0b22594b0649	2	f
5230c787-3058-46bd-a098-85be7615ce8e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
5230c787-3058-46bd-a098-85be7615ce8e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
745d74d7-2a66-4472-b438-6236f3381476	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
745d74d7-2a66-4472-b438-6236f3381476	10916f22-e020-4161-bade-ca227a3db51e	\N	f
745d74d7-2a66-4472-b438-6236f3381476	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
745d74d7-2a66-4472-b438-6236f3381476	67dab184-4881-4710-b486-0b22594b0649	\N	f
745d74d7-2a66-4472-b438-6236f3381476	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
745d74d7-2a66-4472-b438-6236f3381476	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
3a049366-1f6a-43a0-a22c-4506d832b437	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
3a049366-1f6a-43a0-a22c-4506d832b437	10916f22-e020-4161-bade-ca227a3db51e	3	f
3a049366-1f6a-43a0-a22c-4506d832b437	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
3a049366-1f6a-43a0-a22c-4506d832b437	67dab184-4881-4710-b486-0b22594b0649	1	f
3a049366-1f6a-43a0-a22c-4506d832b437	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	0	f
3a049366-1f6a-43a0-a22c-4506d832b437	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
f22205ad-d2a6-481d-b531-47e9949047cd	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
f22205ad-d2a6-481d-b531-47e9949047cd	10916f22-e020-4161-bade-ca227a3db51e	3	f
f22205ad-d2a6-481d-b531-47e9949047cd	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
f22205ad-d2a6-481d-b531-47e9949047cd	67dab184-4881-4710-b486-0b22594b0649	3	f
f22205ad-d2a6-481d-b531-47e9949047cd	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
f22205ad-d2a6-481d-b531-47e9949047cd	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
5a0d50a1-2587-401a-ab15-ceea3e0e4892	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
5a0d50a1-2587-401a-ab15-ceea3e0e4892	10916f22-e020-4161-bade-ca227a3db51e	1	f
5a0d50a1-2587-401a-ab15-ceea3e0e4892	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
5a0d50a1-2587-401a-ab15-ceea3e0e4892	67dab184-4881-4710-b486-0b22594b0649	3	f
5a0d50a1-2587-401a-ab15-ceea3e0e4892	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
5a0d50a1-2587-401a-ab15-ceea3e0e4892	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
398a36db-81a2-4c47-b5ff-077b99541104	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
398a36db-81a2-4c47-b5ff-077b99541104	10916f22-e020-4161-bade-ca227a3db51e	\N	f
398a36db-81a2-4c47-b5ff-077b99541104	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
398a36db-81a2-4c47-b5ff-077b99541104	67dab184-4881-4710-b486-0b22594b0649	\N	f
398a36db-81a2-4c47-b5ff-077b99541104	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
398a36db-81a2-4c47-b5ff-077b99541104	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
7faee8be-0573-4d4d-a871-7c76c2735f43	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
7faee8be-0573-4d4d-a871-7c76c2735f43	10916f22-e020-4161-bade-ca227a3db51e	\N	f
7faee8be-0573-4d4d-a871-7c76c2735f43	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
7faee8be-0573-4d4d-a871-7c76c2735f43	67dab184-4881-4710-b486-0b22594b0649	\N	f
7faee8be-0573-4d4d-a871-7c76c2735f43	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
7faee8be-0573-4d4d-a871-7c76c2735f43	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
50ce11f0-7a21-48ad-86d0-a412f925a40a	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
50ce11f0-7a21-48ad-86d0-a412f925a40a	10916f22-e020-4161-bade-ca227a3db51e	\N	f
50ce11f0-7a21-48ad-86d0-a412f925a40a	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
50ce11f0-7a21-48ad-86d0-a412f925a40a	67dab184-4881-4710-b486-0b22594b0649	\N	f
50ce11f0-7a21-48ad-86d0-a412f925a40a	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
50ce11f0-7a21-48ad-86d0-a412f925a40a	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
1d803948-4382-4f00-8482-260f236189cb	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
1d803948-4382-4f00-8482-260f236189cb	10916f22-e020-4161-bade-ca227a3db51e	\N	f
1d803948-4382-4f00-8482-260f236189cb	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
1d803948-4382-4f00-8482-260f236189cb	67dab184-4881-4710-b486-0b22594b0649	\N	f
1d803948-4382-4f00-8482-260f236189cb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
1d803948-4382-4f00-8482-260f236189cb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	10916f22-e020-4161-bade-ca227a3db51e	\N	f
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	67dab184-4881-4710-b486-0b22594b0649	\N	f
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
baba76bf-7c59-48ec-a4c6-a0ae94c4b791	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
e9471f76-bd2a-4643-90c5-5d2d61f214c6	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
e9471f76-bd2a-4643-90c5-5d2d61f214c6	10916f22-e020-4161-bade-ca227a3db51e	2	f
e9471f76-bd2a-4643-90c5-5d2d61f214c6	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
e9471f76-bd2a-4643-90c5-5d2d61f214c6	67dab184-4881-4710-b486-0b22594b0649	3	f
e9471f76-bd2a-4643-90c5-5d2d61f214c6	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
e9471f76-bd2a-4643-90c5-5d2d61f214c6	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	1f885eaf-5970-4947-addf-5dd4320152ca	3	f
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	10916f22-e020-4161-bade-ca227a3db51e	3	f
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	20b29022-920e-40f5-bb31-81bf895bb6f3	3	f
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	67dab184-4881-4710-b486-0b22594b0649	\N	f
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
8b5e693b-9b7d-4ffc-bb15-d820f09d842e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	3	f
bf1688c9-4817-420a-8856-32354f61dcbd	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
bf1688c9-4817-420a-8856-32354f61dcbd	10916f22-e020-4161-bade-ca227a3db51e	\N	f
bf1688c9-4817-420a-8856-32354f61dcbd	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
bf1688c9-4817-420a-8856-32354f61dcbd	67dab184-4881-4710-b486-0b22594b0649	\N	f
bf1688c9-4817-420a-8856-32354f61dcbd	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
bf1688c9-4817-420a-8856-32354f61dcbd	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	10916f22-e020-4161-bade-ca227a3db51e	\N	f
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	67dab184-4881-4710-b486-0b22594b0649	\N	f
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
1b6d7a08-a788-4c6d-aea7-a81cbf5f9e0f	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	10916f22-e020-4161-bade-ca227a3db51e	3	f
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	20b29022-920e-40f5-bb31-81bf895bb6f3	0	t
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	67dab184-4881-4710-b486-0b22594b0649	1	f
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
b5cc7935-d250-4fc3-a003-a0b0e06ee9ee	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
b5c3c57c-4262-4250-937c-a18b366e5f97	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
b5c3c57c-4262-4250-937c-a18b366e5f97	10916f22-e020-4161-bade-ca227a3db51e	\N	f
b5c3c57c-4262-4250-937c-a18b366e5f97	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
b5c3c57c-4262-4250-937c-a18b366e5f97	67dab184-4881-4710-b486-0b22594b0649	\N	f
b5c3c57c-4262-4250-937c-a18b366e5f97	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
b5c3c57c-4262-4250-937c-a18b366e5f97	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
30fa4220-29db-44aa-83ce-5eb2886ee4d1	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
30fa4220-29db-44aa-83ce-5eb2886ee4d1	10916f22-e020-4161-bade-ca227a3db51e	\N	f
30fa4220-29db-44aa-83ce-5eb2886ee4d1	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
30fa4220-29db-44aa-83ce-5eb2886ee4d1	67dab184-4881-4710-b486-0b22594b0649	\N	f
30fa4220-29db-44aa-83ce-5eb2886ee4d1	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
30fa4220-29db-44aa-83ce-5eb2886ee4d1	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
1f829ca5-3b6d-4741-837e-bd6e23da97f3	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
1f829ca5-3b6d-4741-837e-bd6e23da97f3	10916f22-e020-4161-bade-ca227a3db51e	\N	f
1f829ca5-3b6d-4741-837e-bd6e23da97f3	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
1f829ca5-3b6d-4741-837e-bd6e23da97f3	67dab184-4881-4710-b486-0b22594b0649	\N	f
1f829ca5-3b6d-4741-837e-bd6e23da97f3	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
1f829ca5-3b6d-4741-837e-bd6e23da97f3	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	10916f22-e020-4161-bade-ca227a3db51e	1	f
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	67dab184-4881-4710-b486-0b22594b0649	2	f
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
d2751d3c-8e95-4c19-bd77-573c6b9a2f63	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	10916f22-e020-4161-bade-ca227a3db51e	1	f
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	67dab184-4881-4710-b486-0b22594b0649	1	f
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
3c1b0779-c421-43ff-b6b0-42a5c4276d8a	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
037effd3-1eb8-4966-acae-660cb98d2458	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
037effd3-1eb8-4966-acae-660cb98d2458	10916f22-e020-4161-bade-ca227a3db51e	3	f
037effd3-1eb8-4966-acae-660cb98d2458	20b29022-920e-40f5-bb31-81bf895bb6f3	3	f
037effd3-1eb8-4966-acae-660cb98d2458	67dab184-4881-4710-b486-0b22594b0649	2	f
037effd3-1eb8-4966-acae-660cb98d2458	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
037effd3-1eb8-4966-acae-660cb98d2458	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	10916f22-e020-4161-bade-ca227a3db51e	2	f
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	67dab184-4881-4710-b486-0b22594b0649	2	f
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
04ebbdbf-0637-4b7e-9388-fc7eb5f0a042	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	10916f22-e020-4161-bade-ca227a3db51e	\N	f
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	67dab184-4881-4710-b486-0b22594b0649	\N	f
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
f7d7dd2a-17f4-432f-9f8c-98d54918f83a	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
c56d7e7a-5104-4355-9026-bd3919992981	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
c56d7e7a-5104-4355-9026-bd3919992981	10916f22-e020-4161-bade-ca227a3db51e	\N	f
c56d7e7a-5104-4355-9026-bd3919992981	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
c56d7e7a-5104-4355-9026-bd3919992981	67dab184-4881-4710-b486-0b22594b0649	\N	f
c56d7e7a-5104-4355-9026-bd3919992981	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
c56d7e7a-5104-4355-9026-bd3919992981	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
80392f73-75f7-41f4-9df6-625936105f15	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
80392f73-75f7-41f4-9df6-625936105f15	10916f22-e020-4161-bade-ca227a3db51e	1	f
80392f73-75f7-41f4-9df6-625936105f15	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
80392f73-75f7-41f4-9df6-625936105f15	67dab184-4881-4710-b486-0b22594b0649	2	f
80392f73-75f7-41f4-9df6-625936105f15	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
80392f73-75f7-41f4-9df6-625936105f15	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
2c70346b-9944-4574-a295-ff1b30caca03	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
2c70346b-9944-4574-a295-ff1b30caca03	10916f22-e020-4161-bade-ca227a3db51e	2	f
2c70346b-9944-4574-a295-ff1b30caca03	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
2c70346b-9944-4574-a295-ff1b30caca03	67dab184-4881-4710-b486-0b22594b0649	2	f
2c70346b-9944-4574-a295-ff1b30caca03	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
2c70346b-9944-4574-a295-ff1b30caca03	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	10916f22-e020-4161-bade-ca227a3db51e	2	t
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	20b29022-920e-40f5-bb31-81bf895bb6f3	0	t
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	67dab184-4881-4710-b486-0b22594b0649	0	t
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
c2eb49cb-ba49-4ed3-a3b8-deec3e775076	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
52b79176-154f-439e-9c82-5f1b59cae525	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
52b79176-154f-439e-9c82-5f1b59cae525	10916f22-e020-4161-bade-ca227a3db51e	\N	f
52b79176-154f-439e-9c82-5f1b59cae525	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
52b79176-154f-439e-9c82-5f1b59cae525	67dab184-4881-4710-b486-0b22594b0649	\N	f
52b79176-154f-439e-9c82-5f1b59cae525	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
52b79176-154f-439e-9c82-5f1b59cae525	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
4445205e-3fcf-431f-b284-6d55b74fc8cc	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
4445205e-3fcf-431f-b284-6d55b74fc8cc	10916f22-e020-4161-bade-ca227a3db51e	\N	f
4445205e-3fcf-431f-b284-6d55b74fc8cc	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
4445205e-3fcf-431f-b284-6d55b74fc8cc	67dab184-4881-4710-b486-0b22594b0649	\N	f
4445205e-3fcf-431f-b284-6d55b74fc8cc	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
4445205e-3fcf-431f-b284-6d55b74fc8cc	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	10916f22-e020-4161-bade-ca227a3db51e	2	f
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	67dab184-4881-4710-b486-0b22594b0649	2	f
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
7c6d8f7b-40d4-4d14-82f7-3b7fd71e35bb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
61d18ef6-d477-48b0-92e9-d0a1338074b8	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
61d18ef6-d477-48b0-92e9-d0a1338074b8	10916f22-e020-4161-bade-ca227a3db51e	2	f
61d18ef6-d477-48b0-92e9-d0a1338074b8	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
61d18ef6-d477-48b0-92e9-d0a1338074b8	67dab184-4881-4710-b486-0b22594b0649	1	f
61d18ef6-d477-48b0-92e9-d0a1338074b8	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
61d18ef6-d477-48b0-92e9-d0a1338074b8	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
93dbc549-f13c-4ced-8204-6f16cefbc66e	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
93dbc549-f13c-4ced-8204-6f16cefbc66e	10916f22-e020-4161-bade-ca227a3db51e	\N	f
93dbc549-f13c-4ced-8204-6f16cefbc66e	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
93dbc549-f13c-4ced-8204-6f16cefbc66e	67dab184-4881-4710-b486-0b22594b0649	\N	f
93dbc549-f13c-4ced-8204-6f16cefbc66e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
93dbc549-f13c-4ced-8204-6f16cefbc66e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
130fef48-bf41-4c26-811c-7c35c69d56aa	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
130fef48-bf41-4c26-811c-7c35c69d56aa	10916f22-e020-4161-bade-ca227a3db51e	\N	t
130fef48-bf41-4c26-811c-7c35c69d56aa	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	t
130fef48-bf41-4c26-811c-7c35c69d56aa	67dab184-4881-4710-b486-0b22594b0649	\N	t
130fef48-bf41-4c26-811c-7c35c69d56aa	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	t
130fef48-bf41-4c26-811c-7c35c69d56aa	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
646864f1-ca8f-4ad8-8851-d95801acd624	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
646864f1-ca8f-4ad8-8851-d95801acd624	10916f22-e020-4161-bade-ca227a3db51e	2	f
646864f1-ca8f-4ad8-8851-d95801acd624	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
646864f1-ca8f-4ad8-8851-d95801acd624	67dab184-4881-4710-b486-0b22594b0649	1	f
646864f1-ca8f-4ad8-8851-d95801acd624	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
646864f1-ca8f-4ad8-8851-d95801acd624	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
445073c0-87b2-4932-89e6-f6fa5a96b9cb	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
445073c0-87b2-4932-89e6-f6fa5a96b9cb	10916f22-e020-4161-bade-ca227a3db51e	3	f
445073c0-87b2-4932-89e6-f6fa5a96b9cb	20b29022-920e-40f5-bb31-81bf895bb6f3	3	f
445073c0-87b2-4932-89e6-f6fa5a96b9cb	67dab184-4881-4710-b486-0b22594b0649	\N	f
445073c0-87b2-4932-89e6-f6fa5a96b9cb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
445073c0-87b2-4932-89e6-f6fa5a96b9cb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
72388572-fbff-42ac-91ed-d8955e6ea3e7	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
72388572-fbff-42ac-91ed-d8955e6ea3e7	10916f22-e020-4161-bade-ca227a3db51e	2	f
72388572-fbff-42ac-91ed-d8955e6ea3e7	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
72388572-fbff-42ac-91ed-d8955e6ea3e7	67dab184-4881-4710-b486-0b22594b0649	2	f
72388572-fbff-42ac-91ed-d8955e6ea3e7	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
72388572-fbff-42ac-91ed-d8955e6ea3e7	7f40c8fe-d847-4694-a09a-acf689fd5d2d	4	f
cebf5769-948f-483c-a153-f1015698e75d	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
cebf5769-948f-483c-a153-f1015698e75d	10916f22-e020-4161-bade-ca227a3db51e	2	f
cebf5769-948f-483c-a153-f1015698e75d	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
cebf5769-948f-483c-a153-f1015698e75d	67dab184-4881-4710-b486-0b22594b0649	1	f
cebf5769-948f-483c-a153-f1015698e75d	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
cebf5769-948f-483c-a153-f1015698e75d	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
bdadb0c7-6bd0-492f-83cc-5b128af69a58	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
bdadb0c7-6bd0-492f-83cc-5b128af69a58	10916f22-e020-4161-bade-ca227a3db51e	1	f
bdadb0c7-6bd0-492f-83cc-5b128af69a58	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
bdadb0c7-6bd0-492f-83cc-5b128af69a58	67dab184-4881-4710-b486-0b22594b0649	1	f
bdadb0c7-6bd0-492f-83cc-5b128af69a58	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
bdadb0c7-6bd0-492f-83cc-5b128af69a58	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
174b6443-f053-4f1d-a01a-a8bfa9af18e8	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
174b6443-f053-4f1d-a01a-a8bfa9af18e8	10916f22-e020-4161-bade-ca227a3db51e	\N	f
174b6443-f053-4f1d-a01a-a8bfa9af18e8	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
174b6443-f053-4f1d-a01a-a8bfa9af18e8	67dab184-4881-4710-b486-0b22594b0649	\N	f
174b6443-f053-4f1d-a01a-a8bfa9af18e8	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
174b6443-f053-4f1d-a01a-a8bfa9af18e8	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
356dda90-95cd-47b3-b1f0-da9723b8b02d	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
356dda90-95cd-47b3-b1f0-da9723b8b02d	10916f22-e020-4161-bade-ca227a3db51e	\N	f
356dda90-95cd-47b3-b1f0-da9723b8b02d	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
356dda90-95cd-47b3-b1f0-da9723b8b02d	67dab184-4881-4710-b486-0b22594b0649	\N	f
356dda90-95cd-47b3-b1f0-da9723b8b02d	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
356dda90-95cd-47b3-b1f0-da9723b8b02d	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
e410d649-4a63-4f88-a124-5b3bd124258d	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
e410d649-4a63-4f88-a124-5b3bd124258d	10916f22-e020-4161-bade-ca227a3db51e	2	f
e410d649-4a63-4f88-a124-5b3bd124258d	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
e410d649-4a63-4f88-a124-5b3bd124258d	67dab184-4881-4710-b486-0b22594b0649	2	f
e410d649-4a63-4f88-a124-5b3bd124258d	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
e410d649-4a63-4f88-a124-5b3bd124258d	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
6756b259-15a6-4a5c-83c3-f5b9037845c8	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
6756b259-15a6-4a5c-83c3-f5b9037845c8	10916f22-e020-4161-bade-ca227a3db51e	1	f
6756b259-15a6-4a5c-83c3-f5b9037845c8	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
6756b259-15a6-4a5c-83c3-f5b9037845c8	67dab184-4881-4710-b486-0b22594b0649	3	f
6756b259-15a6-4a5c-83c3-f5b9037845c8	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
6756b259-15a6-4a5c-83c3-f5b9037845c8	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
a899a757-3184-4a75-b492-d2fae406ea6a	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
a899a757-3184-4a75-b492-d2fae406ea6a	10916f22-e020-4161-bade-ca227a3db51e	0	f
a899a757-3184-4a75-b492-d2fae406ea6a	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
a899a757-3184-4a75-b492-d2fae406ea6a	67dab184-4881-4710-b486-0b22594b0649	3	f
a899a757-3184-4a75-b492-d2fae406ea6a	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
a899a757-3184-4a75-b492-d2fae406ea6a	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
f4da5514-9dd1-46c6-986d-661433cb0552	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
f4da5514-9dd1-46c6-986d-661433cb0552	10916f22-e020-4161-bade-ca227a3db51e	\N	f
f4da5514-9dd1-46c6-986d-661433cb0552	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
f4da5514-9dd1-46c6-986d-661433cb0552	67dab184-4881-4710-b486-0b22594b0649	\N	f
f4da5514-9dd1-46c6-986d-661433cb0552	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
f4da5514-9dd1-46c6-986d-661433cb0552	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
bd89a899-c163-49d2-beee-105b62312f67	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
bd89a899-c163-49d2-beee-105b62312f67	10916f22-e020-4161-bade-ca227a3db51e	\N	f
bd89a899-c163-49d2-beee-105b62312f67	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
bd89a899-c163-49d2-beee-105b62312f67	67dab184-4881-4710-b486-0b22594b0649	\N	f
bd89a899-c163-49d2-beee-105b62312f67	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
bd89a899-c163-49d2-beee-105b62312f67	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
47342c90-820e-4b4f-80db-1de63b077cd0	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
47342c90-820e-4b4f-80db-1de63b077cd0	10916f22-e020-4161-bade-ca227a3db51e	\N	f
47342c90-820e-4b4f-80db-1de63b077cd0	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
47342c90-820e-4b4f-80db-1de63b077cd0	67dab184-4881-4710-b486-0b22594b0649	\N	f
47342c90-820e-4b4f-80db-1de63b077cd0	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
47342c90-820e-4b4f-80db-1de63b077cd0	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
b201510a-0bb2-49d2-9aa0-81a9136f66eb	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
b201510a-0bb2-49d2-9aa0-81a9136f66eb	10916f22-e020-4161-bade-ca227a3db51e	0	f
b201510a-0bb2-49d2-9aa0-81a9136f66eb	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
b201510a-0bb2-49d2-9aa0-81a9136f66eb	67dab184-4881-4710-b486-0b22594b0649	3	f
b201510a-0bb2-49d2-9aa0-81a9136f66eb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
b201510a-0bb2-49d2-9aa0-81a9136f66eb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
e81e324e-9511-4080-a902-c792c8b7b585	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
e81e324e-9511-4080-a902-c792c8b7b585	10916f22-e020-4161-bade-ca227a3db51e	1	f
e81e324e-9511-4080-a902-c792c8b7b585	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
e81e324e-9511-4080-a902-c792c8b7b585	67dab184-4881-4710-b486-0b22594b0649	2	f
e81e324e-9511-4080-a902-c792c8b7b585	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
e81e324e-9511-4080-a902-c792c8b7b585	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	10916f22-e020-4161-bade-ca227a3db51e	2	f
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	67dab184-4881-4710-b486-0b22594b0649	1	f
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	t
6c3bfbd5-5ccd-497c-9e20-1e951d2b258f	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
523efc1f-ff14-4318-89d1-0f2cf88d5112	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
523efc1f-ff14-4318-89d1-0f2cf88d5112	10916f22-e020-4161-bade-ca227a3db51e	2	f
523efc1f-ff14-4318-89d1-0f2cf88d5112	20b29022-920e-40f5-bb31-81bf895bb6f3	0	t
523efc1f-ff14-4318-89d1-0f2cf88d5112	67dab184-4881-4710-b486-0b22594b0649	0	f
523efc1f-ff14-4318-89d1-0f2cf88d5112	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
523efc1f-ff14-4318-89d1-0f2cf88d5112	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
5433cdc0-490c-4eec-8b55-0b6f06acaf77	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
5433cdc0-490c-4eec-8b55-0b6f06acaf77	10916f22-e020-4161-bade-ca227a3db51e	2	f
5433cdc0-490c-4eec-8b55-0b6f06acaf77	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
5433cdc0-490c-4eec-8b55-0b6f06acaf77	67dab184-4881-4710-b486-0b22594b0649	0	f
5433cdc0-490c-4eec-8b55-0b6f06acaf77	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
5433cdc0-490c-4eec-8b55-0b6f06acaf77	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	10916f22-e020-4161-bade-ca227a3db51e	1	f
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	67dab184-4881-4710-b486-0b22594b0649	\N	f
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
853dfe9e-a5e0-4fb3-b5db-35cf52c4989c	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
7ceb647b-10b5-47dc-98fd-9c4511db927b	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
7ceb647b-10b5-47dc-98fd-9c4511db927b	10916f22-e020-4161-bade-ca227a3db51e	1	f
7ceb647b-10b5-47dc-98fd-9c4511db927b	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
7ceb647b-10b5-47dc-98fd-9c4511db927b	67dab184-4881-4710-b486-0b22594b0649	0	f
7ceb647b-10b5-47dc-98fd-9c4511db927b	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
7ceb647b-10b5-47dc-98fd-9c4511db927b	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
17fba3f5-72d2-4e33-a210-f5b2451431ce	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
17fba3f5-72d2-4e33-a210-f5b2451431ce	10916f22-e020-4161-bade-ca227a3db51e	1	f
17fba3f5-72d2-4e33-a210-f5b2451431ce	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
17fba3f5-72d2-4e33-a210-f5b2451431ce	67dab184-4881-4710-b486-0b22594b0649	\N	f
17fba3f5-72d2-4e33-a210-f5b2451431ce	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
17fba3f5-72d2-4e33-a210-f5b2451431ce	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
bd1fa273-e1fa-4227-be37-3c96516bc64b	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
bd1fa273-e1fa-4227-be37-3c96516bc64b	10916f22-e020-4161-bade-ca227a3db51e	\N	f
bd1fa273-e1fa-4227-be37-3c96516bc64b	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
bd1fa273-e1fa-4227-be37-3c96516bc64b	67dab184-4881-4710-b486-0b22594b0649	\N	f
bd1fa273-e1fa-4227-be37-3c96516bc64b	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
bd1fa273-e1fa-4227-be37-3c96516bc64b	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
24b223ba-9167-4915-9c47-b6f5a5a225a3	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
24b223ba-9167-4915-9c47-b6f5a5a225a3	10916f22-e020-4161-bade-ca227a3db51e	3	f
24b223ba-9167-4915-9c47-b6f5a5a225a3	20b29022-920e-40f5-bb31-81bf895bb6f3	4	f
24b223ba-9167-4915-9c47-b6f5a5a225a3	67dab184-4881-4710-b486-0b22594b0649	\N	f
24b223ba-9167-4915-9c47-b6f5a5a225a3	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
24b223ba-9167-4915-9c47-b6f5a5a225a3	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
42827c15-9aa0-4694-8214-d00089e1f62f	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
42827c15-9aa0-4694-8214-d00089e1f62f	10916f22-e020-4161-bade-ca227a3db51e	\N	f
42827c15-9aa0-4694-8214-d00089e1f62f	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
42827c15-9aa0-4694-8214-d00089e1f62f	67dab184-4881-4710-b486-0b22594b0649	\N	f
42827c15-9aa0-4694-8214-d00089e1f62f	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
42827c15-9aa0-4694-8214-d00089e1f62f	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	10916f22-e020-4161-bade-ca227a3db51e	2	f
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	67dab184-4881-4710-b486-0b22594b0649	2	f
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
dd73facf-c7d3-4f6c-9abd-f1e0f3a8037b	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
06ad423d-0ac6-459f-b291-e04067b219cf	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
06ad423d-0ac6-459f-b291-e04067b219cf	10916f22-e020-4161-bade-ca227a3db51e	0	t
06ad423d-0ac6-459f-b291-e04067b219cf	20b29022-920e-40f5-bb31-81bf895bb6f3	0	t
06ad423d-0ac6-459f-b291-e04067b219cf	67dab184-4881-4710-b486-0b22594b0649	0	f
06ad423d-0ac6-459f-b291-e04067b219cf	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	0	t
06ad423d-0ac6-459f-b291-e04067b219cf	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
289ab9e0-f53b-4726-8db4-5e3317290383	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
289ab9e0-f53b-4726-8db4-5e3317290383	10916f22-e020-4161-bade-ca227a3db51e	\N	f
289ab9e0-f53b-4726-8db4-5e3317290383	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
289ab9e0-f53b-4726-8db4-5e3317290383	67dab184-4881-4710-b486-0b22594b0649	\N	f
289ab9e0-f53b-4726-8db4-5e3317290383	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
289ab9e0-f53b-4726-8db4-5e3317290383	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
74f3bf14-15b7-4ebd-a215-5764d45efd6c	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
74f3bf14-15b7-4ebd-a215-5764d45efd6c	10916f22-e020-4161-bade-ca227a3db51e	\N	f
74f3bf14-15b7-4ebd-a215-5764d45efd6c	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
74f3bf14-15b7-4ebd-a215-5764d45efd6c	67dab184-4881-4710-b486-0b22594b0649	\N	f
74f3bf14-15b7-4ebd-a215-5764d45efd6c	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
74f3bf14-15b7-4ebd-a215-5764d45efd6c	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
6de7d5e1-af52-40d0-a481-72ebf2a34515	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
6de7d5e1-af52-40d0-a481-72ebf2a34515	10916f22-e020-4161-bade-ca227a3db51e	1	f
6de7d5e1-af52-40d0-a481-72ebf2a34515	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
6de7d5e1-af52-40d0-a481-72ebf2a34515	67dab184-4881-4710-b486-0b22594b0649	0	f
6de7d5e1-af52-40d0-a481-72ebf2a34515	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	0	f
6de7d5e1-af52-40d0-a481-72ebf2a34515	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
bd934647-59e9-40a4-a146-184265e146ef	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
bd934647-59e9-40a4-a146-184265e146ef	10916f22-e020-4161-bade-ca227a3db51e	\N	t
bd934647-59e9-40a4-a146-184265e146ef	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
bd934647-59e9-40a4-a146-184265e146ef	67dab184-4881-4710-b486-0b22594b0649	\N	f
bd934647-59e9-40a4-a146-184265e146ef	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	t
bd934647-59e9-40a4-a146-184265e146ef	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
5af425c8-b2e5-4d3a-811b-c30ec78da952	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
5af425c8-b2e5-4d3a-811b-c30ec78da952	10916f22-e020-4161-bade-ca227a3db51e	\N	f
5af425c8-b2e5-4d3a-811b-c30ec78da952	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
5af425c8-b2e5-4d3a-811b-c30ec78da952	67dab184-4881-4710-b486-0b22594b0649	\N	f
5af425c8-b2e5-4d3a-811b-c30ec78da952	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
5af425c8-b2e5-4d3a-811b-c30ec78da952	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
5b3dfea5-2712-4be9-afe6-7fc86f455933	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
5b3dfea5-2712-4be9-afe6-7fc86f455933	10916f22-e020-4161-bade-ca227a3db51e	1	f
5b3dfea5-2712-4be9-afe6-7fc86f455933	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
5b3dfea5-2712-4be9-afe6-7fc86f455933	67dab184-4881-4710-b486-0b22594b0649	1	f
5b3dfea5-2712-4be9-afe6-7fc86f455933	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
5b3dfea5-2712-4be9-afe6-7fc86f455933	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
b3011812-bfcb-4de9-9e19-2c23833e06be	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
b3011812-bfcb-4de9-9e19-2c23833e06be	10916f22-e020-4161-bade-ca227a3db51e	1	f
b3011812-bfcb-4de9-9e19-2c23833e06be	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
b3011812-bfcb-4de9-9e19-2c23833e06be	67dab184-4881-4710-b486-0b22594b0649	\N	f
b3011812-bfcb-4de9-9e19-2c23833e06be	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
b3011812-bfcb-4de9-9e19-2c23833e06be	7f40c8fe-d847-4694-a09a-acf689fd5d2d	1	f
c15fbffc-7a53-444d-8925-187e7146de54	1f885eaf-5970-4947-addf-5dd4320152ca	2	f
c15fbffc-7a53-444d-8925-187e7146de54	10916f22-e020-4161-bade-ca227a3db51e	1	f
c15fbffc-7a53-444d-8925-187e7146de54	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
c15fbffc-7a53-444d-8925-187e7146de54	67dab184-4881-4710-b486-0b22594b0649	2	f
c15fbffc-7a53-444d-8925-187e7146de54	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
c15fbffc-7a53-444d-8925-187e7146de54	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
6bb41179-1e4f-406d-975f-471440c5f314	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
6bb41179-1e4f-406d-975f-471440c5f314	10916f22-e020-4161-bade-ca227a3db51e	\N	f
6bb41179-1e4f-406d-975f-471440c5f314	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
6bb41179-1e4f-406d-975f-471440c5f314	67dab184-4881-4710-b486-0b22594b0649	\N	f
6bb41179-1e4f-406d-975f-471440c5f314	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	t
6bb41179-1e4f-406d-975f-471440c5f314	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
328f937e-705c-4469-919e-ebd38e293bc3	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
328f937e-705c-4469-919e-ebd38e293bc3	10916f22-e020-4161-bade-ca227a3db51e	\N	f
328f937e-705c-4469-919e-ebd38e293bc3	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
328f937e-705c-4469-919e-ebd38e293bc3	67dab184-4881-4710-b486-0b22594b0649	\N	f
328f937e-705c-4469-919e-ebd38e293bc3	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
328f937e-705c-4469-919e-ebd38e293bc3	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
af791c11-6698-4c9e-bf20-624387cdf575	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
af791c11-6698-4c9e-bf20-624387cdf575	10916f22-e020-4161-bade-ca227a3db51e	\N	f
af791c11-6698-4c9e-bf20-624387cdf575	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
af791c11-6698-4c9e-bf20-624387cdf575	67dab184-4881-4710-b486-0b22594b0649	\N	f
af791c11-6698-4c9e-bf20-624387cdf575	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
af791c11-6698-4c9e-bf20-624387cdf575	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	10916f22-e020-4161-bade-ca227a3db51e	0	f
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	20b29022-920e-40f5-bb31-81bf895bb6f3	0	f
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	67dab184-4881-4710-b486-0b22594b0649	1	f
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	0	f
d6896e88-8df0-4b6e-8c57-d209e4d0fe85	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
b602525c-c512-4561-9c3c-bbd909dd0718	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
b602525c-c512-4561-9c3c-bbd909dd0718	10916f22-e020-4161-bade-ca227a3db51e	2	f
b602525c-c512-4561-9c3c-bbd909dd0718	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
b602525c-c512-4561-9c3c-bbd909dd0718	67dab184-4881-4710-b486-0b22594b0649	1	f
b602525c-c512-4561-9c3c-bbd909dd0718	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
b602525c-c512-4561-9c3c-bbd909dd0718	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	10916f22-e020-4161-bade-ca227a3db51e	2	f
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	67dab184-4881-4710-b486-0b22594b0649	1	f
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
e113e515-6aa8-4e6c-9c92-f3129f1d39f0	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
172ccc68-f021-42ad-9777-ad163d8faf01	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
172ccc68-f021-42ad-9777-ad163d8faf01	10916f22-e020-4161-bade-ca227a3db51e	2	f
172ccc68-f021-42ad-9777-ad163d8faf01	20b29022-920e-40f5-bb31-81bf895bb6f3	0	t
172ccc68-f021-42ad-9777-ad163d8faf01	67dab184-4881-4710-b486-0b22594b0649	0	f
172ccc68-f021-42ad-9777-ad163d8faf01	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
172ccc68-f021-42ad-9777-ad163d8faf01	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
16557732-3bb4-4bbf-b277-e1b7704384e7	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
16557732-3bb4-4bbf-b277-e1b7704384e7	10916f22-e020-4161-bade-ca227a3db51e	3	f
16557732-3bb4-4bbf-b277-e1b7704384e7	20b29022-920e-40f5-bb31-81bf895bb6f3	4	f
16557732-3bb4-4bbf-b277-e1b7704384e7	67dab184-4881-4710-b486-0b22594b0649	\N	f
16557732-3bb4-4bbf-b277-e1b7704384e7	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
16557732-3bb4-4bbf-b277-e1b7704384e7	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
a6542444-94ba-4a9e-b1e2-8a8483f82141	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
a6542444-94ba-4a9e-b1e2-8a8483f82141	10916f22-e020-4161-bade-ca227a3db51e	\N	f
a6542444-94ba-4a9e-b1e2-8a8483f82141	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
a6542444-94ba-4a9e-b1e2-8a8483f82141	67dab184-4881-4710-b486-0b22594b0649	\N	f
a6542444-94ba-4a9e-b1e2-8a8483f82141	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	t
a6542444-94ba-4a9e-b1e2-8a8483f82141	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
6e419064-7517-4658-aac0-7887111c02fa	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
6e419064-7517-4658-aac0-7887111c02fa	10916f22-e020-4161-bade-ca227a3db51e	\N	f
6e419064-7517-4658-aac0-7887111c02fa	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
6e419064-7517-4658-aac0-7887111c02fa	67dab184-4881-4710-b486-0b22594b0649	\N	f
6e419064-7517-4658-aac0-7887111c02fa	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
6e419064-7517-4658-aac0-7887111c02fa	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
af99cd73-9ad1-4a5f-8cee-928b09d31470	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
af99cd73-9ad1-4a5f-8cee-928b09d31470	10916f22-e020-4161-bade-ca227a3db51e	2	f
af99cd73-9ad1-4a5f-8cee-928b09d31470	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
af99cd73-9ad1-4a5f-8cee-928b09d31470	67dab184-4881-4710-b486-0b22594b0649	2	f
af99cd73-9ad1-4a5f-8cee-928b09d31470	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	2	f
af99cd73-9ad1-4a5f-8cee-928b09d31470	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
95650ea5-b422-41ef-a1d3-80ed4e145a7e	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
95650ea5-b422-41ef-a1d3-80ed4e145a7e	10916f22-e020-4161-bade-ca227a3db51e	0	t
95650ea5-b422-41ef-a1d3-80ed4e145a7e	20b29022-920e-40f5-bb31-81bf895bb6f3	1	t
95650ea5-b422-41ef-a1d3-80ed4e145a7e	67dab184-4881-4710-b486-0b22594b0649	2	t
95650ea5-b422-41ef-a1d3-80ed4e145a7e	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
95650ea5-b422-41ef-a1d3-80ed4e145a7e	7f40c8fe-d847-4694-a09a-acf689fd5d2d	2	f
5908f3df-6325-47da-a67d-f6b8c09c6ca4	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
5908f3df-6325-47da-a67d-f6b8c09c6ca4	10916f22-e020-4161-bade-ca227a3db51e	\N	f
5908f3df-6325-47da-a67d-f6b8c09c6ca4	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
5908f3df-6325-47da-a67d-f6b8c09c6ca4	67dab184-4881-4710-b486-0b22594b0649	\N	f
5908f3df-6325-47da-a67d-f6b8c09c6ca4	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
5908f3df-6325-47da-a67d-f6b8c09c6ca4	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	10916f22-e020-4161-bade-ca227a3db51e	\N	f
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	67dab184-4881-4710-b486-0b22594b0649	\N	f
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
de25d92e-834f-4e40-ab67-3f3fb3b3d9cb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	10916f22-e020-4161-bade-ca227a3db51e	\N	f
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	67dab184-4881-4710-b486-0b22594b0649	\N	f
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
ead7f6d1-59e5-4f2f-91a8-0315f92ca413	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
d6c97f5a-05d5-4871-880c-3092969dc1cb	1f885eaf-5970-4947-addf-5dd4320152ca	0	f
d6c97f5a-05d5-4871-880c-3092969dc1cb	10916f22-e020-4161-bade-ca227a3db51e	1	f
d6c97f5a-05d5-4871-880c-3092969dc1cb	20b29022-920e-40f5-bb31-81bf895bb6f3	1	f
d6c97f5a-05d5-4871-880c-3092969dc1cb	67dab184-4881-4710-b486-0b22594b0649	0	f
d6c97f5a-05d5-4871-880c-3092969dc1cb	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
d6c97f5a-05d5-4871-880c-3092969dc1cb	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
e0e5474d-b5fc-45dd-8385-396aa4905cd1	1f885eaf-5970-4947-addf-5dd4320152ca	1	f
e0e5474d-b5fc-45dd-8385-396aa4905cd1	10916f22-e020-4161-bade-ca227a3db51e	2	f
e0e5474d-b5fc-45dd-8385-396aa4905cd1	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
e0e5474d-b5fc-45dd-8385-396aa4905cd1	67dab184-4881-4710-b486-0b22594b0649	1	f
e0e5474d-b5fc-45dd-8385-396aa4905cd1	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	1	f
e0e5474d-b5fc-45dd-8385-396aa4905cd1	7f40c8fe-d847-4694-a09a-acf689fd5d2d	0	f
869cfe9f-2190-4cb8-87db-6fd9190de6bd	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
869cfe9f-2190-4cb8-87db-6fd9190de6bd	10916f22-e020-4161-bade-ca227a3db51e	3	f
869cfe9f-2190-4cb8-87db-6fd9190de6bd	20b29022-920e-40f5-bb31-81bf895bb6f3	2	f
869cfe9f-2190-4cb8-87db-6fd9190de6bd	67dab184-4881-4710-b486-0b22594b0649	2	f
869cfe9f-2190-4cb8-87db-6fd9190de6bd	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	3	f
869cfe9f-2190-4cb8-87db-6fd9190de6bd	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
4a9e4b01-c2c4-45d5-95c9-2172ba958426	1f885eaf-5970-4947-addf-5dd4320152ca	\N	f
4a9e4b01-c2c4-45d5-95c9-2172ba958426	10916f22-e020-4161-bade-ca227a3db51e	\N	f
4a9e4b01-c2c4-45d5-95c9-2172ba958426	20b29022-920e-40f5-bb31-81bf895bb6f3	\N	f
4a9e4b01-c2c4-45d5-95c9-2172ba958426	67dab184-4881-4710-b486-0b22594b0649	\N	f
4a9e4b01-c2c4-45d5-95c9-2172ba958426	f3ff3c3a-5aa6-4092-ab66-be277b9294a1	\N	f
4a9e4b01-c2c4-45d5-95c9-2172ba958426	7f40c8fe-d847-4694-a09a-acf689fd5d2d	\N	f
\.


--
-- PostgreSQL database dump complete
--

