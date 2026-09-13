$loot $(function) loot \
{\
    "pools": [\
        {\
            "rolls": 1,\
            "entries": [\
                {\
                    "type": "minecraft:item",\
                    "name": "minecraft:mooshroom_spawn_egg"\
                }\
            ],\
            "modifier": [\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:max_damage": 5,\
                        "!minecraft:max_stack_size": {}\
                    },\
                    "condition": {\
                        "type": "minecraft:entity_scores",\
                        "entity": "this",\
                        "scores": {\
                            "TrapDurability": {\
                                "max": 4\
                            }\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 1\
                    },\
                    "condition": {\
                        "type": "minecraft:entity_scores",\
                        "entity": "this",\
                        "scores": {\
                            "TrapDurability": 4\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 2\
                    },\
                    "condition": {\
                        "type": "minecraft:entity_scores",\
                        "entity": "this",\
                        "scores": {\
                            "TrapDurability": 3\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 3\
                    },\
                    "condition": {\
                        "type": "minecraft:entity_scores",\
                        "entity": "this",\
                        "scores": {\
                            "TrapDurability": 2\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 4\
                    },\
                    "condition": {\
                        "type": "minecraft:entity_scores",\
                        "entity": "this",\
                        "scores": {\
                            "TrapDurability": 1\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 5\
                    },\
                    "condition": {\
                        "type": "minecraft:entity_scores",\
                        "entity": "this",\
                        "scores": {\
                            "TrapDurability": 0\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_custom_data",\
                    "tag": "{CrabTrap:1b}"\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:custom_model_data": {\
                            "floats": [\
                                15\
                            ]\
                        },\
                        "minecraft:lore": [\
                            [\
                                {\
                                    "translate": "item.crab_trap.lore.1",\
                                    "italic": false,\
                                    "color": "white"\
                                }\
                            ],\
                            [\
                                {\
                                    "translate": "item.crab_trap.lore.2",\
                                    "italic": false,\
                                    "color": "white"\
                                }\
                            ]\
                        ]\
                    }\
                },\
                {\
                    "type": "minecraft:set_custom_data",\
                    "tag": "{NoDrop:1b}",\
                    "condition": {\
                        "type": "minecraft:entity_properties",\
                        "entity": "this",\
                        "predicate": {\
                            "entity_type": "minecraft:player",\
                            "team": "Lobby"\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_custom_data",\
                    "tag": "{Blank:1b}",\
                    "condition": {\
                        "type": "minecraft:inverted",\
                        "term": {\
                            "type": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "spawnPlaceable": 0\
                            }\
                        }\
                    }\
                },\
                {\
                    "type": "minecraft:set_components",\
                    "components": {\
                        "minecraft:can_place_on": {\
                            "predicates": {}\
                        },\
                        "minecraft:tooltip_display": {\
                            "hidden_components": [\
                                "minecraft:can_place_on"\
                            ]\
                        }\
                    },\
                    "condition": {\
                        "type": "minecraft:inverted",\
                        "term": {\
                            "type": "minecraft:entity_properties",\
                            "entity": "this",\
                            "predicate": {\
                                "entity_type": "minecraft:player",\
                                "team": "Lobby"\
                            }\
                        }\
                    }\
                }\
            ]\
        }\
    ],\
    "modifier": [\
        {\
            "type": "minecraft:set_name",\
            "entity": "this",\
            "name": {\
                "translate": "item.crab_trap.empty",\
                "color": "dark_aqua",\
                "italic": false\
            },\
            "condition": {\
                "type": "minecraft:entity_properties",\
                "entity": "this",\
                "predicate": {\
                    "entity_tags": {\
                        "all_of": [\
                            "Empty"\
                        ]\
                    }\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_name",\
            "entity": "this",\
            "name": {\
                "translate": "item.crab_trap",\
                "color": "dark_aqua",\
                "italic": false\
            },\
            "condition": {\
                "type": "minecraft:inverted",\
                "term": {\
                    "type": "minecraft:entity_properties",\
                    "entity": "this",\
                    "predicate": {\
                        "entity_tags": {\
                            "all_of": [\
                                "Empty"\
                            ]\
                        }\
                    }\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_components",\
            "components": {\
                "minecraft:entity_data": {\
                    "id": "minecraft:marker",\
                    "Tags": [\
                        "CrabTrapSpawn",\
                        "Empty",\
                        "crabtrap"\
                    ],\
                    "data": {\
                        "durability": $(durability)\
                    }\
                }\
            },\
            "condition": {\
                "type": "minecraft:entity_properties",\
                "entity": "this",\
                "predicate": {\
                    "entity_tags": {\
                        "all_of": [\
                            "Empty"\
                        ]\
                    }\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_components",\
            "components": {\
                "minecraft:entity_data": {\
                    "id": "minecraft:marker",\
                    "Tags": [\
                        "CrabTrapSpawn",\
                        "crabtrap"\
                    ],\
                    "data": {\
                        "durability": $(durability)\
                    }\
                }\
            },\
            "condition": {\
                "type": "minecraft:inverted",\
                "term": {\
                    "type": "minecraft:entity_properties",\
                    "entity": "this",\
                    "predicate": {\
                        "entity_tags": {\
                            "all_of": [\
                                "Empty"\
                            ]\
                        }\
                    }\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_custom_data",\
            "tag": "{Empty:1b}",\
            "condition": {\
                "type": "minecraft:entity_scores",\
                "entity": "this",\
                "scores": {\
                    "TrapDurability": 5\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_custom_data",\
            "tag": "{Empty:0b}",\
            "condition": {\
                "type": "minecraft:entity_scores",\
                "entity": "this",\
                "scores": {\
                    "TrapDurability": 4\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_custom_data",\
            "tag": "{Empty:1b}",\
            "condition": {\
                "type": "minecraft:entity_scores",\
                "entity": "this",\
                "scores": {\
                    "TrapDurability": 3\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_custom_data",\
            "tag": "{Empty:0b}",\
            "condition": {\
                "type": "minecraft:entity_scores",\
                "entity": "this",\
                "scores": {\
                    "TrapDurability": 2\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_custom_data",\
            "tag": "{Empty:1b}",\
            "condition": {\
                "type": "minecraft:entity_scores",\
                "entity": "this",\
                "scores": {\
                    "TrapDurability": 1\
                }\
            }\
        },\
        {\
            "type": "minecraft:set_custom_data",\
            "tag": "{Empty:0b}",\
            "condition": {\
                "type": "minecraft:entity_scores",\
                "entity": "this",\
                "scores": {\
                    "TrapDurability": 0\
                }\
            }\
        }\
    ]\
}