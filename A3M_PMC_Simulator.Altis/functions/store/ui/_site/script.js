/**
 * Orion Item Store - Client-side JavaScript
 * Handles UI interactions and communication with Arma 3 backend
 */

/**
 * Global store data store
 * @type {Object}
 * @property {Array} categories - Available item categories
 * @property {Array} allMods - All supported mod definitions
 * @property {Array} availableMods - Mods currently loaded (populated from Arma)
 * @property {string} currentMod - Currently selected mod
 */
let itemData = {
    categories: [
        { id: 'items', name: 'Items' },
        { id: 'medical', name: 'Medical' },
        { id: 'electronic', name: 'Electronics' },
        { id: 'vests', name: 'Vests' },
        { id: 'uniforms', name: 'Uniforms' },
        { id: 'headgear', name: 'Headgear' },
        { id: 'backpacks', name: 'Backpacks' },
        { id: 'suppressors', name: 'Suppressors' },
        { id: 'optics', name: 'Optics' },
        { id: 'rifles', name: 'Rifles' },
        { id: 'pistols', name: 'Pistols' },
        { id: 'launchers', name: 'Launchers' },
        { id: 'magazines', name: 'Magazines' },
        { id: 'grenades', name: 'Grenades' },
        { id: 'smoke-grenades', name: 'Smoke Grenades' }
    ],
    allMods: [
        { id: 'a3', name: 'Vanilla' },
        { id: 'rhs', name: 'RHS' },
        { id: 'ef', name: 'EF' },
        { id: 'rf', name: 'RF' },
        { id: 'ws', name: 'WS' },
        { id: 'ace3', name: 'ACE3' },
        { id: 'tfar', name: 'TFAR' }
    ],
    availableMods: ['a3'], // Will be populated from Arma
    currentMod: 'a3'
};

/**
 * Initialize the store store application
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
    const categories = ['items', 'medical', 'electronics', 'vests', 'uniforms', 'headgear', 'backpacks', 'suppressors', 'optics', 'rifles', 'pistols', 'launchers', 'magazines', 'grenades', 'smoke-grenades'];
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
 * @param {string} categoryId - Category ID (items, medical, electronics, etc.)
 */
