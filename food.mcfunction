execute as @a[scores={eatbat=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat1=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat2=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat3=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat4=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat5=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat6=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat7=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat8=1..}] at @s run tag @s add eatbat
execute as @a[scores={eatbat9=1..}] at @s run tag @s add eatbat
execute as @a[tag=eatbat] at @s run effect give @s minecraft:poison 10 20
execute as @a[tag=eatbat] at @s run title @s actionbar {"text":"因為你吃了生的東西，所以中毒了(X__X)","color":"dark_green","bold":"true"}
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat1 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat2 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat3 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat4 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat5 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat6 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat7 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat8 0
execute as @a[tag=eatbat] at @s run scoreboard players set @s eatbat9 0
execute as @a[tag=eatbat] at @s run tag @s remove eatbat
tag @a[nbt={Inventory:[{id:"minecraft:carrot",tag:{eat:3},Count:1b,Slot:-106b}]}] add detectcoreat
execute as @a[tag=detectcoreat,scores={food=20..}] at @s run title @s actionbar {"text":"你飽了，吃不下了。","color":"red","bold":"true"}
execute as @a[tag=detectcoreat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detectcoreat,scores={food=20..}] at @s run replaceitem entity @a[tag=detectcoreat] weapon.offhand minecraft:air 1
execute as @a[tag=detectcoreat,scores={food=20..}] at @s run give @s minecraft:carrot{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§a風味§c時蔬\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤7§l═§6《§a§l增加數值§6》§7§l═§8§l╤§7§l═§8§l╤§7§l8§l▶\"}","{\"text\":\"§c❁ §4飢餓值 + 3\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品介紹§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a跟隨季節改變味道的蔬果\"}","{\"text\":\"§a味道鮮甜可口\"}","{\"text\":\"§a做法簡單易上手\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l§7§l═§6《§a§l用法6§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §e按 §6F §E吃下食物 \"}","{\"text\":\"§7(一次只能拿一個)\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品歸類§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §A食物\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l快樂廚房獲得\"}"]},eat:3,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detectcoreat,scores={food=20..}] at @s run tag @s remove detectcoreat
replaceitem entity @a[tag=detectcoreat] weapon.offhand minecraft:air 1
execute as @a[tag=detectcoreat] at @s run title @s actionbar {"text":"ㄎㄠ~ㄎㄠ~ㄎㄠ~，真好吃。","color":"red","bold":"true"}
execute as @a[tag=detectcoreat] at @s run tag @s add eatsoundplay
execute as @a[tag=eatsoundplay] at @s run scoreboard players add @s eatsoundplay 0
execute as @a[scores={PET=5}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=10}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=15}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=20}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=25}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=30}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=35}] at @s run playsound minecraft:entity.generic.eat master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[scores={PET=36}] at @s run tag @s remove eatsoundplay
execute as @a[scores={PET=36}] at @s run scoreboard players set @s PET 0
execute as @a[tag=eatsoundplay] at @s run scoreboard players add @s PET 1
execute as @a[tag=detectcoreat] at @s run effect give @s minecraft:saturation 2 2
execute as @a[tag=detectcoreat] at @s run tag @s remove detectcoreat
#--+8麵包
tag @a[nbt={Inventory:[{id:"minecraft:bread",tag:{eat:4},Count:1b,Slot:-106b}]}] add detectbreeat
execute as @a[tag=detectbreeat,scores={food=20..}] at @s run title @s actionbar {"text":"你飽了，吃不下了。","color":"red","bold":"true"}
execute as @a[tag=detectbreeat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detectbreeat,scores={food=20..}] at @s run replaceitem entity @a[tag=detectbreeat] weapon.offhand minecraft:air 1
execute as @a[tag=detectbreeat,scores={food=20..}] at @s run give @s minecraft:bread{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§e式6麵包\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l增加數值§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§c❁ §4飽食度 + 4\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品介紹§6》7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a來自法國的麵包\"}","{\"text\":\"§a味道還不錯\"}","{\"text\":\"§a就有點硬...\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l食用方法§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §E按 §6F §E吃下食物\"}","{\"text\":\"§7(一次只能拿一個)\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品歸類§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §A食物\"}","{\"text\":\"§8§l◀§7§l═§8l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方§6》§7§l§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l快樂廚房獲得\"}"]},eat:4,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detectbreeat,scores={food=20..}] at @s run tag @s remove detectbreeat
execute as @a[tag=detectbreeat] at @s run tag @s add eatsoundplay
replaceitem entity @a[tag=detectbreeat] weapon.offhand minecraft:air 1
execute as @a[tag=detectbreeat] at @s run title @s actionbar {"text":"ㄆㄨ一ˋ，怎麼一顆牙齒掉了","color":"red","bold":"true"}
execute as @a[tag=detectbreeat] at @s run effect give @s minecraft:saturation 2 3
execute as @a[tag=detectbreeat] at @s run tag @s remove detectbreeat
#--義式辣味魚
tag @a[nbt={Inventory:[{id:"minecraft:cooked_cod",tag:{eat:4},Count:1b,Slot:-106b}]}] add detectfiseat
execute as @a[tag=detectfiseat,scores={food=20..}] at @s run title @s actionbar {"text":"你飽了，吃不下了。","color":"red","bold":"true"}
execute as @a[tag=detectfiseat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detectfiseat,scores={food=20..}] at @s run replaceitem entity @a[tag=detectfiseat] weapon.offhand minecraft:air 1
execute as @a[tag=detectfiseat,scores={food=20..}] at @s run give @s minecraft:cooked_cod{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§6義式§c辣味魚\"}",Lore:["{\"text\":\"§8l§7§l═§8§l§7§l§8§l§7§l═§6《§a§l增加數值§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§c❁ §4飽食度 + 4\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品介紹§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a用新鮮魚下去醃\"}","{\"text\":\"§a再用大量辣椒\"}","{\"text\":\"§a做出的香辣\"}","{\"text\":\"§8§l§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l食用方法§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §E按 §6F §E吃下食物\"}","{\"text\":\"§7(一次只能拿一個)\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品歸類§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §A食物\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8l§7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l快樂廚房獲得\"}"]},eat:4,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detectfiseat,scores={food=20..}] at @s run tag @s remove detectfiseat
execute as @a[tag=detectfiseat] at @s run tag @s add eatsoundplay
replaceitem entity @a[tag=detectfiseat] weapon.offhand minecraft:air 1
execute as @a[tag=detectfiseat] at @s run title @s actionbar {"text":"辣到噴火RR~~ ( ﾟдﾟ)","color":"red","bold":"true"}
execute as @a[tag=detectfiseat] at @s run effect give @s minecraft:saturation 2 3
execute as @a[tag=detectfiseat] at @s run tag @s remove detectfiseat
#--骰子牛
tag @a[nbt={Inventory:[{id:"minecraft:cooked_beef",tag:{eat:10},Count:1b,Slot:-106b}]}] add detectbeeat
execute as @a[tag=detectbeeat,scores={food=20..}] at @s run title @s actionbar {"text":"你了，下了。","color":"red","bold":"true"}
execute as @a[tag=detectbeeat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detectbeeat,scores={food=20..}] at @s run replaceitem entity @a[tag=detectbeeat] weapon.offhand minecraft:air 1
execute as @a[tag=detectbeeat,scores={food=20..}] at @s run give @s minecraft:cooked_beef{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§4骰子牛\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l充飢數值§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§4❁ §C飢餓值 + 10\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l食物介紹§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a跟骰子一樣但不能丟\"}","{\"text\":\"§a吃起來味道用九層塔提出\"}","{\"text\":\"§a絕倫美味!\"}","{\"text\":\"§8§l◀§7§l═§8l╤§7§l═§8§l╤§7§l═§6§a§l食用方式§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§C❣ §E按 §6F §E鍵吃下此食物\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a§l✔§e§l快樂廚房獲得\"}"]},eat:10,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detectbeeat,scores={food=20..}] at @s run tag @s remove detectbeeat
execute as @a[tag=detectbeeat] at @s run tag @s add eatsoundplay
replaceitem entity @a[tag=detectbeeat] weapon.offhand minecraft:air 1
execute as @a[tag=detectbeeat] at @s run title @s actionbar {"text":"高級的感覺~~ (*´▽`*)","color":"red","bold":"true"}
execute as @a[tag=detectbeeat] at @s run effect give @s minecraft:saturation 2 9
execute as @a[tag=detectbeeat] at @s run tag @s remove detectbeeat
#--SM家鑰匙
tag @a[nbt={Inventory:[{id:"minecraft:lever",tag:{key:1},Count:1b,Slot:-106b}]}] add SMKEY
replaceitem entity @a[tag=SMKEY] weapon.offhand minecraft:air 1
execute as @a[tag=SMKEY] at @s run title @s actionbar {"text":"遙控中......","color":"red","bold":"true"}
execute as @a[tag=SMKEY] at @s run give @s minecraft:lever{HideFlags:35,display:{Name:"{\"text\":\"§6§lS§8§lword§6§lM§8§laker§d§l家的鑰匙\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l品介紹§6》§7§l═8§l╤§7§l═8§l╤§7§l§8§l▶\"}","{\"text\":\"§a能開§D§LSM§A家的鑰匙§8§LaWa\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品技能§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §5§lSM§d§l開門         §7(冷卻:無)\"}","{\"text\":\"§e按 §6F §E對開關門\"}","{\"text\":\"§8§l§7§l═§8§l╤§7§l═§8§l╤§7§l═§6§a§l物品歸§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §a鑰匙\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l???\"}"]},key:1,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=SMKEY] at @s run setblock 10257 24 10105 minecraft:redstone_block
execute as @a[tag=SMKEY] at @s run tag @s remove SMKEY
#--
tag @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{eat:1},Count:1b,Slot:-106b}]}] add detmaneat
execute as @a[tag=detmaneat,scores={food=20..}] at @s run title @s actionbar {"text":"你飽，吃不下了。","color":"red","bold":"true"}
execute as @a[tag=detmaneat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detmaneat,scores={food=20..}] at @s run replaceitem entity @a[tag=detmaneat] weapon.offhand minecraft:air 1
execute as @a[tag=detmaneat,scores={food=20..}] at @s run give @s minecraft:player_head{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§6芒果\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l增加數值§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§c❁ §4飽食度 + 1\"}","{\"text\":\"§8l◀§7§l═§8§l╤§7§l§8§l╤§7§l═§6《§a§l物介紹§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a可以在芒果園採集到\"}","{\"text\":\"§a多汁又鮮甜\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l食用方法§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §E按 §6F §E吃下食物\"}","{\"text\":\"§7(一次只能拿一個)\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品歸類§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §A食物\"}","{\"text\":\"§6✪ §A水果\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l水果園採集\"}"]},SkullOwner:{Id:"f01f02aa-8fdd-4a27-9cc1-b788637da77f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc1ODM1MDY4YTU1MTJmYTUyNWRkYmE2MTM2MjQ0NWY2M2Q5ODk1YmI0MTdkN2RjZjAyZGM5YjUyMTVmNWMifX19"}]}},eat:1,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detmaneat,scores={food=20..}] at @s run tag @s remove detmaneat
execute as @a[tag=detmaneat] at @s run tag @s add eatsoundplay
replaceitem entity @a[tag=detmaneat] weapon.offhand minecraft:air 1
execute as @a[tag=detmaneat] at @s run title @s actionbar {"text":"芒果好吃 (*▽`*)","color":"red","bold":"true"}
execute as @a[tag=detmaneat] at @s run effect give @s minecraft:saturation 2 0
execute as @a[tag=detmaneat] at @s run tag @s remove detmaneat
#--
execute as @a[tag=warn] at @s run tellraw @a [{"text":"\u00a7e【\u00a7a系統\u00a7e】"},{"selector":"@s"},{"text":"\u00a7e 被\u00a74 管理員 \u00a7e記了\u00a7c\u00a7l一隻警告"}]
scoreboard players add @a[tag=warn] Warn 1
execute as @a[tag=warn] at @s run tellraw @a [{"text":"\u00a7e【\u00a7a系統\u00a7e】"},{"selector":"@s"},{"text":"\u00a7e 目前有 "},{"score":{"name":"@s","objective":"Warn"},"color":"dark_red"},{"text":" \u00a7c隻警告"}]
tag @a[tag=warn] remove warn
#--神戶和牛
tag @a[nbt={Inventory:[{id:"minecraft:cooked_beef",tag:{eat:5},Count:1b,Slot:-106b}]}] add detbeefeat
execute as @a[tag=detbeefeat,scores={food=20..}] at @s run title @s actionbar {"text":"你飽了，吃不下了。","color":"red","bold":"true"}
execute as @a[tag=detbeefeat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detbeefeat,scores={food=20..}] at @s run replaceitem entity @a[tag=detbeefeat] weapon.offhand minecraft:air 1
execute as @a[tag=detbeefeat,scores={food=20..}] at @s run give @p minecraft:cooked_beef{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§c神和牛\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l增加數值§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§c❁ §4飢餓值 + 5\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7l═§6《§a§l物品介紹§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a日本皇室至高食物\"}","{\"text\":\"§a味道鮮甜\"}","{\"text\":\"§A外表呈現大理石紋路\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l食用方法§6》§7§l═8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §e按 §6F §E下食物 \"}","{\"text\":\"§7(一次只能拿一個)\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品歸類§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §A食物\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8§l7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l快樂廚房獲得\"}"]},eat:5,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detbeefeat,scores={food=20..}] at @s run tag @s remove detbeefeat
execute as @a[tag=detbeefeat] at @s run tag @s add eatsoundplay
replaceitem entity @a[tag=detbeefeat] weapon.offhand minecraft:air 1
execute as @a[tag=detbeefeat] at @s run title @s actionbar {"text":"牛的味道!! (≧▽≦)","color":"red","bold":"true"}
execute as @a[tag=detbeefeat] at @s run effect give @s minecraft:saturation 2 4
execute as @a[tag=detbeefeat] at @s run tag @s remove detbeefeat
#--蒜香風味雞
tag @a[nbt={Inventory:[{id:"minecraft:cooked_chicken",tag:{eat:5},Count:1b,Slot:-106b}]}] add detchifeat
execute as @a[tag=detchifeat,scores={food=20..}] at @s run title @s actionbar {"text":"你飽了，吃不下了。","color":"red","bold":"true"}
execute as @a[tag=detchifeat,scores={food=20..}] at @s run playsound minecraft:entity.player.burp master @a[distance=..2] ~ ~ ~ 1 1
execute as @a[tag=detchifeat,scores={food=20..}] at @s run replaceitem entity @a[tag=detchifeat] weapon.offhand minecraft:air 1
execute as @a[tag=detchifeat,scores={food=20..}] at @s run give @p minecraft:cooked_chicken{HideFlags:1,display:{Name:"{\"text\":\"§7§l【§6§l食物§7§l】§c蒜香風味雞\"}",Lore:["{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8l╤§7§l═§6《§al增加數值§6》§7§l§8§l╤§7l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§c❁ §4飢餓值 + 5\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品介紹§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a使用大量大蒜烹飪\"}","{\"text\":\"§a肉香配上微微九層塔香\"}","{\"text\":\"§a很吸引人\"}","{\"text\":\"§8§l◀7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l食用方法6》§7§l═§8§l╤§7l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✠ §e按 §6F §E吃下食物 \"}","{\"text\":\"§7(一次只能拿一個)\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l物品歸類§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§6✪ §A食物\"}","{\"text\":\"§8§l◀§7§l═§8§l╤§7§l═§8§l╤§7§l═§6《§a§l獲得方式§6》§7§l═§8§l╤§7§l═§8§l╤§7§l═§8§l▶\"}","{\"text\":\"§a§l✔ §e§l快樂廚房獲得\"}"]},eat:5,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=detchifeat,scores={food=20..}] at @s run tag @s remove detchifeat
execute as @a[tag=detchifeat] at @s run tag @s add eatsoundplay
replaceitem entity @a[tag=detchifeat] weapon.offhand minecraft:air 1
execute as @a[tag=detchifeat] at @s run title @s actionbar {"text":"真香 （- 3 -）","color":"red","bold":"true"}
execute as @a[tag=detchifeat] at @s run effect give @s minecraft:saturation 2 4
execute as @a[tag=detchifeat] at @s run tag @s remove detchifeat
#---門禁
execute as @a[scores={loogin=1..}] at @s run tag @s remove login
execute as @a[scores={loogin=1..}] at @s run scoreboard players set @s login 0
execute as @a[scores={loogin=1..}] at @s run scoreboard players set @s loogin 0
execute as @a[tag=!login,gamemode=!adventure] at @s run gamemode adventure @s
execute in minecraft:overworld run tp @a[tag=!login] 870019 102 869975
scoreboard players enable @a[tag=!login] login
execute as @a[tag=!login,name=LaiCrownM,scores={login=72546881}] at @s run trigger spawn set 1
execute as @a[tag=!login,name=LaiCrownM,scores={login=72546881}] at @s run gamemode creative @s
execute as @a[tag=!login,name=LaiCrownM,scores={login=72546881}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=LaiCrownM,scores={login=72546881}] at @s run tag @s add login
execute as @a[tag=!login,name=loklokpepe,scores={login=1424151998}] at @s run tp @s 5949 63 6025
execute as @a[tag=!login,name=loklokpepe,scores={login=1424151998}] at @s run gamemode creative @s
execute as @a[tag=!login,name=loklokpepe,scores={login=1424151998}] at @s run tellraw @s "§c成功解除門禁!"
execute as @a[tag=!login,name=loklokpepe,scores={login=1424151998}] at @s run tag @s add login
execute as @a[tag=!login,name=Mt_Strawberry,scores={login=1570366041}] at @s run tp @s 5949 63 6025
execute as @a[tag=!login,name=Mt_Strawberry,scores={login=1570366041}] at @s run gamemode creative @s
execute as @a[tag=!login,name=Mt_Strawberry,scores={login=1570366041}] at @s run tellraw @s "§c成功解除門禁!"
execute as @a[tag=!login,name=Mt_Strawberry,scores={login=1570366041}] at @s run tag @s add login
execute as @a[tag=!login,name=Tommy_Bm1,scores={login=1416223058}] at @s run tp @s 5949 63 6025
execute as @a[tag=!login,name=Tommy_Bm1,scores={login=1416223058}] at @s run gamemode creative @s
execute as @a[tag=!login,name=Tommy_Bm1,scores={login=1416223058}] at @s run tellraw @s "§c成功解除門禁!"
execute as @a[tag=!login,name=Tommy_Bm1,scores={login=1416223058}] at @s run tag @s add login
execute as @a[tag=!login,name=TEST001,scores={login=1002480020}] at @s run tp @s 5949 63 6025
execute as @a[tag=!login,name=TEST001,scores={login=1002480020}] at @s run gamemode creative @s
execute as @a[tag=!login,name=TEST001,scores={login=1002480020}] at @s run tellraw @s "§c成功解除門禁!"
execute as @a[tag=!login,name=TEST001,scores={login=1002480020}] at @s run tag @s add login
execute as @a[tag=!login,name=Erick_fox,scores={login=1456255757}] at @s run tp @s 5949 63 6025
execute as @a[tag=!login,name=Erick_fox,scores={login=1456255757}] at @s run gamemode creative @s
execute as @a[tag=!login,name=Erick_fox,scores={login=1456255757}] at @s run tellraw @s "§c成功解除門禁!"
execute as @a[tag=!login,name=Erick_fox,scores={login=1456255757}] at @s run tag @s add login
execute as @a[tag=!login,name=CodingBear_TW,scores={login=97822}] at @s run tp @s 2000 200 2000
execute as @a[tag=!login,name=CodingBear_TW,scores={login=97822}] at @s run gamemode creative @s
execute as @a[tag=!login,name=CodingBear_TW,scores={login=97822}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=CodingBear_TW,scores={login=97822}] at @s run tag @s add login
execute as @a[tag=!login,name=Shiaw0729,scores={login=1748839426}] at @s run tp @s 5949 63 6025
execute as @a[tag=!login,name=Shiaw0729,scores={login=1748839426}] at @s run gamemode creative @s
execute as @a[tag=!login,name=Shiaw0729,scores={login=1748839426}] at @s run tellraw @s "§c成功解除門禁!"
execute as @a[tag=!login,name=Shiaw0729,scores={login=1748839426}] at @s run tag @s add login
execute as @a[tag=!login,name=justin_lai,scores={login=21634}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=justin_lai,scores={login=21634}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=justin_lai,scores={login=21634}] at @s run tag @s add login
execute as @a[tag=!login,name=Justin_jerry,scores={login=17581}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=Justin_jerry,scores={login=17581}] at @s run tellraw @s "\u00a7c成功除門禁!"
execute as @a[tag=!login,name=Justin_jerry,scores={login=17581}] at @s run tag @s add login
execute as @a[tag=!login,name=coolshing,scores={login=95135}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=coolshing,scores={login=95135}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=coolshing,scores={login=95135}] at @s run tag @s add login
execute as @a[tag=!login,name=xXJeraOXO,scores={login=1024}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=xXJeraOXO,scores={login=1024}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=xXJeraOXO,scores={login=1024}] at @s run tag @s add login
execute as @a[tag=!login,name=KING_O3O,scores={login=20147255}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=KING_O3O,scores={login=20147255}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=KING_O3O,scores={login=20147255}] at @s run tag @s add login
execute as @a[tag=!login,name=CobeBryant,scores={login=1468703}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=CobeBryant,scores={login=1468703}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=CobeBryant,scores={login=1468703}] at @s run tag @s add login
execute as @a[tag=!login,name=Austin0113,scores={login=2678111}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=Austin0113,scores={login=2678111}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=Austin0113,scores={login=2678111}] at @s run tag @s add login
execute as @a[tag=!login,name=k142580k,scores={login=3615942}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=k142580k,scores={login=3615942}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=k142580k,scores={login=3615942}] at @s run tag @s add login
execute as @a[tag=!login,name=Quentin2017_TW,scores={login=84652312}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=Quentin2017_TW,scores={login=84652312}] at @s run tellraw @s "\u00a7c成功除門禁!"
execute as @a[tag=!login,name=Quentin2017_TW,scores={login=84652312}] at @s run tag @s add login
execute as @a[tag=!login,name=AmberYcat,scores={login=6482746}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=AmberYcat,scores={login=6482746}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=AmberYcat,scores={login=6482746}] at @s run tag @s add login
execute as @a[tag=!login,name=ChenBother,scores={login=21721031}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=ChenBother,scores={login=21721031}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=ChenBother,scores={login=21721031}] at @s run tag @s add login
execute as @a[tag=!login,name=loklokpepe,scores={login=346456463}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=loklokpepe,scores={login=346456463}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=loklokpepe,scores={login=346456463}] at @s run tag @s add login
execute as @a[tag=!login,name=NOISY0814,scores={login=158440031}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=NOISY0814,scores={login=158440031}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=NOISY0814,scores={login=158440031}] at @s run tag @s add login
execute as @a[tag=!login,name=Sa_liva,scores={login=14699007}] at @s run tp @s 2000 190 2001
execute as @a[tag=!login,name=Sa_liva,scores={login=14699007}] at @s run tellraw @s "\u00a7c成功解除門禁!"
execute as @a[tag=!login,name=Sa_liva,scores={login=14699007}] at @s run tag @s add login
#-----傳送門的部份
execute as @a[x=88028,y=23,z=87999,dx=0,dy=4,dz=3] at @s run tellraw @s "\u00a76【\u00a7c系統\u00a76】\u00a77已成功傳送至 \u00a7a原始叢林 \u00a77。"
execute as @a[x=88028,y=23,z=87999,dx=0,dy=4,dz=3] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 10000000 1
execute as @a[x=88028,y=23,z=87999,dx=0,dy=4,dz=3] at @s run execute as @s at @s run teleport @s 500000 100 500008 ~-90 ~
execute as @a[x=499998,y=99,z=500009,dx=3,dy=4,dz=0] at @s run tellraw @s "\u00a76【\u00a7c系統\u00a76】\u00a77已成功傳送至 \u00a7a副本大廳 \u00a77。"
execute as @a[x=499998,y=99,z=500009,dx=3,dy=4,dz=0] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 10000000 1
execute as @a[x=499998,y=99,z=500009,dx=3,dy=4,dz=0] at @s run execute as @s at @s run teleport @s 88027 24 88001 ~90 ~
#----
execute as @e[name=item.item.arrow,type=minecraft:item,x=499937,y=87,z=499948,dx=200,dy=200,dz=200] at @s run kill @s
execute as @e[name=item.item.bone,type=minecraft:item,x=499937,y=87,z=499948,dx=200,dy=200,dz=200] at @s run kill @s
execute as @e[name=item.item.coal,type=minecraft:item,x=499937,y=87,z=499948,dx=200,dy=200,dz=200] at @s run kill @s
execute as @e[name=item.item.rottenFlesh,type=minecraft:item,x=499937,y=87,z=499948,dx=200,dy=200,dz=200] at @s run kill @s
execute as @e[name=item.item.skull.wither,type=minecraft:item,x=499937,y=87,z=499948,dx=200,dy=200,dz=200] at @s run kill @s
