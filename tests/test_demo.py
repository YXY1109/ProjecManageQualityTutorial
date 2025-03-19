from src.demo import add_numbers, add_str


def test_add():
    assert add_numbers(2, 3) == 5


def test_add_str():
    assert add_str("aa", "bb") == "aabb"
