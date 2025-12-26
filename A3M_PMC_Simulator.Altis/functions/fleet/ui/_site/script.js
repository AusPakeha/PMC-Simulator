/**
 * Orion Fleet Store - Client-side JavaScript
 * Handles UI interactions and communication with Arma 3 backend
 */

/**
 * Global fleet data store
 * @type {Object}
 * @property {Array} categories - Available vehicle categories
 * @property {Array} allMods - All supported mod definitions
 * @property {Array} availableMods - Mods currently loaded (populated from Arma)
 * @property {string} currentMod - Currently selected mod
 */
let fleetData = {
    categories: [
        { id: 'cars', name: 'Cars' },
        { id: 'armor', name: 'Armor' },
        { id: 'heli', name: 'Heli' },
        { id: 'plane', name: 'Plane' },
        { id: 'naval', name: 'Naval' },
        { id: 'drone', name: 'Drone' },
        { id: 'support', name: 'Support' },
        { id: 'upgrades', name: 'Upgrades' }
    ],
    allMods: [
        { id: 'a3', name: 'Vanilla' },
        { id: 'rhs', name: 'RHS' },
        { id: 'ef', name: 'EF' },
        { id: 'rf', name: 'RF' },
        { id: 'ws', name: 'WS' },
        { id: 'ace3', name: 'ACE3' }
    ],
    availableMods: ['a3'], // Will be populated from Arma
    currentMod: 'a3'
};

/**
 * Initialize the fleet store application
 * Sets up event listeners for category selection and close button
 * Requests available mods from Arma on startup
 */
function initApp() {
    
    // Request available mods from Arma
    const alert = { event: "get::available::mods", data: {} };
    A3API.SendAlert(JSON.stringify(alert));
    
    // Setup close button handler
    document.getElementById('btn-exit').addEventListener('click', () => {
        A3API.SendAlert(JSON.stringify({
            event: "close",
            data: {}
        }));
    });

    // Setup category banner handlers
    const categories = ['cars', 'armor', 'heli', 'plane', 'naval', 'drone', 'support', 'upgrades'];
    categories.forEach(cat => {
        const btn = document.getElementById(`btn-${cat}`);
        if (btn) {
            btn.addEventListener('click', () => showCategory(cat));
        }
    });
}

// ============================================================================
// INITIALIZATION
// ============================================================================

// Ensure initApp runs whether the script loads before or after DOMContentLoaded
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initApp);
} else {
    initApp();
}

// ============================================================================
// CORE UI FUNCTIONS
// ============================================================================

/**
 * Display loading state and request category data from Arma
 * @param {string} categoryId - Category ID (cars, armor, heli, etc.)
 */
function showCategory(categoryId) {
    // Request category data from Arma
    const alert = {
        event: "get::fleet::category",
        data: { 
            category: categoryId,
            mod: fleetData.currentMod 
        }
    };
    A3API.SendAlert(JSON.stringify(alert));
    
    // Show loading state with mod selector
    const contentContainer = document.querySelector('.content-container');
    const categoryName = fleetData.categories.find(c => c.id === categoryId)?.name || categoryId;
    
    // Filter mods to only show available ones
    const availableModObjects = fleetData.allMods.filter(mod => fleetData.availableMods.includes(mod.id));
    const modSelector = availableModObjects.map(mod => 
        `<button class="mod-btn ${mod.id === fleetData.currentMod ? 'active' : ''}" 
                 onclick="selectMod('${mod.id}', '${categoryId}')">${mod.name}</button>`
    ).join('');
    
    contentContainer.innerHTML = `
        <div class="logo-section">
            <div class="logo-text">
                <span class="logo-icon">&#8853;</span>
                Orion Fleet Store - ${categoryName}
            </div>
        </div>
        <div class="mod-selector">
            ${modSelector}
        </div>
        <div style="text-align: center; padding: 50px;">
            <p>Loading...</p>
        </div>
    `;
}

/**
 * Display vehicle items for a category (called by Arma)
 * Parses vehicle data from Arma's JSON format and renders the UI
 * @param {string} categoryId - Category ID (cars, armor, heli, etc.)
 * @param {string} jsonData - JSON string containing vehicle data from Arma
 */
