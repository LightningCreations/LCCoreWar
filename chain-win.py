import os
import subprocess

def isWS(char):
    return char == '\r' or char == '\n'

chain = []
scores = []

def runRound(warrior):
    warriorIndex = len(chain)
    chain.append(warrior)
    scores.append(0)
    enemyIndex = -1
    totalNum = len(chain)-1
    for enemy in chain:
        enemyIndex+=1;
        if warrior == enemy:
            continue
        result = subprocess.run(["../pmarsw", "-v", "000", "-r", "250", enemy, warrior], stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout.decode()
        result = result.split('\n')
        for line in result:
            if "Results:" in line:
                result = line
                break
        else:
            result = "ERROR"

        if len(result) > 5: # Not an error
            result = result[9:].split(' ')
            wins = int(result[0])
            losses = int(result[1])
            ties = int(result[2])
            scores[warriorIndex] += losses*3+ties
            scores[enemyIndex] += wins*3+ties

def printScores():
    maxNameLen = 1
    maxScoreLen = 1
    numEntries = len(scores)
    for name, score in zip(chain, scores):
        score = str(score)
        if len(name) > maxNameLen:
            maxNameLen = len(name) + 1
        if len(score) > maxScoreLen:
            maxScoreLen = len(score)

    for name, score in zip(chain, scores):
        score = str(score)
        print(name + ' ' * ((maxNameLen-len(name)) + (maxScoreLen - len(score))) + score)

def writeScores(f):
    maxNameLen = 1
    maxScoreLen = 1
    numEntries = len(scores)
    for name, score in zip(chain, scores):
        score = str(score)
        if len(name) > maxNameLen:
            maxNameLen = len(name) + 1
        if len(score) > maxScoreLen:
            maxScoreLen = len(score)

    for name, score in zip(chain, scores):
        score = str(score)
        f.write(name + ' ' * ((maxNameLen-len(name)) + (maxScoreLen - len(score))) + score + '\n')

warriors = []

with open('warriors.txt', 'r') as f:
    data = f.read()
    dataI = 0
    warriorsI = 0
    while dataI < len(data):
        warriors.append('')
        while not isWS(data[dataI]) and dataI < len(data):
            warriors[warriorsI] += data[dataI]
            dataI+=1
        if(len(warriors[warriorsI]) > 0):
            warriorsI+=1
        else:
            warriors.pop(warriorsI)
        dataI+=1

for warrior in warriors:
    print("Adding " + warrior + " to the hill...\n")
    print("Progress: \n")
    runRound(warrior)
    tmp = sorted(zip(scores, chain), reverse = True)
    scores = [x for x,_ in tmp]
    chain = [x for _,x in tmp]
    printScores()

print("Writing final scores to file...")

with open('scores.txt', 'w') as f:
    writeScores(f)

print("Done!")
