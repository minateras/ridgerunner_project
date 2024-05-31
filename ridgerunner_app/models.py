from django.db import models
from django.db.models import Q


class Language(models.Model):
    language_code = models.CharField(max_length=2, primary_key=True)


    class Meta:
        db_table = 'language'


class Country(models.Model):
    country_code = models.CharField(max_length=2, primary_key=True)


    class Meta:
        db_table = 'country'


class HipJoints(models.Model):
    result = models.CharField(max_length=3, primary_key=True)


    class Meta:
        db_table = 'hip_joints'


class Elbows(models.Model):
    result = models.CharField(max_length=3, primary_key=True)


    class Meta:
        db_table = 'elbows'


# TODO Insert B-locus.


class DegenerativeMyelopathy(models.Model):
    """DM: http://www.srrs.org/srrs/avel/genetik/gentester-rr"""

    result = models.CharField(max_length=5, primary_key=True)


    class Meta:
        db_table = 'degenerative_myelopathy'


# TODO Insert D-locus.


class EarlyOnsetAdultDeafness(models.Model):
    """EOAD: http://www.srrs.org/srrs/avel/genetik/gentester-rr"""

    result = models.CharField(max_length=3, primary_key=True)


    class Meta:
        db_table = 'early_onset_adult_deafness'


# TODO Insert Haemophilia B.


class JuvenileMyoclonicEpilepsy(models.Model):
    """JME: http://www.srrs.org/srrs/avel/genetik/gentester-rr"""

    result = models.CharField(max_length=7, primary_key=True)


    class Meta:
        db_table = 'juvenile_myoclonic_epilepsy'


class Ridge(models.Model):
    """Ridge: http://www.srrs.org/srrs/avel/genetik/gentester-rr"""

    result = models.CharField(max_length=3, primary_key=True)


    class Meta:
        db_table = 'ridge'


