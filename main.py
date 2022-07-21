#program init
import discord
from discord.ext import commands
from discord.utils import get
from FTP import *
import time
import os
import random
import keep_alive
import requests
REPAIR = False
topic_list = ['太空艙 https://cityofuniversefileserver.mcg25035.repl.co/JnwI-fxwrhpm2778344.jpg','火箭 https://cityofuniversefileserver.mcg25035.repl.co/1596435762_24508_ikBE.png','國際太空站 https://cityofuniversefileserver.mcg25035.repl.co/dGh1bWJuYWlsPTY0MCUyQyZxdWFsaXR5PTgwJmltYWdlX3VyaT1odHRwcyUzQSUyRiUyRnMueWltZy5j.jpg','彗星 https://cityofuniversefileserver.mcg25035.repl.co/下載.jpg','火星表面 https://cityofuniversefileserver.mcg25035.repl.co/1nFjML115948_3242150.jpg']

plan_topic_list = ['伺服器一周年活動\n說明:請設計為伺服器一週年的活動，活動內容不限制，任何天馬行空，只要你可以想得出來都可以。\n註:圖片僅供格式及結構參考，可能跟題目主題無關\nhttps://cityofuniversefileserver.mcg25035.repl.co/22.png','跨年活動(大型)\n說明:每年度的跨年活動都令大家非常期待，伺服器也希望帶著不想出門的大家也有個快樂的跨年。請設計一個可以擴及整個伺服器的大型活動，可以設計怪物、地圖等等。\n註:圖片僅供格式及結構參考，可能跟題目主題無關\nhttps://cityofuniversefileserver.mcg25035.repl.co/22.png','跨年煙火設計\n說明:煙火是每個跨年精采之處，請設計出一個完整的煙火活動出來，可以使用TNT或是煙火都可以。內容除了煙火的版型、樣式外，包含動線、獎勵等等也必須包含在內容中。\n註:圖片僅供格式及結構參考，可能跟題目主題無關\nhttps://cityofuniversefileserver.mcg25035.repl.co/22.png','隨機任務設計\n說明:不時的驚喜，可以為玩家帶來點樂趣。請設計一個完整的任務，可以包含整個跟這個任務有關聯的活動。\n註:圖片僅供格式及結構參考，可能跟題目主題無關\nhttps://cityofuniversefileserver.mcg25035.repl.co/22.png','平凡一天\n說明:請在設計一個在行事曆上無任何特殊、值得慶祝、紀念的日子，策劃一場活動。可以是你的生日、也可以是你喜愛的人的生日，而在最後必須附上你選這天的理由。\n註:圖片僅供格式及結構參考，可能跟題目主題無關\nhttps://cityofuniversefileserver.mcg25035.repl.co/22.png','跨年活動(小型)\n說明: 每年度的跨年活動都令大家非常期待，伺服器也希望帶著不想出門的大家也有個快樂的跨年。請設計一張跨年地圖，內容必須設計怪物、地圖等等，也可以暗藏玄機。\n註:圖片僅供格式及結構參考，可能跟題目主題無關\nhttps://cityofuniversefileserver.mcg25035.repl.co/22.png']
job_list = ['建築師', '企劃師']
#discord.py init
bot = commands.Bot(command_prefix='')
client = discord.Client()


@bot.event
async def on_ready():
	print(">>Bot is Online<<")


#@bot.command()
#async def admin_build_check(ctx):
@bot.command()
async def claimfile(ctx, a: str):
  c01888=a
  if os.path.isfile(str(ctx.author.id)+'_DATA.botdata'):
    f = open(str(ctx.author.id) + '_DATA.botdata', 'r+')
    count = len(f.readlines())
    f.close()
    if count < 2:
      await ctx.send(':middle_finger:不要唬爛，你根本沒有上傳檔案。')
    else:
      file_url = 'https://cityofuniversefileserver.mcg25035.repl.co/' + a
      f = open('plan_wait_check', 'r+')
      a = f.read()
      f.close()
      f = open('plan_wait_check', 'w')
      f.write(a+'\n'+'<@!' + str(ctx.author.id) + '>-' + file_url)
      await ctx.send('成功認領檔案!\n你的檔名為'+c01888+'\n應徵流程已經結束，請稍等伺服器管理人員進行審核')


