def get_cooking_time(s):
    """
    :param s: The input text (a string) containing the strInstructions
    :return: The total cooking time in minutes as an integer
    """
    sum_minutes = 0
    lines = s.split('\n')

    for line in lines:
        if 'minutes' or 'minute' in line:
            words = line.split()
            for i in range(len(words)):
                if words[i] == 'minutes' or words[i]=='minute' and i > 0:
                    try:
                        sum_minutes += int(words[i-1])
                    except ValueError:
                        pass
    return sum_minutes
