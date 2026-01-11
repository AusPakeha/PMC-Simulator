// Request services from Arma
function requestServices() {
    const alert = {
        event: "get::services",
        data: {},
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// Handle the response from Arma
function handleServicesResponse(services) {
    console.log('Handling services response:', services);
    const listContainer = document.getElementById('services-list');

    if (!services || services.length === 0) {
        listContainer.innerHTML = '<div class="error">No services available</div>';
        return;
    }

    // Clear loading message
    listContainer.innerHTML = '';

    // Create service items
    // Services come as array of [name, description] pairs from SQF
    services.forEach((service, index) => {
        const item = document.createElement('div');
        item.className = 'service-item';

        const name = document.createElement('div');
        name.className = 'service-name';
        name.textContent = service[0] || 'Unknown Service';

        const description = document.createElement('div');
        description.className = 'service-description';
        description.textContent = service[1] || 'No description available';

        item.appendChild(name);
        item.appendChild(description);

        // Handle click to select service
        item.addEventListener('click', () => {
            selectService(index, service[0]);
        });

        listContainer.appendChild(item);
    });
}

// Handle service selection
function selectService(index, name) {
    const alert = {
        event: "set::service",
        data: {
            index: index,
            name: name
        },
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// This function is called by SQF via ExecJS
window.receiveServices = function (response) {
    console.log('Received response from Arma:', response);
    if (response.event === 'get::services::response') {
        handleServicesResponse(response.data);
    }
};

requestServices();
