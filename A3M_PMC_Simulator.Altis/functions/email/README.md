# OPSG Email System Module

This module provides an interactive Email UI for the OPSG PMC Simulator, allowing players to view and accept contracts. It uses a hybrid approach with an Arma 3 `HashMapObject` backend and a Web UI frontend.

## Directory Structure

*   `fn_initEmailClass.sqf`: Initializes the SQF Email Class.
*   `ui/_site/`: Contains the Web UI files.
    *   `index.html`: The main entry point for the UI.
    *   `style.css`: Styling for the email interface.
    *   `script.js`: Core logic for the UI (event handling, rendering).
    *   `missions.js`: **DATA FILE**. Contains the list of available contracts.
    *   `public/`: Stores assets like images and logo base64 files.

## How to Add/Edit Missions

To add or modify missions, you only need to edit one file:
**`functions/email/ui/_site/missions.js`**

### Step-by-Step Guide

1.  Open `missions.js` in your text editor.
2.  Locate the `window.MISSION_DATA` array.
3.  Copy an existing mission object (everything between `{` and `},`) and paste it as a new entry.
4.  Update the fields as described below.

### Mission Data Fields

*   **id**: A unique identifier for the mission (e.g., `"contract_M11"`). **Must be unique.**
*   **sender**: The name of the person or organization sending the email.
*   **recipient**: Usually `"OPSG Contact Department"`.
*   **subject**: The subject line of the email.
*   **body**: The text content of the email. You can use HTML tags like `<br>` for line breaks.
*   **rate**: The payment amount (e.g., `"$1,500,000.00"`).
*   **rp**: Reputation Points reward (e.g., `"2000"`).
*   **difficulty**: Difficulty rating (e.g., `"Medium / Hard"`).
*   **logo**: The faction logo to display in the header.
    *   Available options: `"astral"`, `"aaf"`, `"nato"`.
    *   If you use a different value, it will default to showing the Sender's name as text.

### Example Entry

```javascript
{
    "id": "contract_M11",
    "sender": "John Doe, Civilian",
    "recipient": "OPSG Contact Department",
    "subject": "Contract: Lost Dog",
    "body": "Please find my dog. He is a good boy.<br><br>Reward attached.",
    "rate": "$500.00",
    "rp": "10",
    "difficulty": "Very Low",
    "logo": "default"
}
```

## Image Assets

*   **Faction Logos**: The system currently loads specific logos (`astral`, `aaf`, `nato`) via base64 files to ensure compatibility with Arma's restricted browser environment.

## Technical Notes

*   **A3API**: The UI communicates with Arma 3 using `A3API.RequestFile` (to load assets) and `A3API.SendAlert` (to send events like "accept::mission").
*   **Global Variables**: `missions.js` assigns data to `window.MISSION_DATA`
