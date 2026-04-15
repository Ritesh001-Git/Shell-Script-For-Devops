import os

path = os.getcwd()

# Basename
print(os.path.basename('Python_Scripting/directory.py'))

# Parent dir
print(os.path.dirname('Python_Scripting/directory.py'))

# Split the path
print(os.path.split(path))

# Exist
print(os.path.exists(os.path.join(path,'Shell_Scripting')))

if os.path.exists('PythonScripting'):
    os.mkdir('Python_Scripting/dir1')
else:
    print("Dir not exist")

# isfile && isdir
print(os.path.isfile(os.path.join(path,'README.md')))
print(os.path.isdir(os.path.join(path,'Python_Scripting')))

# abspath
print(os.path.abspath('Shell-Script-For-Devops'))

# expantuser - Converts ~ into the full home directory path
print(os.path.abspath(os.path.expanduser('~/Downloads')))

# dirname - Grabs just the folder path, ignoring the filename.
print(os.path.dirname(path))

# splitext - Separates the file extension from the rest
print(os.path.splitext(os.path.join(path,'Python_Scripting','path.py')))

print(os.path.getsize(path))
print(os.path.getmtime(path)) # last access time
print(os.path.getatime(path)) # last modification time

