<h1 align="center">nazu-dinerjob</h1>

![image](https://github.com/NazuRhythm/nazu-dinerjob/assets/94416199/96b8a2b4-2962-482f-8a11-6e79ded0a717)


# Requirements
this mlo is gabz mlo.
you need to buy [gabz](https://www.gabzv.com/) mlo if you dont have it.

# Demo Video
[video](https://youtu.be/j6uB1gzEw90?si=UNdViWRvpxJkzmO8)

## Installations

first, download the script from [latest](https://github.com/NazuRhythm/nazu-dinerjob/releases/tag/release)
and change the folder name to nazu-dinerjob

### 1. add this on your qb-core/shared/job.lua
```lua
diner = {
	label = 'Diner chef',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 50 },
		['1'] = { name = 'Manager', payment = 75 },
		['2'] = { name = 'Boss', payment = 100 },
	},
},
```

### 2. add this on your qb-core/shared/items.lua
```lua
['nz_pancake'] = {
        ["name"] = "nz_pancake",
        ["label"] = "pancake",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "nz_pancake.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = ""
},
['nz_waffle'] = {
    ["name"] = "nz_waffle",
    ["label"] = "waffle",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_waffle.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_wafflebacon'] = {
    ["name"] = "nz_wafflebacon",
    ["label"] = "waffle and bacon",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_wafflebacon.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_toast'] = {
    ["name"] = "nz_toast",
    ["label"] = "Toast",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_toast.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_sandwitch'] = {
    ["name"] = "nz_sandwitch",
    ["label"] = "Sandwich",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_sandwitch.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_brakefastset'] = {
    ["name"] = "nz_brakefastset",
    ["label"] = "Brakefast Set",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_brakefastset.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_burger'] = {
    ["name"] = "nz_burger",
    ["label"] = "Burger",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_burger.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_salad'] = {
    ["name"] = "nz_salad",
    ["label"] = "Salad",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_salad.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},

['nz_pancakemix'] = {
    ["name"] = "nz_pancakemix",
    ["label"] = "Pancake Mix",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_pancakemix.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_milk'] = {
    ["name"] = "nz_milk",
    ["label"] = "Milk",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_milk.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_syrup'] = {
    ["name"] = "nz_syrup",
    ["label"] = "Syrup",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_syrup.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_avocado'] = {
    ["name"] = "nz_avocado",
    ["label"] = "Avocado",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_avocado.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_lettuce'] = {
    ["name"] = "nz_lettuce",
    ["label"] = "Lettuce",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_lettuce.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_egg'] = {
    ["name"] = "nz_egg",
    ["label"] = "Egg",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_egg.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_butter'] = {
    ["name"] = "nz_butter",
    ["label"] = "Butter",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_butter.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_tomato'] = {
    ["name"] = "nz_tomato",
    ["label"] = "Tomato",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_tomato.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_bread'] = {
    ["name"] = "nz_bread",
    ["label"] = "Bread👍",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_bread.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_cucumber'] = {
    ["name"] = "nz_cucumber",
    ["label"] = "Cucumber",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_cucumber.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_strawberry'] = {
    ["name"] = "nz_strawberry",
    ["label"] = "Strawberry",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_strawberry.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
['nz_raw_bacon'] = {
    ["name"] = "nz_raw_bacon",
    ["label"] = "Raw Bacon",
    ["weight"] = 500,
    ["type"] = "item",
    ["image"] = "nz_raw_bacon.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = ""
},
```
### 3. drop the image to inventory/html/images

### 4. add this on your qb-smallresourece/config.lua
```lua
-- Config.Consumables/eat
    ['nz_pancake'] = math.random(25, 34),
    ['nz_waffle'] = math.random(25, 34),
    ['nz_wafflebacon'] = math.random(25, 34),
    ['nz_toast'] = math.random(25, 34),
    ['nz_sandwitch'] = math.random(25, 34),
    ['nz_brakefastset'] = math.random(25, 34),
    ['nz_burger'] = math.random(25, 34),
    ['nz_salad'] = math.random(25, 34),
```

### 5. add this on your server.cfg
```
ensure ox_lib

ensure nazu-dinerjob
```

## All Box Zones 

![image](https://github.com/NazuRhythm/nazu-dinerjob/assets/94416199/99cf4fe2-e779-4852-88d6-6f02d7f49ae7)
![image](https://github.com/NazuRhythm/nazu-dinerjob/assets/94416199/1193262f-d81d-43f8-bd44-49fbdb6491a9)
![image](https://github.com/NazuRhythm/nazu-dinerjob/assets/94416199/b9cc935c-d9e6-4f7d-aa36-be138399e3db)


