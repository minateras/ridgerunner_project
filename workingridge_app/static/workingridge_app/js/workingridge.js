const sport = document.getElementById('sport'),
exclusive = document.getElementById('exclusive'),
exclude_blood_tracking = document.getElementById('exclude-blood-tracking');
sport.addEventListener('change', () => {submit(sport);});
exclusive.addEventListener('change', () => {submit(exclusive);});
exclude_blood_tracking.addEventListener('change', () => {submit(exclude_blood_tracking);});

function submit(element) {
    element.form.submit();
}



const main_element = document.getElementsByTagName('main')[0],
load_titles = document.getElementById('load-titles'),
position = document.getElementsByName('position')[0];
main_element.addEventListener('scroll', () => {
    position.value = load_titles.getBoundingClientRect().top;
});
