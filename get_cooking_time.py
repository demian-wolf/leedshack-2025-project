import re

def get_cooking_time(s):
    """
    :param s: The input text (a string) containing the strInstructions
    :return: The total cooking time in minutes as an integer
    """
    sum_minutes = 0
    

    matches = re.findall(r'(\d+)\s*min(?:ute|s)?', s)

    sum_minutes = sum(int(match) for match in matches)

    return sum_minutes

s=input()
print(get_cooking_time(s))
