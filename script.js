document.getElementById('searchBtn').addEventListener('click', () => {
    const city = document.getElementById('cityInput').value;
    if(city) {
        // This is a placeholder. In a real app, you'd fetch from an API.
        document.getElementById('cityName').innerText = city;
        document.getElementById('temp').innerText = "28°C";
        document.getElementById('desc').innerText = "Sunny with a chance of AI";
    }
    function updateDashboardTheme(condition) {
    const bg = document.getElementById('dashboard');
    
    if (condition === 'Clear') {
        bg.style.background = "linear-gradient(to bottom, #FFD700, #FFA500)"; // Sunny Yellow
    } else if (condition === 'Rain') {
        bg.style.background = "linear-gradient(to bottom, #4A90E2, #1A237E)"; // Rainy Blue
    } else if (condition === 'Clouds') {
        bg.style.background = "linear-gradient(to bottom, #BDC3C7, #2C3E50)"; // Cloudy Grey
    }
}
});