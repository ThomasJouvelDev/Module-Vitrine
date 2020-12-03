import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

export function leafletmap() {
  if (document.getElementById("mapinfos")) {
    const mapinfos = document.getElementById("mapinfos");
    const name = mapinfos.dataset.name;
    const address = mapinfos.dataset.address;
    let map = null;
    fetch(`https://nominatim.openstreetmap.org/search?q=${address}&format=json&polygon=1&addressdetails=1`).then(response => response.json()).then((data) => {
      data = data[0];

      const latPlace = data.lat;
      const lonPlace = data.lon;
      // const boundingBox = data.boundingbox;

      map = L.map('map').setView([
        latPlace, lonPlace,
      ], 12);

      // L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', { attribution: "&copy; <a href='http://osm.org/copyright'>OpenStreetMap</a> contributors" }).addTo(map);

      L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
          attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
          tileSize: 512,
          zoomOffset: -1,
          maxZoom: 18,
          id: 'mapbox/streets-v11',
          accessToken: 'pk.eyJ1IjoidGhvbWFzam91dmVsIiwiYSI6ImNqc3VmMG9icDE4M2Y0OXM5a3A3bHp6MGkifQ.hTGAbMmFRFEqnFuk3VjgsA'
      }).addTo(map);
      L.marker([latPlace, lonPlace]).addTo(map).bindPopup(`
                                                          ${name}
                                                          <br>
                                                          ${address}
                                                          `).openPopup();
    });
  }
}
