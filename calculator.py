class Calculator:
    """Простой калькулятор для выполнения основных арифметических операций."""

    @staticmethod
    def add(a, b):
        """Возвращает сумму двух чисел."""
        return a + b

    @staticmethod
    def subtract(a, b):
        """Возвращает разность двух чисел."""
        return a - b

    @staticmethod
    def multiply(a, b):
        """Возвращает произведение двух чисел."""
        return a * b

    @staticmethod
    def divide(a, b):
        """Возвращает частное от деления двух чисел.

        Raises:
            ValueError: если делитель равен нулю.
        """
        if b == 0:
            raise ValueError("Деление на ноль невозможно")
        return a / b
