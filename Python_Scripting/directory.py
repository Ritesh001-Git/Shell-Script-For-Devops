import os
# print(dir(os)) # Prints all the function of os library

# Get current dir
dir = os.getcwd()
print("Current working directory:", dir) 

# Change dir

# Method 1
os.chdir("/Users/riteshswain/Downloads")
os.chdir("../Downloads")
print(f"New directory: {os.getcwd()}")

# Method 2
path = os.path.expanduser("~/Desktop")
os.chdir(path)
print(f"New directory: {os.getcwd()}")

# List files
list = os.listdir(path)
for i in list:
    print(i)

# Create a dir
pathdir = os.path.expanduser("~/Downloads/new_dir")
# 'exist_ok=True' prevents an error if the directory already exists
os.makedirs(pathdir,exist_ok=True)

# Remove a dir
os.rmdir(pathdir)

# walk -> Give a list of every file in every fonder
# os.chdir("/Users/riteshswain/Downloads")
file = os.walk(os.getcwd())
for f in file:
    print(f)




