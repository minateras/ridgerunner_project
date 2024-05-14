from django import forms
from django.utils.translation import gettext


def get_error_messages(max_length, regex=None):
    return {
        'max_length': gettext(f'Exceeded max length ({max_length} characters).'),
        'invalid': None if regex is None else gettext(f'Please use the following format: {regex}'),
    }


class ContactForm(forms.Form):
    first_name = forms.CharField(error_messages=get_error_messages(25), min_length=1, max_length=25, required=True)
    last_name = forms.CharField(error_messages=get_error_messages(25), min_length=1, max_length=25, required=True)
    email = forms.RegexField(error_messages=get_error_messages(50, 'example@domain.com'), min_length=1, max_length=50, regex=r'[a-z]+@[a-z]+\.[a-z]{2,}', required=True)
    tel = forms.RegexField(error_messages=get_error_messages(25, '+XXXXXXXXXXXXXXX'), max_length=25, regex=r'\+[0-9]{5,15}', required=False)
    subject = forms.CharField(error_messages=get_error_messages(50), min_length=1, max_length=50, required=True)
    message = forms.CharField(error_messages=get_error_messages(10000), min_length=1, max_length=10000, required=True)
