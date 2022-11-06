Config = {}


Config.BBQ1Model = {
    1903501406,
}
Config.BBQ2Model = {
    519797612,
}
Config.BBQ3Model = {
    977744387,
}
Config.BBQ4Model = {
    286252949,
}
Config.BBQ5Model = {
    -476379988,
}

Config.JimShops = false --set true if using jim shops

--amount of cooked items you get back when cooking
Config.BurgerAmount = 3 --burger
Config.ChickenAmount = 3 --chicken burger
Config.HotDogAmount = 8 --hotdog
Config.RibsAmount = 1 --ribs
Config.BrisketAmount = 1 --brisket
Config.JacketAmount = 1 --Jacket potatoes

--buying ingredients
Config.BuyPed = 'a_m_m_hillbilly_01'
Config.BuyLocation = vector4(1084.35, 6509.35, 21.04, 134.77)  --must be vector 4 not 3  -- blip will follow this guy too

Config.EnableConvo = false

Config.BBQShop = {
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
    }

    Config.PropShopLoc = {  --add as many prop stores as you like
    vector3(53.35, -1480.2, 29.27),
    vector3(1893.2, 3714.28, 32.77),
}

    Config.PropShop = {  --change prices to your economy -- this is where you buy bbqs
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
    }