// Request destinations from Arma
function requestDestinations() {
    const alert = {
        event: "get::destinations",
        data: {},
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// Handle the response from Arma
function handleDestinationsResponse(destinations) {
    console.log('Handling destinations response:', destinations);
    const listContainer = document.getElementById('destinations-list');

    if (!destinations || destinations.length === 0) {
        listContainer.innerHTML = '<div class="error">No destinations available</div>';
        return;
    }

    // Clear loading message
    listContainer.innerHTML = '';

    // Create destination items
    // Destinations come as array of [name, description] pairs from SQF
    destinations.forEach((destination, index) => {
        const item = document.createElement('div');
        item.className = 'destination-item';

        const name = document.createElement('div');
        name.className = 'destination-name';
        name.textContent = destination[0] || 'Unknown Location';

        const description = document.createElement('div');
        description.className = 'destination-description';
        description.textContent = destination[1] || 'No description available';

        item.appendChild(name);
        item.appendChild(description);

        // Handle click to select destination
        item.addEventListener('click', () => {
            selectDestination(index, destination[0]);
        });

        listContainer.appendChild(item);
    });
}

// Handle destination selection
function selectDestination(index, name) {
    const alert = {
        event: "set::destination",
        data: {
            index: index,
            name: name
        },
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// This function is called by SQF via ExecJS
window.receiveDestinations = function (response) {
    console.log('Received response from Arma:', response);
    if (response.event === 'get::destinations::response') {
        handleDestinationsResponse(response.data);
    }
};

requestDestinations();
