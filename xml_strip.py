import os
from pathlib import Path

useless_deps=["darwin"]
with open(f'{str(Path.home())}/.repo/manifest.xml') as oldfile, open(f'{str(Path.home())}/.repo/manifest_new.xml', 'w') as newfile:
    for line in oldfile:
        if not any(deps in line for deps in useless_deps):
            newfile.write(line)
os.remove(f'{str(Path.home())}/.repo/manifest.xml')
os.rename(f'{str(Path.home())}/.repo/manifest_new.xml',f'{str(Path.home())}/.repo/manifest.xml')
