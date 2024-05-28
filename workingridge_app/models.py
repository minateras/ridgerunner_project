from django.db import models


class Sport2(models.Model):
    # id = models.AutoField(primary_key=True)
    sport = models.CharField(max_length=25, unique=True)
    parent = models.ForeignKey('self', blank=True, db_column='parent', null=True, on_delete=models.CASCADE)


    class Meta:
        db_table = 'sport2'


    @staticmethod
    def get_sports():
        return Sport2.objects.order_by('id')


class Klass2(models.Model):
    # id = models.AutoField(primary_key=True)
    klass = models.CharField(max_length=25)
    sport = models.ForeignKey(Sport2, db_column='sport', on_delete=models.CASCADE)


    class Meta:
        db_table = 'klass2'


class Title2(models.Model):
    # id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=25, unique=True)
    name = models.CharField(max_length=50, unique=True)
    sport = models.ForeignKey(Sport2, blank=True, db_column='sport', null=True, on_delete=models.CASCADE)
    klass = models.ForeignKey(Klass2, blank=True, db_column='klass', null=True, on_delete=models.CASCADE)


    class Meta:
        db_table = 'title2'


class Dog2(models.Model):
    # id = models.AutoField(primary_key=True)
    kennel_name = models.CharField(max_length=50, unique=True)
    registration_number = models.CharField(max_length=25, unique=True)


    class Meta:
        db_table = 'dog2'


    @staticmethod
    def get_dogs(min_number_of_titles, sport, exclusive):
        query = None
        if sport == 0:
            query = list(Dog2.objects.raw(f'''SELECT d.id, d.kennel_name, d.registration_number, COUNT(td.date) AS number_of_titles, GROUP_CONCAT(t.title ORDER BY t.id SEPARATOR ', ') as titles FROM dog2 AS d LEFT JOIN title_dog2 AS td ON d.id = td.dog LEFT JOIN title2 AS t ON td.title = t.id GROUP BY d.id, d.kennel_name, d.registration_number{f' HAVING number_of_titles >= {min_number_of_titles}' if 1 == 2 is not None else ''} ORDER BY number_of_titles DESC, kennel_name;'''))
        else:
            print(sport)
            if exclusive == 1:
                query = list(Dog2.objects.raw(f'''SELECT d.id, d.kennel_name, d.registration_number, COUNT(td.date) AS number_of_titles, GROUP_CONCAT(t.title ORDER BY t.id SEPARATOR ', ') as titles FROM dog2 AS d LEFT JOIN title_dog2 AS td ON d.id = td.dog LEFT JOIN title2 AS t ON td.title = t.id WHERE ((t.klass IS NOT NULL AND (SELECT IFNULL(ss.parent, ss.id) FROM sport2 AS ss, klass2 AS kk WHERE ss.id = kk.sport AND kk.id = t.klass) = %s) OR (t.sport IS NOT NULL AND t.sport = IFNULL((SELECT parent FROM sport2 WHERE id = %s), %s))) GROUP BY d.id, d.kennel_name, d.registration_number{f' HAVING number_of_titles >= {min_number_of_titles}' if 1 == 2 else ''} ORDER BY number_of_titles DESC, kennel_name;''', (sport, sport, sport)))
            else:
                query = list(Dog2.objects.raw(f'''SELECT d.id, d.kennel_name, d.registration_number, COUNT(td.date) AS number_of_titles, GROUP_CONCAT(t.title ORDER BY t.id SEPARATOR ', ') as titles FROM dog2 AS d LEFT JOIN title_dog2 AS td ON d.id = td.dog LEFT JOIN title2 AS t ON td.title = t.id WHERE %s IN (SELECT IFNULL(tt.sport, (SELECT sport FROM klass2 WHERE id = tt.klass)) AS sport FROM title2 AS tt, title_dog2 AS ttdd WHERE tt.id = ttdd.title AND ttdd.dog = d.id) GROUP BY d.id, d.kennel_name, d.registration_number{f' HAVING number_of_titles >= {min_number_of_titles}' if 1 == 2 else ''} ORDER BY number_of_titles DESC, kennel_name;''', (sport, )))
        temp = []
        lower_limit = min_number_of_titles
        for i in range(0, len(query)):
            dog = query[i]
            dog.odd = (i + 1) % 2 > 0
            if i < 10 or dog.number_of_titles >= lower_limit:
                temp.append(dog)
                if min_number_of_titles is None:
                    lower_limit = dog.number_of_titles
            else: break
        dogs = {}
        i = 1
        placement = None
        for dog in temp:
            if dogs.get(dog.number_of_titles) is None:
                placement = i
                dogs[dog.number_of_titles] = [(placement, dog)]
            else:
                dogs[dog.number_of_titles].append((placement, dog))
            i += 1
        return {
            'number_of_dogs': len(temp),
            'remaining_number_of_dogs': len(query) - len(temp),
            'min_number_of_titles': lower_limit,
            'dogs': dogs,
        }


