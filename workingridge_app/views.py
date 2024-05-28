import json

from django.shortcuts import render

from .models import CompetitionResult2, Dog2, Kennel2, Sport2


def workingridge(request):
    sport = [0, 'Samtliga']
    exclusive = 0
    position = str(0)
    min_number_of_titles = None
    exclude_blood_tracking = False
    if request.method == 'POST':
        print(request.POST)
        if request.POST.get('sport') is not None:
            sport = json.loads(request.POST['sport'])
        if request.POST.get('exclusive') is not None:
            exclusive = 1 if request.POST['exclusive'] == 'on' or request.POST['exclusive'] == str(1) else 0
        if request.POST.get('position') is not None:
            position = request.POST['position']
        if request.POST.get('min_number_of_titles') is not None:
            min_number_of_titles = int(request.POST['min_number_of_titles'])
        if request.POST.get('exclude_blood_tracking') is not None:
            exclude_blood_tracking = True if request.POST['exclude_blood_tracking'] == 'on' else False
    date = CompetitionResult2.get_date()
    sports = Sport2.get_sports()
    dogs = Dog2.get_dogs(min_number_of_titles, sport[0], exclusive)
    kennels = Kennel2.get_kennels(exclude_blood_tracking)
    context = {
        'date': f'{date.year}-{f'{date.month:02}'}-{f'{date.day:02}'}',
        'year': 1993,
        'interval': 'drygt 30',
        'first_page': {},
        'second_page': {
            'sport': sport,
            'exclusive': exclusive,
            'sports': sports,
            'position': position,
            'number_of_dogs': dogs['number_of_dogs'],
            'remaining_number_of_dogs': dogs['remaining_number_of_dogs'],
            'min_number_of_titles': dogs['min_number_of_titles'],
            'dogs': dogs['dogs'],
        },
        'third_page': {
            'exclude_blood_tracking': exclude_blood_tracking,
            'number_of_kennels': kennels['number_of_kennels'],
            'total_number_of_dogs': kennels['total_number_of_dogs'],
            'min_number_of_dogs': kennels['min_number_of_dogs'],
            'kennels': kennels['kennels'],
        },
    }
    return render(request, 'workingridge_app/workingridge.html', context)
