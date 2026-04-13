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




