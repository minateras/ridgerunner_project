from django import template


register = template.Library()


@register.filter
def format_date(date):
    if date is None: return date
    values = (date.year, f'{date.month:02}', f'{date.day:02}')
    return '-'.join(map(str, values))


@register.filter
def format_elbows(elbows, language_code):
    if language_code == 'sv':
        return f"ED {'ua' if elbows.result == '0/0' else elbows.result[2]} ({elbows.result.replace('/', '+')})"
    return elbows.result


@register.filter
def format_hip_joints(hip_joints, language_code):
    if language_code == 'sv':
        return f'HD grad {hip_joints.result[2]}'
    return hip_joints.result


@register.filter
def format_list(list):
    string = None
    for index in range(0, len(list)):
        value = list[index]
        if index == 0:
            string = value
        elif index == len(list) - 1:
            string += ' & ' + value
        else:
            string += ', ' + value
    return string


@register.filter
def get_flag_emoji(country):
    match country.country_code:
        case 'NO':
            return '🇳🇴'
        case 'PL':
            return '🇵🇱'
        case _:
            return '🇸🇪'


@register.filter
def switch_spaces_to_code(string):
    return string.replace(' ', '&nbsp;')


@register.filter
def switch_spaces_to_underscores(string):
    return string.replace(' ', '_')


@register.filter
def switch_underscores_to_spaces(string):
    return string.replace('_', ' ')


@register.filter
def tba(value):
    if value == None:
        return 'TBA'
    try:
        return value.result # If genetic test.
    except:
        return value


@register.filter
def with_explanations(image_file):
    file_extension = '.png'
    return f'{image_file.split(file_extension)[0]}_2{file_extension}'
