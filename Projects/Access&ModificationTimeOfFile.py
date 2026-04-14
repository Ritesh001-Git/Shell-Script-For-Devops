import os
from datetime import datetime

file_path = os.getcwd()


# Get the raw epoch times
m_time_raw = os.path.getmtime(file_path)
a_time_raw = os.path.getatime(file_path)

# Convert to readable format
readable_m_time = datetime.fromtimestamp(m_time_raw)
readable_a_time = datetime.fromtimestamp(a_time_raw)

print(f"Last Modified: {readable_m_time}")
print(f"Last Accessed: {readable_a_time}")