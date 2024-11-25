import sqlite3

connection = sqlite3.connect('chinook.db')
cursor = connection.cursor()

# Sanitize Input
favorite_artist = ('Miles Davis',)
result_set = cursor.execute('SELECT * FROM Track WHERE Composer =?',favorite_artist)

print(result_set.fetchone())

cursor.close()
connection.close()