@bot.command()
async def 企劃審核(ctx, a: str):
  if a == 'COU006123':
    f = open('plan_wait_check','r+')
    await ctx.send('正在列出審核的企劃列表')
    aaaa = f.readlines()
    print(aaaa)
    for i in aaaa:
      if not i=='\n':
        print('test'+i)
        await ctx.send(i)
      time.sleep(0.3)
    f.close()
    await ctx.send('列出完成')

@bot.command()
async def 建築審核(ctx, a: str):
  if a == 'COU006123':
    f = open('build_wait_check','r+')
    await ctx.send('正在列出審核的建築列表')
    aaaa = f.readlines()
    print(aaaa)
    for i in aaaa:
      if not i=='\n':
        print('test'+i)
        await ctx.send(i)
      time.sleep(0.3)
    f.close()
    await ctx.send('列出完成')

@bot.command()
async def build_done(ctx):
  if REPAIR == True:
    await ctx.send(':x:Sorry,bot is in maintenance,please try later.\n很抱歉，本機器人目前正在維護中，請稍後在嘗試此指令。')
  elif os.path.isfile(str(ctx.author.id) + '_DATA.botdata'):
    f = open(str(ctx.author.id) + '_DATA.botdata', 'r+')
    acc = f.readlines()
    count = len(acc)
    if count < 3:
      await ctx.send(':middle_finger:不要唬爛，你根本沒有進去蓋。')
      f.close()
    else:
      username = acc[1]
      topic = acc[2]
      f.close()
      f = open('build_wait_check','r+')
      a = f.read()
      f.close()
      f = open('build_wait_check', 'w')
      f.write(a+'\n'+'<@!' + str(ctx.author.id) + '>-'+topic)
      f.close()
      await ctx.send('成功登記!')
  else:
    await ctx.send(':middle_finger:不要唬爛，你根本沒有進去蓋。')

@bot.command()
async def plan_topic_claim(ctx):
  if REPAIR == True:
    await ctx.send(':x:Sorry,bot is in maintenance,please try later.\n很抱歉，本機器人目前正在維護中，請稍後在嘗試此指令。')
  elif os.path.isfile(str(ctx.author.id) + '_DATA.botdata'):
    f = open(str(ctx.author.id) + '_DATA.botdata', 'r+')
    b = f.read()
    b = b.split('\n')
    if b[0] == '企劃師':
      user = await bot.fetch_user(ctx.author.id)
      nn = random.randint(0, 5)
      await user.send('你的考試題目為' + plan_topic_list[nn])
      f = open(str(ctx.author.id) + '_DATA.botdata', 'r+')
      a2147483647 = f.read()
      a2147483647 = a2147483647 + '\n' + plan_topic_list[nn]
      f.close()
      f = open(str(ctx.author.id) + '_DATA.botdata', 'w')
      f.write(a2147483647)
      f.close()
      await user.send('企劃完成時，請至https://cityofuniversefileserver.mcg25035.repl.co/index.php 繼續應徵流程')
    else:
     await ctx.send(':x:您目前的應徵流程並不支援登記企劃題目領取的功能')
  else:
     await ctx.send(':x:您目前的應徵流程並不支援登記企劃題目領取的功能')
