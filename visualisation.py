import psycopg2
import matplotlib.pyplot as plt


db_params = {
    'host': 'localhost',
    'database': 'lab4',
    'user': 'student24',
    'password': '1234',
}

def execute_query(query, plot_type):
    try:
        # Підключення до бази даних
        connection = psycopg2.connect(**db_params)
        cursor = connection.cursor()


        cursor.execute(query)
        result = cursor.fetchall()


        print(result)

        # Побудова візуалізації
        visualize_result(result, plot_type)

    except Exception as e:
        print(f"Error: {e}")

    finally:

        if connection:
            cursor.close()
            connection.close()

def visualize_result(result, plot_type):
    if plot_type == 'pie':
        # Кругова діаграма
        labels = [row[0] for row in result]
        values = [row[1] for row in result]

        plt.pie(values, labels=labels, autopct='%1.1f%%')
        plt.title('Продажі')
        plt.show()

    elif plot_type == 'bar':
        # Стовпчикова діаграма
        labels = [row[0] for row in result]
        values = [row[1] for row in result]

        plt.bar(labels, values)
        plt.xlabel('Назва книги')
        plt.ylabel('Продажі')
        plt.title('Залежність продажів від жанру')
        plt.show()

    elif plot_type == 'line':
        # Графік
        labels = [row[0] for row in result]
        values = [row[1] for row in result]

        plt.plot(labels, values, marker='o')
        plt.xlabel('Назви книг')
        plt.ylabel('Кількість книг')
        plt.title('Кількість книг у жанрі')
        plt.show()

# Виконання запитів та виведення результатів
query_2a = """
    SELECT b.book_name, SUM(s.approximate_sales) 
    FROM Book b
    JOIN Sale s ON b.sale_id = s.sale_id
    GROUP BY b.book_name;
"""

# Query 2b: Joining 'Book' with 'Sale' and summing the sales for each genre
query_2b = """
    SELECT b.genre, SUM(s.approximate_sales) 
    FROM Book b
    JOIN Sale s ON b.sale_id = s.sale_id
    GROUP BY b.genre;
"""

# Query 2c: Joining 'Book' with 'Sale' and summing the sales for each book_name
query_2c = """
    SELECT b.book_name, SUM(s.approximate_sales) 
    FROM Book b
    JOIN Sale s ON b.sale_id = s.sale_id
    GROUP BY b.book_name;
"""

execute_query(query_2a, 'pie')  # Кругова діаграма для book_name
execute_query(query_2b, 'bar')  # Стовпчикова діаграма для genre
execute_query(query_2c, 'line')  # Графік для book_name