function showCategory(categoryId) {
    // Request category data from Arma
    const alert = {
        event: "get::store::category",
        data: {
            category: categoryId,
            mod: itemData.currentMod
        }
    };
    A3API.SendAlert(JSON.stringify(alert));

    // Show loading state with mod selector
    const contentContainer = document.querySelector('.content-container');
    const categoryName = itemData.categories.find(c => c.id === categoryId)?.name || categoryId;

    // Filter mods to only show available ones
    const availableModObjects = itemData.allMods.filter(mod => itemData.availableMods.includes(mod.id));
    const modSelector = availableModObjects.map(mod =>
        `<button class="mod-btn ${mod.id === itemData.currentMod ? 'active' : ''}"
                 onclick="selectMod('${mod.id}', '${categoryId}')">${mod.name}</button>`
    ).join('');

    contentContainer.innerHTML = `
        <div class="logo-section">
            <div class="logo-text">
                <span class="logo-icon">&#8853;</span>
                Orion Item Store - ${categoryName}
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
 * Display item items for a category (called by Arma)
 * Parses item data from Arma's JSON format and renders the UI
 * @param {string} categoryId - Category ID (cars, armor, heli, etc.)
 * @param {string} jsonData - JSON string containing item data from Arma
 */
window.displayCategoryItems = function (categoryId, jsonData) {
    const contentContainer = document.querySelector('.content-container');
    const categoryName = itemData.categories.find(c => c.id === categoryId)?.name || categoryId;

    // Parse item data from Arma's nested array format
    let items = [];
    try {
        const rawData = JSON.parse(jsonData);

        // Convert [["key", "value"], ...] format to {key: value, ...} objects
        items = rawData.map(entry => {
            if (Array.isArray(entry)) {
                const item = {};
                entry.forEach(([key, value]) => {
                    item[key] = value;
                });
                return item;
            }
            return entry;
        });
    } catch (err) {
        console.error('[A3M:Store] Failed to parse item data:', err.message);
        contentContainer.innerHTML = `
            <div class="logo-section">
                <div class="logo-text">
                    <span class="logo-icon">&#8853;</span>
                    Orion Item Store - ${categoryName}
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
        const availableModObjects = itemData.allMods.filter(mod => itemData.availableMods.includes(mod.id));
        const modSelector = availableModObjects.map(mod =>
            `<button class="mod-btn ${mod.id === itemData.currentMod ? 'active' : ''}"
                     onclick="selectMod('${mod.id}', '${categoryId}')">${mod.name}</button>`
        ).join('');

        contentContainer.innerHTML = `
            <div class="logo-section">
                <div class="logo-text">
                    <span class="logo-icon">&#8853;</span>
                    Orion Item Store - ${categoryName}
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
    const availableModObjects = itemData.allMods.filter(mod => itemData.availableMods.includes(mod.id));
    const modSelector = availableModObjects.map(mod =>
        `<button class="mod-btn ${mod.id === itemData.currentMod ? 'active' : ''}"
                 onclick="selectMod('${mod.id}', '${categoryId}')">${mod.name}</button>`
    ).join('');

    contentContainer.innerHTML = `
        <div class="logo-section">
            <div class="logo-text">
                <span class="logo-icon">&#8853;</span>
                Orion Item Store - ${categoryName}
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

    // Load images
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
            img.src = textureData;
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
                Orion Item Store
            </div>
        </div>

        <div class="category-grid">
            <div id="btn-items" class="category-btn">Items</div>
                <div id="btn-medical" class="category-btn">Medical</div>
                <div id="btn-electronics" class="category-btn">Electronics</div>
                <div id="btn-vests" class="category-btn">Vests</div>
                <div id="btn-uniforms" class="category-btn">Uniforms</div>
                <div id="btn-headgear" class="category-btn">Headgear</div>
                <div id="btn-backpacks" class="category-btn">Backpacks</div>
                <div id="btn-suppressors" class="category-btn">Suppressors</div>
                <div id="btn-optics" class="category-btn">Optics</div>
                <div id="btn-rifles" class="category-btn">Rifles</div>
                <div id="btn-pistols" class="category-btn">Pistols</div>
                <div id="btn-launchers" class="category-btn">Launchers</div>
                <div id="btn-magazines" class="category-btn">Magazines</div>
                <div id="btn-grenades" class="category-btn">Grenades</div>
                <div id="btn-smoke-grenades" class="category-btn">Smoke Grenades</div>
        </div>
    `;

    // Re-attach category button handlers
    const categories = ['items', 'medical', 'electronics', 'vests', 'uniforms', 'headgear', 'backpacks', 'suppressors', 'optics', 'rifles', 'pistols', 'launchers', 'magazines', 'grenades', 'smoke-grenades'];
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
window.setAvailableMods = function (mods) {
    itemData.availableMods = mods;
};

// ============================================================================
// USER INTERACTION HANDLERS
// ============================================================================

/**
 * Handle mod selection from mod selector buttons
 * Reloads the current category with the selected mod
 * @param {string} modId - Selected mod ID (a3, rhs, ef, rf, ws, ace3, tfar)
 * @param {string} categoryId - Current category being viewed
 */
window.selectMod = function (modId, categoryId) {
    itemData.currentMod = modId;
    showCategory(categoryId);
};

/**
 * Handle item purchase button click
 * Sends purchase request to Arma backend
 * @param {string} className - Item class name (e.g., "Binocular")
 * @param {string} displayName - Human-readable item name
 * @param {number} price - Item cost in credits
 */
window.purchaseItem = function (className, displayName, price) {
    A3API.SendAlert(JSON.stringify({
        event: "purchase::store::item",
        data: {
            className: className,
            displayName: displayName,
            price: price
        }
    }));
};