@bot.command()
async def username(ctx, a: str):
  if REPAIR == True:
    await ctx.send(':x:Sorry,bot is in maintenance,please try later.\n很抱歉，本機器人目前正在維護中，請稍後在嘗試此指令。')
  elif os.path.isfile(str(ctx.author.id) + '_DATA.botdata'):
    f = open('usernamelist', 'r+')
    b = f.read()
    b = b.split('\n')
    f = open(str(ctx.author.id)+'_DATA.botdata', 'r+')
    bc = f.read()
    bc = bc.split('\n')
    if a in b:
      await ctx.send(':x:你輸入的遊戲ID與他人重疊,或是你已經使用過本功能')
    elif bc[0] == '建築師':
      try:
        await ctx.send(':hourglass_flowing_sand:資料處理中，請稍後')
        nn = random.randint(1, 2147483647)
        FTP(a, str(nn))
      except:
        await ctx.send('目前COU遊戲伺服器無法連線，請私訊目前在線上的管理員')
        os.remove(str(ctx.author.id) + '_DATA.botdata')
      else:
        f = open(str(ctx.author.id) + '_DATA.botdata', 'r+')
        c = f.read().split('\n')[0]
        f.close()
        f = open(str(ctx.author.id) + '_DATA.botdata', 'w')
        f.write(c + '\n' + a)
        f.close()
        f = open('usernamelist', 'r+')
        tt = f.read() + '\n' + a
        f.close()
        f = open('usernamelist', 'w')
        f.write(tt)
        f.close()
        user = await bot.fetch_user(ctx.author.id)
        await ctx.send(':white_check_mark:ID已成功登記')
        await user.send('你的門禁密碼是' + str(nn) + '\n請牢記，進入伺服器會用到')
        await user.send('你可以在20分鐘後進入伺服器考試，ip為```qaz02546sd.servegame.com:64654```\n版本1.16.4')
        nn = random.randint(0, 4)
        await user.send('你的考試題目為' + topic_list[nn])
        f = open(str(ctx.author.id) + '_DATA.botdata', 'r+')
        a2147483647 = f.read()
        a2147483647 = a2147483647 + '\n' + topic_list[nn]
        f.close()
        f = open(str(ctx.author.id) + '_DATA.botdata', 'w')
        f.write(a2147483647)
        await user.send('建造完成時，請密我以下訊息```build_done```')
    else:
      await ctx.send(':x:您目前的應徵流程並不支援登記遊戲ID的功能')
  else:
    await ctx.send(':x:您目前的應徵流程並不支援登記遊戲ID的功能')



@bot.command()
async def clearmydata(ctx):
	if REPAIR == True:
		await ctx.send(
		    ':x:Sorry,bot is in maintenance,please try later.\n很抱歉，本機器人目前正在維護中，請稍後在嘗試此指令。'
		)
	elif os.path.isfile(str(ctx.author.id) + '_DATA.botdata'):
		f = open(str(ctx.author.id) + '_DATA.botdata', 'r')
		fread = f.read()
		d = fread.split('\n')
		if len(d) >= 2:
			a = d[1]
			f.close()
			os.remove(str(ctx.author.id) + '_DATA.botdata')
			f = open('usernamelist', 'r+')
			fread = f.read()
			f.close()
			f = open('usernamelist', 'w')
			f.write(fread.replace('\n' + a, '').replace(a, ''))
			f.close()
		else:
			f.close()
			os.remove(str(ctx.author.id) + '_DATA.botdata')

		await ctx.send(':white_check_mark:已重置!')
	else:
		await ctx.send(':white_check_mark:已重置!')


@bot.command()
async def 我要應徵(ctx, a: str):
  if REPAIR == True:
    await ctx.send(':x:Sorry,bot is in maintenance,please try later.\n很抱歉，本機器人目前正在維護中，請稍後在嘗試此指令。') 
  elif os.path.isfile(str(ctx.author.id) + '_DATA.botdata'):
    await ctx.send(':x:應徵流程不可逆錯誤，請使用```clearmydata```重置跟你Discord帳戶連結的資料')
  elif a in job_list:
    f = open(str(ctx.author.id) + '_DATA.botdata', 'w+')
    f.write(a)
    f.close()
    if a == '建築師':
      await ctx.send(':thumbsup:好的,請輸入```username <你的遊戲ID>```來繼續應徵')
    elif a == '企劃師':
      await ctx.send(':thumbsup:好的,請輸入```plan_topic_claim```來繼續應徵')
  else:
    await ctx.send(':x:目前自動化應徵流程不支援 ' + a + ' 這個職位，可以自動化應徵的職位只有' +str(job_list).replace("'", "").replace(",", "、").replace("[", "").replace("]", "")+"你可以試試看向<@&663262584912478220>詢問")


keep_alive.keep_alive()
bot.run('botkey')
