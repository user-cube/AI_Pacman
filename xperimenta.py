import subprocess
import threading
import os
import time
runs=[]
# ( runs, porta)

runs.append((10000000000000, 8080))

game = 1
for r in runs:
    for run_number in range(0, r[0]):
        file = open("results.txt", "a")
        if game == 1:
            print("-------------------------------------Mapa 1-------------------------------------------------")
            print("GAME NUMBER {}".format(game))
            file.write("-------------------------------------Mapa 1-------------------------------------------------\n")
            file.write("Game: {}\n".format(game))
            file.close()
        if game == 52:
            print("-------------------------------------Mapa 2-------------------------------------------------")
            print("GAME NUMBER {}".format(game))
            file.write("-------------------------------------Mapa 2-------------------------------------------------\n")
            file.write("Game: {}\n".format(game))
            file.close()
        if game == 106:
            print("-------------------------------------Mapa 1-------------------------------------------------")
            print("GAME NUMBER {}".format(game))
            file.write("-------------------------------------Mapa 1-------------------------------------------------\n")
            file.write("Game: {}\n".format(game))
            file.close()
        if game == 146:
            print("-------------------------------------Mapa 2-------------------------------------------------")
            print("GAME NUMBER {}".format(game))
            file.write("-------------------------------------Mapa 2-------------------------------------------------\n")
            file.write("Game: {}\n".format(game))
            file.close()
        if game > 1 and game < 52:
            print("GAME NUMBER {}".format(game))
            file.write("Game: {}\n".format(game))
            file.close()
        if game > 52 and game < 106:
            print("GAME NUMBER {}".format(game))
            file.write("Game: {}\n".format(game))
            file.close()
        if game > 106 and game < 146:
            print("GAME NUMBER {}".format(game))
            file.write("Game: {}\n".format(game))
            file.close()
        if game > 146:
            print("GAME NUMBER {}".format(game))
            file.write("Game: {}\n".format(game))
            file.close()
        xterm = 'xterm -hold -e'
        comp_xterm = 'python3 viewer.py --port '+ str(r[1])
        str_xterm = xterm +' "'+ comp_xterm + '"' 
        os.system(str_xterm +'&')
        os.system('python3 student_read.py --port ' + str(r[1]))
        game += 1
        os.system('killall xterm')

x=0
cont=1
media=0
sfile = open("scores.txt", "r")
for r in sfile:
    x+=int(r)
    media=x/cont
    cont+=1

print("Média do jogo: {}".format(media))
