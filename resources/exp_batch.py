#!/usr/bin/env python

import subprocess
import glob

print("Running Flora-2 on a bunch of files...")
for elem in glob.glob("flora_benchs/*.flr"):
    with open(elem+"_query") as f:
        query = f.read()
    print(elem+"...", end="")
    subprocess.run("/home/hamhec/workspace/argumentation/flora/Flora-2/flora2/runflora --noprompt --quietload --nobanner -e \"['/home/hamhec/workspace/java/defeasible-tools-benchmark/resources/"+elem+"'], "+query+". \halt.\"  > "+elem+"_results", shell=True)
    print("  Done!")

print("It's all done :)")
