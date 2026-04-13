# The Challenge: "The Log Organizer"
# Scenario: Your application generates log files in your project folder, but it’s getting messy. You need to write a script that identifies certain files and moves them into a dedicated "Backup" folder.

# Your Task:
# Print your starting location.
# Create a nested directory structure called backups/logs/old.
# List all files in your current directory.
# Identify any file ending in .log or .txt.
# Change your working directory into that new backups/logs/old folder.
# Verify you are in the new location by printing the path.

import os

sourceDir = os.getcwd()
print("Current location",sourceDir)

destinationDir = os.path.expanduser("~/downloads/backups/logs/old")
os.makedirs(destinationDir,exist_ok=True)

list = os.listdir()
for file in list:
    if file.endswith(".log") or file.endswith(".txt"):

        source_path = os.path.join(sourceDir,file)
        destination_path = os.path.join(destinationDir,file)

        os.rename(source_path,destination_path)
        print(f"Moved: {file} -> {destination_path}")


print("Done! All logs and text files have been moved.")

