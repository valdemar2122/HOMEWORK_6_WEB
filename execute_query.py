import mysql.connector

# Підключення до бази даних
connection = mysql.connector.connect(
    host="localhost", user="root", password="password", database="university"
)

# Створення курсора
cursor = connection.cursor()

# Виконання SQL-запиту з файлу
with open(
    "query_1.sql", "r"
) as file:  # Тут можна підставити будь-який запит із файла із запитами
    sql_query = file.read()
    cursor.execute(sql_query)

result = cursor.fetchall()

for row in result:
    print(row)

# Закриття курсора та з'єднання
cursor.close()
connection.close()
