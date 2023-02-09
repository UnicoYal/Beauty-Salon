import "@hotwired/turbo-rails"
import "controllers"
let center_main = [55.82165350427021,37.826942999999964]
let center = [55.82165350427021,37.826942999999964];
function init() {
	let map = new ymaps.Map('yandex_map', {
		center: center_main,
		zoom: 17
	});

    let placemark = new ymaps.Placemark(center, {
        		balloonContent: `
			<div class="balloon">
				<div><h2>Салон красоты Rolano</h2></div>
				<div class="balloon__contacts">
					<h5><a href="tel:+74957928139">+7(495)792-81-39</a></h5>
				</div>
                <div><h3>Время работы</h3></div>
                <div><h4>Понедельник:  9:00 - 20:00</h4</div>
                <div><h4>Вторник:  9:00 - 20:00</h4</div>
                <div><h4>Среда:  9:00 - 20:00</h4</div>
                <div><h4>Четверг:  9:00 - 20:00</h4</div>
                <div><h4>Пятница:  9:00 - 20:00</h4</div>
                <div><h4>Суббота:  9:00 - 20:00</h4</div>
                <div><h4>Воскресенье:  9:00 - 20:00</h4</div>
			</div>
            `
    }, {
		iconLayout: 'default#image',
		iconImageHref: 'https://cdn-icons-png.flaticon.com/512/3177/3177361.png',
		iconImageSize: [40, 40],
		iconImageOffset: [-19, -44]
	});

    map.controls.remove('geolocationControl'); 
    map.controls.remove('searchControl'); 
    map.controls.remove('trafficControl'); 
    map.controls.remove('typeSelector'); 
    map.controls.remove('fullscreenControl'); 
    map.controls.remove('rulerControl');

    map.geoObjects.add(placemark);
    }
ymaps.ready(init);

