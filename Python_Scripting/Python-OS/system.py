import os


# print(os.uname())
# print(os.getpid())
# print(os.getppid())

# # Any linux command
# print(os.system('ls'))
# print(os.system('df -h'))


# Important OS Environment Functions

# os.environ
# Get a specific variable
user_home = os.environ.get('HOME')
print(f"User home: {user_home}")

db_pass = os.getenv('DB_PASSWORD', 'default_password')
print(db_pass)