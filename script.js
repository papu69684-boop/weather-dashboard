document.getElementById('searchBtn').addEventListener('click', () => {
    const city = document.getElementById('cityInput').value;
    if(city) {
        // This is a placeholder. In a real app, you'd fetch from an API.
        document.getElementById('cityName').innerText = city;
        document.getElementById('temp').innerText = "28°C";
        document.getElementById('desc').innerText = "Sunny with a chance of AI";
    }
});