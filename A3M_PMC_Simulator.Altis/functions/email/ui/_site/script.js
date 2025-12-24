// Initialize
console.log("script.js execution started");

let currentMissions = [];

function initApp() {
    console.log("Initializing App...");
    loadMissions();
    
    document.getElementById('btn-exit').addEventListener('click', () => {
        console.log("Exit button clicked");
        const alert = { event: "close", data: {} };
        A3API.SendAlert(JSON.stringify(alert));
    });
}

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initApp);
} else {
    initApp();
}

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
            document.querySelectorAll('.email-item').forEach(el => el.classList.remove('active'));
            item.classList.add('active');
            renderEmailDetail(mission);
        });
        listContainer.appendChild(item);
    });
}

function renderEmailDetail(mission) {
    const contentContainer = document.getElementById('email-content');

    // Header Logo logic
    let headerLogoHtml = '';
    if (window.LOGO_DATA && window.LOGO_DATA[mission.logo]) {
        headerLogoHtml = `<img src="${window.LOGO_DATA[mission.logo]}" alt="${mission.logo}" style="height: 128px; display: block; margin-bottom: 15px;">`;
    } else if (mission.logo === 'astral') {
        headerLogoHtml = '<div class="astral-logo-text">ASTRAL <span style="font-size:16px; display:block; color:#000;">CORPORATION</span></div>';
    } else {
        headerLogoHtml = `<h2>${mission.sender}</h2>`;
    }

    contentContainer.innerHTML = `
        <div class="email-header-logo">
            ${headerLogoHtml}
        </div>
        
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
        
        <div class="action-bar">
            <button class="btn-accept" onclick="acceptMission('${mission.id}')">ACCEPT CONTRACT</button>
        </div>

        <div class="footer-logo">
            <span style="color: #c00; font-size: 30px;">&#8853;</span> 
            ORION <span style="font-weight:normal;">PRIVATE SECURITY GROUP</span>
        </div>
    `;
}

window.acceptMission = function (missionId) {
    const mission = currentMissions.find(m => m.id === missionId);
    if (!mission) return;

    const alert = {
        event: "accept::mission",
        data: mission
    };
    A3API.SendAlert(JSON.stringify(alert));

    // Visual feedback
    const btn = document.querySelector('.btn-accept');
    btn.textContent = "ACCEPTED";
    btn.style.background = "#4CAF50";
    btn.disabled = true;
}

window.receiveEmailEvent = function (response) {
    console.log("Received email event:", response);
}