class Dog(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    # INFO
    image = models.URLField(blank=True, null=True, unique=True)
    first_name = models.CharField(blank=True, max_length=25, null=True)
    kennel_name = models.CharField(max_length=50, unique=True)
    official_titles = models.JSONField(blank=True, null=True) # ArrayField(models.CharField(max_length=25), blank=True, null=True) # Varchar array.
    country_of_origin = models.ForeignKey(Country, db_column='country_of_origin', blank=True, null=True, on_delete=models.SET_NULL)
    date_of_birth = models.DateField(blank=True, null=True)
    registration_number = models.CharField(blank=True, max_length=25, null=True, unique=True)
    father = models.ForeignKey('self', db_column='father', blank=True, null=True, on_delete=models.SET_NULL, related_name='+')
    mother = models.ForeignKey('self', db_column='mother', blank=True, null=True, on_delete=models.SET_NULL, related_name='+')
    inbreeding_coefficient = models.DecimalField(blank=True, decimal_places=1, max_digits=3, null=True)
    gender = models.BooleanField(blank=True, null=True) # True is female, false is male.
    height = models.SmallIntegerField(blank=True, null=True)
    weight = models.SmallIntegerField(blank=True, null=True)
    mentality_index = models.JSONField(blank=True, null=True) # ArrayField(ArrayField(models.DecimalField(decimal_places=2, max_digits=5), size=2), blank=True, null=True, size=5)
    bph = models.URLField(blank=True, null=True)
    bph_age = models.JSONField(blank=True, null=True) # ArrayField(models.DecimalField(decimal_places=1, max_digits=3), blank=True, null=True, size=3) # Varchar array.
    mh = models.URLField(blank=True, null=True)
    mh_age = models.JSONField(blank=True, null=True) # ArrayField(models.DecimalField(decimal_places=1, max_digits=3), blank=True, null=True, size=3) # Varchar array.
    owner = models.JSONField(blank=True, null=True) # ArrayField(models.CharField(max_length=25), blank=True, null=True)

    # STATS
    correct_ridge = models.BooleanField(blank=True, null=True)
    correct_ridge_comment = models.CharField(blank=True, max_length=25, null=True) # ridgeless, short ridge, single/multi crown...
    correct_tail = models.BooleanField(blank=True, null=True)
    correct_tail_comment = models.CharField(blank=True, max_length=25, null=True) # kinked, bobbed...
    scissor_bite = models.BooleanField(blank=True, null=True)
    scissor_bite_comment = models.CharField(blank=True, max_length=25, null=True) # overbite, underbite, missing P4.
    dermoid_sinus = models.BooleanField(blank=True, null=True)
    cryptorchid = models.BooleanField(blank=True, null=True)

    # X-RAY RESULTS
    hip_joints = models.ForeignKey(HipJoints, db_column='hip_joints', blank=True, null=True, on_delete=models.SET_NULL)
    elbows = models.ForeignKey(Elbows, db_column='elbows', blank=True, null=True, on_delete=models.SET_NULL)

    # GENETIC TESTS
    degenerative_myelopathy = models.ForeignKey(DegenerativeMyelopathy, db_column='degenerative_myelopathy', blank=True, null=True, on_delete=models.SET_NULL)
    early_onset_adult_deafness = models.ForeignKey(EarlyOnsetAdultDeafness, db_column='early_onset_adult_deafness', blank=True, null=True, on_delete=models.SET_NULL)
    juvenile_myoclonic_epilepsy = models.ForeignKey(JuvenileMyoclonicEpilepsy, db_column='juvenile_myoclonic_epilepsy', blank=True, null=True, on_delete=models.SET_NULL)
    ridge = models.ForeignKey(Ridge, db_column='ridge', blank=True, null=True, on_delete=models.SET_NULL)


    class Meta:
        db_table = 'dog'


    @staticmethod
    def get_my_females():
        return Dog.objects.filter(gender=True, owner=['Mina Teräs']).order_by('id')


    @staticmethod
    def get_my_males():
        return Dog.objects.filter(gender=False, owner=['Mina Teräs']).order_by('id')


class LocalizedDog(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    dog = models.ForeignKey(Dog, db_column='dog', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    presentation = models.TextField()
    mentality = models.JSONField() # ArrayField(models.TextField(), size=3)


    class Meta:
        db_table = 'localized_dog'


    @staticmethod
    def get_dog(language_code, kennel_name):
        return LocalizedDog.objects.filter(dog__kennel_name=kennel_name, language_code=language_code)[0]


class Club(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    id = models.AutoField(primary_key=True)


    class Meta:
        db_table = 'club'


class LocalizedClub(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    club = models.ForeignKey(Club, db_column='club', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    name = models.CharField(max_length=50)


    class Meta:
        db_table = 'localized_club'


class UnofficialTitle(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    dog = models.ForeignKey(Dog, db_column='dog', on_delete=models.CASCADE)
    club = models.ForeignKey(Club, db_column='club', on_delete=models.CASCADE)


    class Meta:
        db_table = 'unofficial_title'


class LocalizedUnofficialTitle(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    unofficial_title = models.ForeignKey(UnofficialTitle, db_column='unofficial_title', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    unofficial_titles = models.JSONField() # ArrayField(models.CharField(max_length=50))


    class Meta:
        db_table = 'localized_unofficial_title'


    @staticmethod
    def get_unofficial_titles(language_code, kennel_name):
        id = Dog.objects.filter(kennel_name=kennel_name)[0].id
        clubs = list(LocalizedClub.objects.filter(language_code=language_code))
        unofficial_titles = LocalizedUnofficialTitle.objects.filter(unofficial_title__dog_id=id, language_code=language_code).order_by('unofficial_title__id')
        data = []
        for unofficial_title in unofficial_titles:
            clubToBeAppended = None
            for club in clubs:
                if unofficial_title.unofficial_title.club.id == club.club.id:
                    clubToBeAppended = club
            data.append((unofficial_title, clubToBeAppended))
            clubs.remove(clubToBeAppended)
        return data


class Award(models.Model):
    """Vandringspris."""

    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    dog = models.ForeignKey(Dog, db_column='dog', on_delete=models.CASCADE)
    club = models.ForeignKey(Club, db_column='club', on_delete=models.CASCADE)


    class Meta:
        db_table = 'award'


class LocalizedAward(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    award = models.ForeignKey(Award, db_column='award', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    awards = models.JSONField() # ArrayField(models.CharField(max_length=50))


    class Meta:
        db_table = 'localized_award'


    @staticmethod
    def get_awards(language_code, kennel_name):
        id = Dog.objects.filter(kennel_name=kennel_name)[0].id
        clubs = list(LocalizedClub.objects.filter(language_code=language_code))
        awards = LocalizedAward.objects.filter(award__dog_id=id, language_code=language_code).order_by('award__id')
        data = []
        for award in awards:
            clubToBeAppended = None
            for club in clubs:
                if award.award.club.id == club.club.id:
                    clubToBeAppended = club
            data.append((award, clubToBeAppended))
            clubs.remove(clubToBeAppended)
        return data


class Sport(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    id = models.AutoField(primary_key=True)


    class Meta:
        db_table = 'sport'


class LocalizedSport(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    sport = models.ForeignKey(Sport, db_column='sport', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    name = models.CharField(max_length=25)


    class Meta:
        db_table = 'localized_sport'


class Klass(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    sport = models.ForeignKey(Sport, db_column='sport', on_delete=models.CASCADE)


    class Meta:
        db_table = 'klass'


class LocalizedKlass(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    klass = models.ForeignKey(Klass, db_column='klass', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    name = models.CharField(blank=True, max_length=25, null=True)


    class Meta:
        db_table = 'localized_klass'


class CompetitionResult(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    dog = models.ForeignKey(Dog, db_column='dog', on_delete=models.CASCADE)
    sport = models.ForeignKey(Sport, db_column='sport', on_delete=models.CASCADE)
    klass = models.ForeignKey(Klass, db_column='klass', blank=True, null=True, on_delete=models.CASCADE)

    results = models.JSONField() # ArrayField(models.CharField(max_length=50))


    class Meta:
        db_table = 'competition_result'


    @staticmethod
    def get_competition_results(language_code, kennel_name):
        id = Dog.objects.filter(kennel_name=kennel_name)[0].id
        sports = list(LocalizedSport.objects.filter(language_code=language_code))
        klasses = list(LocalizedKlass.objects.filter(language_code=language_code))
        competition_results = CompetitionResult.objects.filter(dog__id=id).order_by('id')
        data = []
        for competition_result in competition_results:
            for sport in sports:
                for klass in klasses:
                    if competition_result.sport.id == sport.sport.id and competition_result.klass.id == klass.klass.id:
                        data.append((competition_result, sport, klass))
        return data


class Litter(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    father = models.ForeignKey(Dog, blank=True, db_column='father', null=True, on_delete=models.CASCADE, related_name='+')
    mother = models.ForeignKey(Dog, blank=True, db_column='mother', null=True, on_delete=models.CASCADE, related_name='+')

    letter = models.CharField(blank=True, max_length=1, null=True)
    kennel_name = models.CharField(blank=True, max_length=25, null=True) # If external litter.

    date_of_birth = models.DateField(blank=True, null=True)
    inbreeding_coefficient = models.DecimalField(blank=True, decimal_places=1, max_digits=3, null=True)
    number_of_males = models.SmallIntegerField(blank=True, null=True)
    number_of_females = models.SmallIntegerField(blank=True, null=True)
    mentality_index = models.JSONField(blank=True, null=True) # ArrayField(ArrayField(models.DecimalField(decimal_places=2, max_digits=5), size=2), blank=True, null=True, size=5)
    bph = models.URLField(blank=True, null=True)
    mh = models.URLField(blank=True, null=True)
    offspring = models.ManyToManyField(Dog, db_table='offspring')


    class Meta:
        db_table = 'litter'


class LocalizedLitter(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    litter = models.ForeignKey(Litter, db_column='litter', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    presentation = models.TextField()
    mentality = models.TextField()


    class Meta:
        db_table = 'localized_litter'


    @staticmethod
    def get_litters_of_dog(language_code, kennel_name):
        id = Dog.objects.filter(kennel_name=kennel_name)[0].id
        return LocalizedLitter.objects.filter(Q(litter__father_id=id) | Q(litter__mother_id=id), language_code=language_code).order_by('litter__id')

    @staticmethod
    def get_planned_litter(language_code):
        return LocalizedLitter.objects.filter(language_code=language_code).order_by('litter__id').last()

    @staticmethod
    def get_litters(language_code):
        return LocalizedLitter.objects.filter(litter__kennel_name=None, language_code=language_code).order_by('litter__id')

    @staticmethod
    def get_litter(language_code, letter):
        return LocalizedLitter.objects.filter(litter__letter=letter, language_code=language_code)[0]


class Link(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    dog = models.ForeignKey(Dog, db_column='dog', blank=True, on_delete=models.CASCADE, null=True)
    litter = models.ForeignKey(Litter, db_column='litter', blank=True, on_delete=models.CASCADE, null=True)
    url = models.URLField()


    class Meta:
        db_table = 'link'


class LocalizedLink(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    link = models.ForeignKey(Link, db_column='link', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    name = models.CharField(max_length=25)


    class Meta:
        db_table = 'localized_link'


    @staticmethod
    def get_links(language_code, kennel_name=None, letter=None):
        id = None
        if kennel_name is not None:
            id = LocalizedDog.get_dog(language_code, kennel_name).dog.id
        elif letter is not None:
            id = LocalizedLitter.get_litter(language_code, letter).litter.id
        else:
            id = LocalizedLitter.get_planned_litter(language_code).litter.id
        return LocalizedLink.objects.filter(Q(link__dog_id=id) | Q(link__litter_id=id), language_code=language_code).order_by('link__id')


class Gallery(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    dog = models.ForeignKey(Dog, db_column='dog', on_delete=models.CASCADE)
    image = models.URLField()


    class Meta:
        db_table = 'gallery'


class Post(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    publication_date = models.DateField()
    pinned = models.BooleanField()


    class Meta:
        db_table = 'post'


class LocalizedPost(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    post = models.ForeignKey(Post, db_column='post', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    caption = models.CharField(max_length=25)
    content = models.TextField()


    class Meta:
        db_table = 'localized_post'


    @staticmethod
    def get_all(language_code):
        return LocalizedPost.objects.filter(language_code=language_code).order_by('-post__publication_date', '-post__pinned', '-post__id')


class Congratulations(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    publication_date = models.DateField()
    dog = models.ForeignKey(Dog, db_column='dog', blank=True, null=True, on_delete=models.CASCADE)
    kennel_name = models.CharField(max_length=50, blank=True, null=True)
    owner = models.JSONField(blank=True, null=True) # ArrayField(models.CharField(max_length=25), blank=True, null=True)
    # TODO Insert trigger which ensures either dog or kennel_name is filled in.


    class Meta:
        db_table = 'congratulations'


class LocalizedCongratulations(models.Model):
    # PRIMARY KEY (https://docs.djangoproject.com/en/5.0/topics/db/models/#automatic-primary-key-fields)
    # id = models.AutoField(primary_key=True)

    congratulations = models.ForeignKey(Congratulations, db_column='congratulations', on_delete=models.CASCADE)
    language_code = models.ForeignKey(Language, db_column='language_code', on_delete=models.CASCADE)

    content = models.JSONField() # ArrayField(models.TextField())


    class Meta:
        db_table = 'localized_congratulations'


    @staticmethod
    def get_all(language_code):
        return LocalizedCongratulations.objects.filter(language_code=language_code).order_by('-congratulations__publication_date', '-congratulations__id')
