import sys
import sqlite3

source_conn = sqlite3.connect(r'..\instance\meals.db')
source_cursor = source_conn.cursor()

# Open a file to dump the SQL
with open('dump.sql', 'w', encoding="utf-8") as f:
    for line in source_conn.iterdump():
        f.write(f'{line}\n')
# Close the connection to the source database
source_conn.close()
 
destination_conn = sqlite3.connect(r'.\instance\backend2.db')
destination_cursor = destination_conn.cursor()
with open('dump.sql', 'r', encoding='utf-8') as f:
    destination_cursor.executescript(f.read())# Commit changes and close the connection
destination_conn.commit()
destination_conn.close()
