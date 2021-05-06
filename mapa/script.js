var map = L.map('mapid').on('load', onMapLoad).setView([41.400, 2.206], 9);
//map.locate({setView: true, maxZoom: 17});

var tiles = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {}).addTo(map);

//en el clusters almaceno todos los markers
var markers = L.markerClusterGroup();
var data_markers = [];

function onMapLoad() {
	console.log("Mapa cargado");

	navigator.geolocation.getCurrentPosition(function (position) {
		map.setView([position.coords.latitude, position.coords.longitude], 11);
	});


	/* FASE 3.1
		1) Relleno el data_markers con una petición a la api */

	/*$.getJSON("http://localhost/mapa/api/apiRestaurants.php", function (getRest) {*/

	$.getJSON("http://" + window.location.hostname + "/mapa/api/apiRestaurants.php", function (getRest) {

		let kindFood = [];

		for (let i = 0; i < getRest.length; i++) {
			data_markers.push(getRest[i]);
			kindFood.push(getRest[i].kind_food.split(','));
		}
		console.log(data_markers);

		/* 2) Añado de forma dinámica en el select los posibles tipos de restaurantes */

		let selectFood = [];

		for (let i = 0; i < kindFood.length; i++) {
			selectFood = selectFood.concat(kindFood[i]);
		}
		selectFood = Array.from(new Set(selectFood)); /*Eliminar tipos de comida repetidos*/
		console.log(selectFood);

		$('#kind_food_selector').append('<option>' + 'All' + '</option>');

		for (let i = 0; i < selectFood.length; i++) {
			$('#kind_food_selector').append('<option>' + selectFood[i] + '</option>');
		}
		/* 3) Llamo a la función para --> render_to_map(data_markers, 'all'); <-- para mostrar restaurantes en el mapa */

		render_to_map(data_markers, 'All');
	});
}

$('#kind_food_selector').on('change', function () {
	console.log(this.value);
	render_to_map(data_markers, this.value);
});

function render_to_map(data_markers, filter) {

	/* FASE 3.2
		1) Limpio todos los marcadores */
	markers.clearLayers();

	/* 2) Realizo un bucle para decidir que marcadores cumplen el filtro, y los agregamos al mapa */

	for (marker of data_markers) {
		if (marker.kind_food.includes(filter) || filter == 'All') {
			markers.addLayer(L.marker([marker.lat, marker.lng]).bindPopup(`
			<b>${marker.name}</b><br>
			${marker.address}<br>
			<i>${marker.kind_food}</i><br>
			<img src="img/${marker.photo}"></img>`));
		}
	}
	map.addLayer(markers);
}