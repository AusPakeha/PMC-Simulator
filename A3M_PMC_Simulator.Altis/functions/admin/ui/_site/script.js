/**
 * Orion Admin Console - Client-side JavaScript
 */

let selectedPlayerId = null;
let allPlayers = [];

/**
 * Initialize the admin application
 */
function initApp() {
    console.log("Admin UI Initialized");

    // Request initial data
    refreshData();

    // Setup close button
    document.getElementById('btn-exit').addEventListener('click', () => {
        A3API.SendAlert(JSON.stringify({
            event: "close",
            data: {}
        }));
    });
}

// Ensure initApp runs
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initApp);
} else {
    initApp();
}

/**
 * Refresh all admin data
 */
function refreshData() {
    A3API.SendAlert(JSON.stringify({
        event: "get::admin::data",
        data: {}
    }));
}

/**
 * Switch navigation tabs
 * @param {string} tabId
 */
function switchTab(tabId) {
    // Hide all tabs
    document.querySelectorAll('.tab-content').forEach(el => el.style.display = 'none');
    document.querySelectorAll('.tab-btn').forEach(el => el.classList.remove('active'));

    // Show selected tab
    document.getElementById(`tab-${tabId}`).style.display = 'block';

    // Activate button (finding by onclick attribute is a bit hacky but works for simple UI)
    const buttons = document.querySelectorAll('.tab-btn');
    buttons.forEach(btn => {
        if (btn.getAttribute('onclick').includes(tabId)) {
            btn.classList.add('active');
        }
    });
}

/**
 * Update Admin Data (called from Arma)
 * @param {string} jsonStats - JSON string of stats object
 * @param {string} jsonPlayers - JSON string of players array
 */
window.updateAdminData = function (jsonStats, jsonPlayers) {
    try {
        const stats = JSON.parse(jsonStats);
        const players = JSON.parse(jsonPlayers);

        // Update Stats
        document.getElementById('stat-balance').textContent = '$' + (stats.balance || 0).toLocaleString();
        document.getElementById('stat-spent').textContent = '$' + (stats.spent || 0).toLocaleString();
        document.getElementById('stat-slots').textContent = stats.slots || 0;

        // Update Players
        allPlayers = players;
        renderPlayerList();

    } catch (e) {
        console.error("Error updating admin data:", e);
    }
}

/**
 * Render the player list
 */
function renderPlayerList() {
    const container = document.getElementById('player-list');
    container.innerHTML = '';

    if (allPlayers.length === 0) {
        container.innerHTML = '<div style="padding:15px; text-align:center; color:#888;">No players found</div>';
        return;
    }

    allPlayers.forEach(player => {
        const div = document.createElement('div');
        div.className = `player-item ${player.netId === selectedPlayerId ? 'selected' : ''}`;
        div.innerHTML = `
            <span class="p-name">${player.name}</span>
            <span class="p-uid" style="font-size:10px; color:#aaa;">${player.uid.substring(0, 8)}...</span>
        `;
        div.onclick = () => selectPlayer(player.netId);
        container.appendChild(div);
    });
}

/**
 * Select a player to view details
 * @param {string} netId
 */
function selectPlayer(netId) {
    selectedPlayerId = netId;
    const player = allPlayers.find(p => p.netId === netId);

    if (!player) return;

    // Update UI selection
    renderPlayerList(); // Re-render to update 'selected' class

    // Update Details Panel
    document.getElementById('selected-player-name').textContent = player.name;
    document.getElementById('selected-player-id').textContent = `NetID: ${player.netId} | UID: ${player.uid}`;

    document.querySelector('.empty-state').style.display = 'none';
    document.getElementById('player-actions-content').style.display = 'block';
}

/**
 * Perform a global admin action
 * @param {string} actionType
 */
function adminAction(actionType) {
    A3API.SendAlert(JSON.stringify({
        event: `action::admin::${actionType}`,
        data: {}
    }));
}

/**
 * Perform an action on the selected player
 * @param {string} actionType
 */
function playerAction(actionType) {
    if (!selectedPlayerId) {
        alert("No player selected");
        return;
    }

    const data = { target: selectedPlayerId };

    // Add extra data for specific actions
    if (actionType === 'advance' || actionType === 'deduct') {
        const amount = document.getElementById('cash-amount').value;
        if (!amount || amount <= 0) {
            alert("Please enter a valid amount");
            return;
        }
        data.amount = parseInt(amount);
    }

    if (actionType === 'message') {
        const msg = document.getElementById('msg-text').value;
        if (!msg) {
            alert("Please enter a message");
            return;
        }
        data.message = msg;
    }

    A3API.SendAlert(JSON.stringify({
        event: `action::admin::player::${actionType}`,
        data: data
    }));
}
