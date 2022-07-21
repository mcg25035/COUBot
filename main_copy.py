#program init
import discord
from discord.ext import commands
from discord.utils import get
import os
import random
import keep_alive

#discord.py init
bot = commands.Bot(command_prefix='')
client = discord.Client()

#未編寫雲端連線得暫時資料
job_list = ['企劃師','武器師','管理員','服務人員','建築師','指令師','美工','材質包繪畫師']
planner_question = ['請依照以下敘述做出一個企劃文件:\n```題目一```\n題目設計者給你的提示:```提示1```\n繳交方法:請匯出為pdf檔，並繳交至(url)，並且回到這裡輸入:```繳交 (在網頁內拿到的文件碼)```','請依照以下敘述做出一個企劃文件:\n```題目二```\n題目設計者給你的提示:```提示2```\n繳交方法:請匯出為pdf檔，並繳交至(url)，並且回到這裡輸入:```繳交 (在網頁內拿到的文件碼)```','請依照以下敘述做出一個企劃文件:\n```題目三```\n題目設計者給你的提示:```提示3```\n繳交方法:請匯出為pdf檔，並繳交至(url)，並且回到這裡輸入:```繳交 (在網頁內拿到的文件碼)```','請依照以下敘述做出一個企劃文件:\n```題目四```\n題目設計者給你的提示:```提示4```\n繳交方法:請匯出為pdf檔，並繳交至(url)，並且回到這裡輸入:```繳交 (在網頁內拿到的文件碼)```','請依照以下敘述做出一個企劃文件:\n```題目五```\n題目設計者給你的提示:```提示5```\n繳交方法:請匯出為pdf檔，並繳交至(url)，並且回到這裡輸入:```繳交 (在網頁內拿到的文件碼)```']
@bot.event
async def on_ready():
    print(">>Bot is Online<<")
@bot.command()
async def 我要應徵(ctx,a:str):
  #這裡繼續寫
  if #google sheet exist ctx.author.id:
    await ctx.send(#error_message_have_been_use_this_command_before)
  else:
    if a not in job_list:
      await ctx.send(':x:你所要應徵得職位不在需求列表,目前可以應徵的職位只有'+str(job_list).replace('[','').replace(']','').replace(',','、').replace("'",''))
    else:
      #add ctx.author.id to google sheet
      #type = a
      #write setup = 1
      await ctx.send(#change_to_web_to_continue_application)
@bot.command():
  async def 
keep_alive.keep_alive()
bot.run('NzYzNzYxNzA0MjIzMjQ0Mjk4.X38ahA.vMRlItu1EVjSbwmnipQRbCO3IV4')