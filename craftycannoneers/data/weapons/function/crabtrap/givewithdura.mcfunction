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
            "functions": [\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:max_damage": 5,\
                        "!minecraft:max_stack_size": {}\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "TrapDurability": {\
                                    "max": 4\
                                }\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 1\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "TrapDurability": 4\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 2\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "TrapDurability": 3\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 3\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "TrapDurability": 2\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 4\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "TrapDurability": 1\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:damage": 5\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_scores",\
                            "entity": "this",\
                            "scores": {\
                                "TrapDurability": 0\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_custom_data",\
                    "tag": "{CrabTrap:1b}"\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:custom_model_data": 15,\
                        "minecraft:lore": [\
                            "[{\"translate\":\"item.crab_trap.lore.1\",\"italic\":false,\"color\":\"white\"}]",\
                            "[{\"translate\":\"item.crab_trap.lore.2\",\"italic\":false,\"color\":\"white\"}]"\
                        ]\
                    }\
                },\
                {\
                    "function": "minecraft:set_custom_data",\
                    "tag": "{NoDrop:1b}",\
                    "conditions": [\
                        {\
                            "condition": "minecraft:entity_properties",\
                            "entity": "this",\
                            "predicate": {\
                                "type": "minecraft:player",\
                                "team": "Lobby"\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_custom_data",\
                    "tag": "{Blank:1b}",\
                    "conditions": [\
                        {\
                            "condition": "minecraft:inverted",\
                            "term": {\
                                "condition": "minecraft:entity_scores",\
                                "entity": "this",\
                                "scores": {\
                                    "spawnPlaceable": 0\
                                }\
                            }\
                        }\
                    ]\
                },\
                {\
                    "function": "minecraft:set_components",\
                    "components": {\
                        "minecraft:can_place_on": {\
                            "predicates": [{}],\
                            "show_in_tooltip": false\
                        }\
                    },\
                    "conditions": [\
                        {\
                            "condition": "minecraft:inverted",\
                            "term": {\
                                "condition": "minecraft:entity_properties",\
                                "entity": "this",\
                                "predicate": {\
                                    "type": "minecraft:player",\
                                    "team": "Lobby"\
                                }\
                            }\
                        }\
                    ]\
                }\
            ]\
        }\
    ],\
    "functions": [\
        {\
            "function": "minecraft:set_name",\
            "entity": "this",\
            "name": {\
                "translate": "item.crab_trap.empty",\
                "color": "dark_aqua",\
                "italic": false\
            },\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_properties",\
                    "entity": "this",\
                    "predicate": {\
                        "nbt": "{Tags:[\"Empty\"]}"\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_name",\
            "entity": "this",\
            "name": {\
                "translate": "item.crab_trap",\
                "color": "dark_aqua",\
                "italic": false\
            },\
            "conditions": [\
                {\
                    "condition": "minecraft:inverted",\
                    "term": {\
                        "condition": "minecraft:entity_properties",\
                        "entity": "this",\
                        "predicate": {\
                            "nbt": "{Tags:[\"Empty\"]}"\
                        }\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_components",\
            "components": {\
                "minecraft:entity_data": {\
                    "id": "minecraft:marker",\
                    "Tags": [\
                        "CrabTrapSpawn",\
                        "Empty",\
                        "crabtrap"\
                    ],\
                    "data": {\
                        "durability": $(durability)b\
                    }\
                }\
            },\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_properties",\
                    "entity": "this",\
                    "predicate": {\
                        "nbt": "{Tags:[\"Empty\"]}"\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_components",\
            "components": {\
                "minecraft:entity_data": {\
                    "id": "minecraft:marker",\
                    "Tags": [\
                        "CrabTrapSpawn",\
                        "crabtrap"\
                    ],\
                    "data": {\
                        "durability": $(durability)b\
                    }\
                }\
            },\
            "conditions": [\
                {\
                    "condition": "minecraft:inverted",\
                    "term": {\
                        "condition": "minecraft:entity_properties",\
                        "entity": "this",\
                        "predicate": {\
                            "nbt": "{Tags:[\"Empty\"]}"\
                        }\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_custom_data",\
            "tag": "{Empty:1b}",\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_scores",\
                    "entity": "this",\
                    "scores": {\
                        "TrapDurability": 5\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_custom_data",\
            "tag": "{Empty:0b}",\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_scores",\
                    "entity": "this",\
                    "scores": {\
                        "TrapDurability": 4\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_custom_data",\
            "tag": "{Empty:1b}",\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_scores",\
                    "entity": "this",\
                    "scores": {\
                        "TrapDurability": 3\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_custom_data",\
            "tag": "{Empty:0b}",\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_scores",\
                    "entity": "this",\
                    "scores": {\
                        "TrapDurability": 2\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_custom_data",\
            "tag": "{Empty:1b}",\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_scores",\
                    "entity": "this",\
                    "scores": {\
                        "TrapDurability": 1\
                    }\
                }\
            ]\
        },\
        {\
            "function": "minecraft:set_custom_data",\
            "tag": "{Empty:0b}",\
            "conditions": [\
                {\
                    "condition": "minecraft:entity_scores",\
                    "entity": "this",\
                    "scores": {\
                        "TrapDurability": 0\
                    }\
                }\
            ]\
        }\
    ]\
}