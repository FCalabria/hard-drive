---
title: "Js differences"
date: 2019-11-18T12:47:40+02:00
weight: 1
---

- `True` and `False` are uppercase.
- `and`, `or`, `is` and `not` are keywords to compare and negate.
- `None` is an object. Always compare with `is` instead of `==`.
- Using boolean logical operators on ints casts them to booleans for evaluation, but their non-cast value is returned. Don't mix up with `bool(ints)` and `&` or `|`.

```python
bool(4)     # => True
bool(-6)    # => True
0 and 2     # => 0
-5 or 0     # => -5
```

- You can chain `<` and so.

```python
1 < 2 and 2 < 3
# Is the same as
1 < 2 < 3
```

- `==` checks the value, `is` checks the reference.

```python
a = [1, 2, 3, 4]
b = [1, 2, 3, 4]  # Point b at a new list, [1, 2, 3, 4]
b is a            # => False
b == a            # => True
```

- `len("This returns the string length")`
- Different ways to format strings on Python3:

```python
"{} can be {}".format("Strings", "interpolated")  # => "Strings can be interpolated"
"{0} be nimble, 0} jump over the {1}".format("Jack", "candle stick")
# => "Jack be nimble, Jack jump over the candle stick"
"{name} wants to eat {food}".format(name="Bob", food="lasagna")  # => "Bob wants to eat lasagna"
```

- Getting user input: `some_variable = input("Give me your input: ")`.
- No variable declaration, just assign.

## Lists

- Mainly work as arrays. Index start at 0.
- `some_list[-1]` will get the last element.
- Looking for inexistent index throws an error.
- `some_list[1:3]` will get the range between 1 and 3.
- `some_list[2:]` will get all the elements starting from the index 2.
- `some_list[::2]` will get every second entry.
- `some_list[::-1]` will get the list in reversed order.

- `some_list.remove("Element with this text")`
- `del some_list[0]` removes the first element
