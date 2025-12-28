// Request homepage data from Arma
function requestHomepageData() {
    const alert = {
        event: "get::homepage::data",
        data: {},
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// Handle the response from Arma
function handleHomepageResponse(data) {
    console.log('Handling homepage response:', data);
    // Update UI based on data if needed
}

// Handle button clicks
function setupButtonHandlers() {
    document.getElementById('btn-bank').addEventListener('click', () => {
        sendEvent('access::bank');
    });

    document.getElementById('btn-fleet').addEventListener('click', () => {
        sendEvent('access::fleet');
    });

    document.getElementById('btn-arms').addEventListener('click', () => {
        sendEvent('access::arms');
    });

    document.getElementById('btn-admin').addEventListener('click', () => {
        sendEvent('access::admin');
    });

    document.getElementById('btn-mail').addEventListener('click', () => {
        sendEvent('access::mail');
    });

    document.getElementById('btn-exit').addEventListener('click', () => {
        sendEvent('close');
    });
}

function sendEvent(eventType) {
    const alert = {
        event: eventType,
        data: {},
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// This function is called by SQF via ExecJS
window.receiveHomepageData = function (response) {
    console.log('Received response from Arma:', response);
    if (response.event === 'get::homepage::data::response') {
        handleHomepageResponse(response.data);
    }
};

setupButtonHandlers();
requestHomepageData();
