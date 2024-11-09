// src/main/resources/static/js/app.js
async function fetchMessage() {
    try {
        const response = await fetch('/hello');
        const message = await response.text();
        document.getElementById('message').innerText = message;
    } catch (error) {
        console.error('Error fetching message:', error);
    }
}
