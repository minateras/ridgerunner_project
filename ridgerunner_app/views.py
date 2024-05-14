import os
import dotenv
import requests
from django.core.mail import send_mail
from django.shortcuts import render
from django.utils.translation import gettext
from .forms import ContactForm
from .models import (CompetitionResult, Dog, LocalizedAward, LocalizedCongratulations, LocalizedDog, LocalizedLink, LocalizedLitter, LocalizedPost, LocalizedUnofficialTitle)
from .templatetags import filters


dotenv.load_dotenv() # Load environment variables.


def news(request):
    posts = LocalizedPost.get_all()
    congratulations = LocalizedCongratulations.get_all()
    context = {
        'posts': posts,
        'congratulations': congratulations,
    }
    return render(request, 'ridgerunner_app/news.html', context)


def dogs(request):
    females = Dog.get_my_females()
    males = Dog.get_my_males()
    context = {
        'females': females,
        'males': males,
    }
    return render(request, 'ridgerunner_app/dogs.html', context)


def dog(request, kennel_name):
    kennel_name = filters.switch_underscores_to_spaces(kennel_name).title()
    dog = LocalizedDog.get_dog(kennel_name)
    unofficial_titles = LocalizedUnofficialTitle.get_unofficial_titles(kennel_name)
    awards = LocalizedAward.get_awards(kennel_name)
    competition_results = CompetitionResult.get_competition_results(kennel_name)
    links = LocalizedLink.get_links(kennel_name=kennel_name)
    litters = LocalizedLitter.get_litters_of_dog(kennel_name)
    context = {
        'dog': dog,
        'unofficial_titles': unofficial_titles,
        'awards': awards,
        'competition_results': competition_results,
        'links': links,
        'litters': litters,
    }
    return render(request, 'ridgerunner_app/dog.html', context)


def puppies(request):
    litter = LocalizedLitter.get_planned_litter()
    links = LocalizedLink.get_links()
    context = {
        'litter': litter,
        'links': links,
        'offspring': litter.litter.offspring.all(),
    }
    return render(request, 'ridgerunner_app/litter.html', context)


def litters(request):
    litters = LocalizedLitter.get_litters()
    context = {
        'litters': litters,
    }
    return render(request, 'ridgerunner_app/litters.html', context)


def litter(request, letter):
    letter = letter[0].upper()
    litter = LocalizedLitter.get_litter(letter)
    links = LocalizedLink.get_links(letter=letter)
    context = {
        'litter': litter,
        'links': links,
        'offspring': litter.litter.offspring.all(),
    }
    return render(request, 'ridgerunner_app/litter.html', context)


def about_us(request):
    context = {}
    return render(request, 'ridgerunner_app/about_us.html', context)


def contact_us(request):
    context = {
        'RECAPTCHA_SITE_KEY': os.getenv('RECAPTCHA_SITE_KEY'),
        'success_message': None,
        'first_name': None,
        'first_name_error_message': None,
        'last_name': None,
        'last_name_error_message': None,
        'email': None,
        'email_error_message': None,
        'tel': None,
        'tel_error_message': None,
        'subject': None,
        'subject_error_message': None,
        'message': None,
        'message_error_message': None,
        'recaptcha_error_message': None,
    }
    status = 200
    if request.method == 'POST':
        contact_form = ContactForm(request.POST)
        if contact_form.is_valid():
            # Validate reCAPTCHA:
            params = {
                'secret': os.getenv('RECAPTCHA_SECRET_KEY'),
                'response': request.POST['g-recaptcha-response'],
            }
            response = requests.post('https://www.google.com/recaptcha/api/siteverify', params=params).json()
            success = response['success']
            if success:
                status = 201
                context['success_message'] = gettext('Your message was successfully sent! We\'ll get back to you shortly.')
                send_mail(
                    contact_form.data['subject'],
                    f"FROM...\nFirst name: {contact_form.data['first_name']}\nLast name: {contact_form.data['last_name']}\nEmail: {contact_form.data['email']}\nTel: {contact_form.data['tel'] if len(contact_form.data['tel']) > 0 else '...'}\n\n{contact_form.data['message']}",
                    os.getenv('EMAIL_HOST_USER'),
                    (os.getenv('EMAIL_HOST_USER'), ),
                )
            else: context['recaptcha_error_message'] = gettext('Your reCAPTCHA response couldn\'t be verified.')
        if status != 201:
            status = 400
            for key in contact_form.data.keys():
                if key in context.keys():
                    context[key] = contact_form.data[key]
            for key in contact_form.errors.as_data().keys():
                context[f'{key}_error_message'] = '\n'.join(str(error.message) for error in contact_form.errors.as_data()[key])
            print(context)
    return render(request, 'ridgerunner_app/contact_us.html', context, status=status)
