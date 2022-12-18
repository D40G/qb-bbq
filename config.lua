Config = {}

Config = {
    BBQ1Model = 1903501406,
    BBQ2Model = 519797612,
    BBQ3Model = 977744387,
    BBQ4Model = 286252949,
    BBQ5Model = -476379988,

    JimShops = false, --true if using jim-shops
    ImagePath = "qb-inventory/html/images/", --change if using another inventory
    EnableConvo = true, --to enable conversation with meat guy /false to go straight to shop
    BuyPed = 'a_m_m_hillbilly_01',
    BuyLocation = vector4(1084.35, 6509.35, 21.04, 134.77),
    PropShopLoc = {  --add as many prop stores as you like
        vector3(53.35, -1480.2, 29.27),
        vector3(1893.2, 3714.28, 32.77),
    },
    BBQShop = {
        label = "BBQ Items",
        slots = 6,  --make sure this number is the same as the amount of items you have in this list or it wont work
        items = {
            [1] = {
                name = "b-uc-burger",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 1,
            },
            [2] = {
                name = "b-uc-chicken",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 2,
            },
            [3] = {
                name = "b-uc-hotdog",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 3,
            },
            [4] = {
                name = "b-uc-ribs",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 4,
            },
            [5] = {
                name = "b-uc-brisket",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 5,
            },
            [6] = {
                name = "b-uc-jacket",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 6,
            },
        }
    },
    PropShop = {  --change prices to your economy -- this is where you buy bbqs
        label = "Home Grillin",
        slots = 5,--slots must be same as number of items here if adding new items
        items = {
            [1] = {
                name = "bbq1",
                price = 3000,
                amount = 10,
                info = {},
                type = "item",
                slot = 1,
            },
            [2] = {
                name = "bbq2",
                price = 1500,
                amount = 10,
                info = {},
                type = "item",
                slot = 2,
            },
            [3] = {
                name = "bbq3",
                price = 1600,
                amount = 10,
                info = {},
                type = "item",
                slot = 3,
            },
            [4] = {
                name = "bbq4",
                price = 2500,
                amount = 10,
                info = {},
                type = "item",
                slot = 4,
            },
            [5] = {
                name = "bbq5",
                price = 2800,
                amount = 10,
                info = {},
                type = "item",
                slot = 5,
            },
        }
    },

        -- ██████████████████████████████████████████████████████████████████████████████████████████████████████████
        -- █░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
        -- █░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
        -- █░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░░░▄▀░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█
        -- █░░▄▀░░████░░▄▀░░███░░▄▀░░█████████░░▄▀░░███████████░░▄▀░░███░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████
        -- █░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░███████████░░▄▀░░███░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█
        -- █░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░███████████░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
        -- █░░▄▀░░░░░░▄▀░░░░███░░▄▀░░░░░░░░░░█░░▄▀░░███████████░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░░░░░░░░░▄▀░░█
        -- █░░▄▀░░██░░▄▀░░█████░░▄▀░░█████████░░▄▀░░███████████░░▄▀░░███░░▄▀░░█████████░░▄▀░░█████████████████░░▄▀░░█
        -- █░░▄▀░░██░░▄▀░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░░░▄▀░░░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█░░░░░░░░░░▄▀░░█
        -- █░░▄▀░░██░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
        -- █░░░░░░██░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░█░░░░░░█████████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
        -- ██████████████████████████████████████████████████████████████████████████████████████████████████████████
        
    ["Recipes"] = {    --add as many food items as you want and configure the cooking times etc. 
        ["b-burger"] = { --Item Name
            hash = "b-burger", --Item Name
            label = "Cheese Burger", --Item Label shown inside the menu
            CookTime = 5,  --in seconds 
            Ingredients = {
                [1] = {
                    item = "b-uc-burger", --Item Name
                    amount = 1, --Item Amount Needed
                },
                [2] = {
                    item = "cheese",
                    amount = 1,
                },
            }
        },
        ["b-chicken"] = {
            hash = "b-chicken",
            label = "Chicken Burger",
            CookTime = 5,
            Ingredients = {
                [1] = {
                    item = "b-uc-chicken",
                    amount = 1,
                },
            }
        },
        ["b-hotdog"] = {
            hash = "b-hotdog",
            label = "Hotdog",
            CookTime = 5,
            Ingredients = {
                [1] = {
                    item = "b-uc-hotdog",
                    amount = 1,
                },
            }
        },
        ["b-ribs"] = {
            hash = "b-ribs",
            label = "Ribs",
            CookTime = 5,
            Ingredients = {
                [1] = {
                    item = "b-uc-ribs",
                    amount = 100,
                },
            }
        },
        ["b-brisket"] = {
            hash = "b-brisket",
            label = "Brisket",
            CookTime = 5,
            Ingredients = {
                [1] = {
                    item = "b-uc-brisket",
                    amount = 1,
                },
            }
        },
        ["b-jacket"] = {
            hash = "b-jacket",
            label = "Jacket Potato",
            CookTime = 5,
            Ingredients = {
                [1] = {
                    item = "b-uc-jacket",
                    amount = 1,
                },
            }
        }
    },
}