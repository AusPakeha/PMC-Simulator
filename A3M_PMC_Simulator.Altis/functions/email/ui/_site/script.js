// Initialize
console.log("script.js execution started");

/**
 * Global array to store mission data loaded from missions.js
 */
let currentMissions = [];

/**
 * Application Entry Point
 * Initializes event listeners and loads data.
 */
function initApp() {
    console.log("Initializing App...");
    loadMissions();
    
    // Setup close button handler
    document.getElementById('btn-exit').addEventListener('click', () => {
        console.log("Exit button clicked");
        const alert = { event: "close", data: {} };
        // Send close event back to Arma 3
        A3API.SendAlert(JSON.stringify(alert));
    });
}

// Ensure initApp runs whether the script loads before or after DOMContentLoaded
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initApp);
} else {
    initApp();
}

/**
 * Loads missions from the global window.MISSION_DATA variable.
 * This variable is populated by missions.js which is injected by index.html.
 */
function loadMissions() {
    console.log("loadMissions called");
    try {
        if (window.MISSION_DATA) {
            console.log("MISSION_DATA found, count:", window.MISSION_DATA.length);
            currentMissions = window.MISSION_DATA;
            renderEmailList(currentMissions);
        } else {
            console.error("MISSION_DATA not found");
            document.getElementById('email-list').innerHTML = '<div style="padding:15px; color:red;">No messages found.</div>';
        }
    } catch (e) {
        console.error("Failed to load missions", e);
        document.getElementById('email-list').innerHTML = '<div style="padding:15px; color:red;">Error loading inbox.</div>';
    }
}

/**
 * Renders the sidebar list of emails.
 * @param {Array} missions - Array of mission objects
 */
function renderEmailList(missions) {
    const listContainer = document.getElementById('email-list');
    listContainer.innerHTML = '';

    missions.forEach(mission => {
        const item = document.createElement('div');
        item.className = 'email-item';
        item.innerHTML = `
            <div class="email-item-sender">${mission.sender}</div>
            <div class="email-item-subject">${mission.subject}</div>
        `;
        item.addEventListener('click', () => {
            // Handle active state styling
            document.querySelectorAll('.email-item').forEach(el => el.classList.remove('active'));
            item.classList.add('active');
            renderEmailDetail(mission);
        });
        listContainer.appendChild(item);
    });
}

/**
 * Renders the full details of a selected email in the main reading pane.
 * @param {Object} mission - The mission object to display
 */
function renderEmailDetail(mission) {
    const contentContainer = document.getElementById('email-content');
    
    // Header Logo logic: 
    // Checks window.LOGO_DATA for base64 images loaded from .b64 files
    let headerLogoHtml = '';
    if (window.LOGO_DATA && window.LOGO_DATA[mission.logo]) {
        headerLogoHtml = `<img src="${window.LOGO_DATA[mission.logo]}" alt="${mission.logo}" style="max-height: 100px; display: block; margin-bottom: 15px;">`;
    } else if (mission.logo === 'astral') {
        headerLogoHtml = '<div class="astral-logo-text">ASTRAL <span style="font-size:16px; display:block; color:#000;">CORPORATION</span></div>';
    } else {
        headerLogoHtml = `<h2>${mission.sender}</h2>`;
    }

    // Determine body content: Image vs Text
    // If 'image' field is present, we try to show the mission briefing image.
    // Otherwise, we show the text details.
    let bodyContent = '';
    if (mission.image) {
        // NOTE: These images must exist in the 'public' folder relative to the UI
        bodyContent = `<img src="${mission.image}" class="email-full-image" alt="Mission Details">`;
    } else {
        bodyContent = `
            <div class="email-meta">
                From: ${mission.sender}<br>
                To: ${mission.recipient}
            </div>
            <div class="email-body">
                ${mission.body}
            </div>
            <div class="contract-details">
                <div class="detail-row">Contract Rate: ${mission.rate}</div>
                <div class="detail-row">RP: ${mission.rp}</div>
                <div class="detail-row">Difficulty: ${mission.difficulty}</div>
            </div>
        `;
    }

    contentContainer.innerHTML = `
        <div class="email-header-logo">
            ${headerLogoHtml}
        </div>
        
        ${bodyContent}
        
        <div class="action-bar">
            <button class="btn-accept" onclick="acceptMission('${mission.id}')">ACCEPT CONTRACT</button>
        </div>

        <div class="footer-logo">
            <span style="color: #c00; font-size: 30px;">&#8853;</span> 
            ORION <span style="font-weight:normal;">PRIVATE SECURITY GROUP</span>
        </div>
    `;
}

/**
 * Handles the "ACCEPT CONTRACT" button click.
 * Sends an event back to Arma 3 via A3API.
 * @param {string} missionId - The ID of the mission to accept
 */
window.acceptMission = function (missionId) {
    const mission = currentMissions.find(m => m.id === missionId);
    if (!mission) return;

    const alert = {
        event: "accept::mission",
        data: mission
    };
    // Send event to Arma 3 SQF backend
    A3API.SendAlert(JSON.stringify(alert));
    
    // Visual feedback
    const btn = document.querySelector('.btn-accept');
    btn.textContent = "ACCEPTED";
    btn.style.background = "#4CAF50";
    btn.disabled = true;
}

/**
 * Placeholder for receiving events from Arma 3 (if needed in future)
 */
window.receiveEmailEvent = function(response) {
    console.log("Received email event:", response);
}
