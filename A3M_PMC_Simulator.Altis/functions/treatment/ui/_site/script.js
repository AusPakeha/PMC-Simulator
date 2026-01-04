// Request treatments from Arma
function requestTreatments() {
    const alert = {
        event: "get::treatments",
        data: {},
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// Handle the response from Arma
function handleTreatmentsResponse(treatments) {
    console.log('Handling treatments response:', treatments);
    const listContainer = document.getElementById('treatments-list');

    if (!treatments || treatments.length === 0) {
        listContainer.innerHTML = '<div class="error">No treatments available</div>';
        return;
    }

    // Clear loading message
    listContainer.innerHTML = '';

    // Create treatment items
    // Treatments come as array of [name, description, costMultiplier] pairs from SQF
    treatments.forEach((treatment, index) => {
        const item = document.createElement('div');
        item.className = 'treatment-item';

        const name = document.createElement('div');
        name.className = 'treatment-name';
        name.textContent = treatment[0] || 'Unknown Treatment';

        const description = document.createElement('div');
        description.className = 'treatment-description';
        description.textContent = treatment[1] || 'No description available';

        const cost = document.createElement('div');
        cost.className = 'treatment-cost';
        cost.textContent = `Cost Multiplier: ${treatment[2] || 1.0}`;

        item.appendChild(name);
        item.appendChild(description);
        item.appendChild(cost);

        // Handle click to select treatment
        item.addEventListener('click', () => {
            selectTreatment(index, treatment[0]);
        });

        listContainer.appendChild(item);
    });
}

// Handle treatment selection
function selectTreatment(index, name) {
    const alert = {
        event: "set::treatment",
        data: {
            index: index,
            name: name
        },
    };
    A3API.SendAlert(JSON.stringify(alert));
}

// This function is called by SQF via ExecJS
window.receiveTreatments = function (response) {
    console.log('Received response from Arma:', response);
    if (response.event === 'get::treatments::response') {
        handleTreatmentsResponse(response.data);
    }
};

requestTreatments();
