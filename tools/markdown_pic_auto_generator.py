import os
dst_path = './pic'
ext_name = 'png'
for r, d, files in os.walk(dst_path):
    for file in files:
        if file.endswith(ext_name):
            print('><img src="./images/演示截图/' + file + '"/>')
            print('>')
            print('>**' + file[:-4] + '**')
            print()