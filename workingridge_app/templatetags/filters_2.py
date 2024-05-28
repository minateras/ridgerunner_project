from django import template


register = template.Library()


@register.filter
def is_even(number):
    return number % 2 == 0


@register.filter
def is_odd(number):
    return number % 2 > 0


@register.filter
def string_to_list(string):
    return string.split(', ')