window.displayCategoryItems = function(categoryId, jsonData) {
    const contentContainer = document.querySelector('.content-container');
    const categoryName = fleetData.categories.find(c => c.id === categoryId)?.name || categoryId;
    
    // Parse vehicle data from Arma's nested array format
    let items = [];
    try {
        const rawData = JSON.parse(jsonData);
        
        // Convert [["key", "value"], ...] format to {key: value, ...} objects
        items = rawData.map(itemArray => {
            const vehicle = {};
            itemArray.forEach(([key, value]) => {
                vehicle[key] = value;
            });
            return vehicle;
        });
    } catch (err) {
        console.error('[Fleet] Failed to parse vehicle data:', err.message);
        contentContainer.innerHTML = `
            <div class="logo-section">
                <div class="logo-text">
                    <span class="logo-icon">&#8853;</span>
                    Orion Fleet Store - ${categoryName}
                </div>
            </div>
            <div style="text-align: center; padding: 50px;">
                <p>Error loading category data.</p>
                <button onclick="showStoreFront()" style="padding: 10px 20px; background: #1e3c72; color: #fff; border: none; border-radius: 4px; cursor: pointer;">Back to Store</button>
            </div>
        `;
        return;
    }

    // Check if items is empty
    if (items.length === 0) {
        // Filter mods to only show available ones
        const availableModObjects = fleetData.allMods.filter(mod => fleetData.availableMods.includes(mod.id));
        const modSelector = availableModObjects.map(mod => 
            `<button class="mod-btn ${mod.id === fleetData.currentMod ? 'active' : ''}" 
                     onclick="selectMod('${mod.id}', '${categoryId}')">${mod.name}</button>`
        ).join('');
        
        contentContainer.innerHTML = `
            <div class="logo-section">
                <div class="logo-text">
                    <span class="logo-icon">&#8853;</span>
                    Orion Fleet Store - ${categoryName}
                </div>
            </div>
            <div class="mod-selector">
                ${modSelector}
            </div>
            <div style="text-align: center; padding: 50px;">
                <p>No items available in this category for the selected mod.</p>
                <button onclick="showStoreFront()" style="padding: 10px 20px; background: #1e3c72; color: #fff; border: none; border-radius: 4px; cursor: pointer;">Back to Store</button>
            </div>
        `;
        return;
    }

    const itemsHtml = items.map(item => `
        <div class="item-row">
            <img src="" alt="${item.displayName}" class="item-image">
            <div class="item-info">
                <div class="item-name">${item.displayName}</div>
                <div class="item-price">$${item.price.toLocaleString()}</div>
            </div>
            <button class="buy-btn" onclick="purchaseItem('${item.className}', '${item.displayName}', ${item.price})">
                Buy
            </button>
        </div>
    `).join('');

    // Filter mods to only show available ones
    const availableModObjects = fleetData.allMods.filter(mod => fleetData.availableMods.includes(mod.id));
    const modSelector = availableModObjects.map(mod => 
        `<button class="mod-btn ${mod.id === fleetData.currentMod ? 'active' : ''}" 
                 onclick="selectMod('${mod.id}', '${categoryId}')">${mod.name}</button>`
    ).join('');
    
    contentContainer.innerHTML = `
        <div class="logo-section">
            <div class="logo-text">
                <span class="logo-icon">&#8853;</span>
                Orion Fleet Store - ${categoryName}
            </div>
        </div>
        <div class="mod-selector">
            ${modSelector}
        </div>
        <div style="padding: 20px;">
            <button onclick="showStoreFront()" style="padding: 10px 20px; background: #1e3c72; color: #fff; border: none; border-radius: 4px; cursor: pointer; margin-bottom: 20px;">Back to Store</button>
            <div class="item-list">
                ${itemsHtml}
            </div>
        </div>
    `;

    // Load images asynchronously
    const imageElements = contentContainer.querySelectorAll('.item-image');
    imageElements.forEach((img, index) => {
        const item = items[index];
        // Remove leading backslashes from image path if present
        let imagePath = item.image;
        while (imagePath.startsWith('\\')) {
            imagePath = imagePath.substring(1);
        }
        // Load image using RequestTexture
        A3API.RequestTexture(imagePath, 512).then(textureData => {
            // If it's already a data URI, use it directly
            if (textureData.startsWith('data:')) {
                img.src = textureData;
            } else {
                // Otherwise treat as base64
                const cleanB64 = textureData.replace(/[^A-Za-z0-9+/=]/g, '');
                img.src = `data:image/jpeg;base64,${cleanB64}`;
            }
        }).catch(err => {
            console.error('Failed to load texture for:', item.displayName, 'path:', imagePath, err);
        });
    });
}

/**
 * Return to store front (category selection screen)
 * Rebuilds the category grid and reattaches event listeners
 */
function showStoreFront() {
    const contentContainer = document.querySelector('.content-container');
    contentContainer.innerHTML = `
        <div class="logo-section">
            <div class="logo-text">
                <span class="logo-icon">&#8853;</span>
                Orion Fleet Store
            </div>
        </div>

        <div class="category-grid">
            <div id="btn-cars" class="category-btn">Cars</div>
            <div id="btn-armor" class="category-btn">Armor</div>
            <div id="btn-heli" class="category-btn">Heli</div>
            <div id="btn-plane" class="category-btn">Plane</div>
            <div id="btn-naval" class="category-btn">Naval</div>
            <div id="btn-drone" class="category-btn">Drone</div>
            <div id="btn-support" class="category-btn">Support</div>
            <div id="btn-upgrades" class="category-btn">Upgrades</div>
        </div>
    `;
    
    // Re-attach category button handlers
    const categories = ['cars', 'armor', 'heli', 'plane', 'naval', 'drone', 'support', 'upgrades'];
    categories.forEach(cat => {
        const btn = document.getElementById(`btn-${cat}`);
        if (btn) {
            btn.addEventListener('click', () => showCategory(cat));
        }
    });
}

// ============================================================================
// ARMA CALLBACK FUNCTIONS
// These functions are called by Arma 3 backend via ExecJS
// ============================================================================

/**
 * Receive and store available mods from Arma
 * Called by Arma on UI initialization
 * @param {Array<string>} mods - Array of available mod IDs (e.g., ["a3", "rhs", "ef"])
 */
window.setAvailableMods = function(mods) {
    fleetData.availableMods = mods;
};

// ============================================================================
// USER INTERACTION HANDLERS
// ============================================================================

/**
 * Handle mod selection from mod selector buttons
 * Reloads the current category with the selected mod
 * @param {string} modId - Selected mod ID (a3, rhs, ef, rf, ws, ace3)
 * @param {string} categoryId - Current category being viewed
 */
window.selectMod = function(modId, categoryId) {
    fleetData.currentMod = modId;
    showCategory(categoryId);
};

/**
 * Handle vehicle purchase button click
 * Sends purchase request to Arma backend
 * @param {string} className - Vehicle class name (e.g., "B_MRAP_01_F")
 * @param {string} displayName - Human-readable vehicle name
 * @param {number} price - Vehicle cost in credits
 */
window.purchaseItem = function(className, displayName, price) {
    A3API.SendAlert(JSON.stringify({
        event: "purchase::fleet::vehicle",
        data: {
            className: className,
            displayName: displayName,
            price: price
        }
    }));
};