class CompetitionResult2(models.Model):
    # id = models.AutoField(primary_key=True)
    klass = models.ForeignKey(Klass2, db_column='klass', on_delete=models.CASCADE)
    dog = models.ForeignKey(Dog2, db_column='dog', on_delete=models.CASCADE)
    date = models.DateField()
    points = models.DecimalField(decimal_places=2, max_digits=5)
    prize = models.CharField(blank=True, max_length=25, null=True)


    class Meta:
        db_table = 'competition_result2'


    @staticmethod
    def get_date():
        query = list(CompetitionResult2.objects.raw('''SELECT DISTINCT id, date FROM competition_result2 GROUP BY id ORDER BY date DESC LIMIT 1'''))
        return query[0].date


class TitleDog2(models.Model):
    # id = models.AutoField(primary_key=True)
    title = models.ForeignKey(Title2, db_column='title', on_delete=models.CASCADE)
    dog = models.ForeignKey(Dog2, db_column='dog', on_delete=models.CASCADE)
    date = models.DateField()


    class Meta:
        db_table = 'title_dog2'


class Exception2(models.Model):
    # id = models.AutoField(primary_key=True)
    exception = models.TextField()


    class Meta:
        db_table = 'exception2'



class Kennel2(models.Model):
    # id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)


    class Meta:
        db_table = 'kennel2'


    @staticmethod
    def get_kennels(exclude_blood_tracking):
        valid_kennel_names = [kennel_name.name for kennel_name in Kennel2.objects.all()]
        query = list(Dog2.objects.raw(f'''SELECT d.id, d.kennel_name, GROUP_CONCAT(t.title ORDER BY t.id SEPARATOR ', ') AS titles FROM dog2 AS d LEFT JOIN title_dog2 AS td ON d.id = td.dog LEFT JOIN title2 AS t ON td.title = t.id WHERE t.title IS NOT NULL{' AND t.klass != 48' if exclude_blood_tracking is True else ''} GROUP BY d.id'''))
        temp = {}
        for dog in query:
            matches = []
            for name in valid_kennel_names:
                if dog.kennel_name.startswith(name):
                    matches.append(name)
            if len(matches) > 0:
                name = max(matches, key=len)
                if temp.get(name) is not None:
                    temp[name] += 1
                else:
                    temp[name] = 1
        kennels = None
        number_of_dogs = 0
        lower_limit = None
        total_number_of_dogs = 0
        for name in sorted(temp, key=temp.get, reverse=True):
            number = temp[name]
            if kennels is None:
                kennels = {}
                for i in range(number, 0, -1):
                    kennels[i] = []
            if number_of_dogs < 10 or number == lower_limit:
                kennels[number].append((name, number))
                lower_limit = number
                number_of_dogs += 1
            total_number_of_dogs += number
        for i in range((lower_limit - 1), 0, -1):
            kennels.pop(i, None)
        return {
            'number_of_kennels': number_of_dogs,
            'total_number_of_dogs': total_number_of_dogs,
            'min_number_of_dogs': lower_limit,
            'kennels': kennels,
        }
