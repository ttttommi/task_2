# Використовуваний компілятор
COMPILER = g++

# Опції компіляції для виведення попереджень і встановлення стандарту
COMPILER_FLAGS = -Wall -Wextra -std=c++11

# Назва виконуваного файлу
OUTPUT = calculator_app

# Список вихідних файлів
SOURCES = main.cpp calculator.cpp

# Список об'єктних файлів, що будуть створені з вихідних
OBJECTS = $(SOURCES:.cpp=.o)

# Збірка основного виконуваного файлу
$(OUTPUT): $(OBJECTS)
	$(COMPILER) $(COMPILER_FLAGS) -o $(OUTPUT) $(OBJECTS)

# Правило для компіляції кожного вихідного файлу окремо
%.o: %.cpp
	$(COMPILER) $(COMPILER_FLAGS) -c $< -o $@

# Очищення всіх згенерованих файлів
clean:
	rm -f $(OBJECTS) $(OUTPUT)

# Команда для запуску зібраного проекту
run: $(OUTPUT)
	./$(OUTPUT)
