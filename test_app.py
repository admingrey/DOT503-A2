# test_app.py
import unittest

def hello_devops():
    return "Welcome to DevOps Tools class!"

def add_function(a, b):
    return a + b

def divide_function(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero!")
    return a / b

class TestApp(unittest.TestCase):
    def test_hello_devops(self):
        self.assertEqual(hello_devops(), "Welcome to DevOps Tools class!")  # Pass

    def test_add_func(self):
        self.assertEqual(add_function(1, 2), 3)  # Pass

    def test_divide_func(self):
        self.assertEqual(divide_function(10, 2), 5)  # Pass

    def test_fail_hello_devops(self):
        self.assertEqual(hello_devops(), "Welcome to DevOps Tools!")  # Fail

    def test_fail_add_func(self):
        self.assertEqual(add_function(1, 2),4 )  # Fail

if __name__ == "__main__":
    unittest.main()
