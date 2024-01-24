import psycopg2

# Параметри підключення до бази даних PostgreSQL
db_params = {
    'host': 'localhost',
    'database': 'lab4',
    'user': 'student24',
    'password': '1234',
}

def execute_query(query):
    try:
        # Підключення до бази даних
        connection = psycopg2.connect(**db_params)
        cursor = connection.cursor()

        # Виконання запиту
        cursor.execute(query)
        result = cursor.fetchall()

        # Виведення результату у консоль
        print(result)

    except Exception as e:
        print(f"Error: {e}")

    finally:
        # Закриття з'єднання
        if connection:
            cursor.close()
            connection.close()

# Виконання запитів та виведення результатів
execute_query("SELECT * FROM Book;")  # Запит 2a
execute_query("SELECT * FROM Autor;")  # Запит 2b
execute_query("SELECT * FROM Sale;")  # Запит 2c
