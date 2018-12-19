x=0
cont=1
media=0
sfile = open("scores.txt", "r")
for r in sfile:
    x+=int(r)
    media=x/cont
    cont+=1

print("Média do jogo: {}".format(media))
