/**
 * OPSG Email System - Mission Data
 *
 * This file contains the mission contracts displayed in the email UI.
 * It is loaded as a global variable 'window.MISSION_DATA' to ensure compatibility
 * with the Arma 3 embedded browser (which restricts local file fetches).
 *
 * HOW TO ADD A NEW MISSION:
 * 1. Add a new object to the array below.
 * 2. Ensure the 'id' is unique (e.g., 'contract_M11').
 * 3. Populate all fields.
 * 4. For 'logo', use one of the registered keys: 'astral', 'aaf', 'nato'.
 *    (See index.html for loaded logo definitions).
 *
 * FIELDS:
 * - id: Unique identifier for the contract.
 * - sender: Name/Title of the sender.
 * - recipient: Intended recipient (usually 'OPSG Contact Department').
 * - subject: Email subject line.
 * - body: HTML-supported body text. Use <br> for line breaks.
 * - rate: Contract payment amount string.
 * - rp: Reputation Points (RP) value.
 * - difficulty: Difficulty description.
 * - logo: 'astral' | 'aaf' | 'nato' | 'default'.
 */
window.MISSION_DATA = [
    {
        "id": "contract_M1",
        "sender": "Anika Sharapov, Astral Corp HR Dept.",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Corporate Escort",
        "body": "Security,<br><br>Please arrange an armed escort for one of our corporate executives as soon as possible.<br><br>Get the executive to the destination without him seeing any harm!<br><br>The destination will be communicated to your map once you accept the contract.",
        "rate": "$50,000.00",
        "rp": "300",
        "difficulty": "Low / Medium",
        "logo": "astral"
    },
    {
        "id": "contract_M2",
        "sender": "Anika Sharapov, Astral Corp HR Dept.",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Supply Truck Delivery",
        "body": "Security,<br><br>Please arrange an armed delivery of a supply truck for Astral Biomedical Division.<br><br>Get the truck to the destination without it coming to any harm!<br><br>The destination will be communicated to your map once you accept the contract.<br>The truck will be dropped for you in front of the Operations HQ upon acceptance.",
        "rate": "$75,000.00",
        "rp": "500",
        "difficulty": "Low / Medium",
        "logo": "astral"
    },
    {
        "id": "contract_M3",
        "sender": "Vlod Heironimus, Altis Armed Forces",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Checkpoint Staffing",
        "body": "Greetings,<br><br>Altis Armed Forces has staffing shortages at the moment. We can offer you a contract.<br><br>You will need to send a team to report to the North East Checkpoint and work a shift.<br>The destination will be communicated to your map once you accept the contract.<br>You will need a ground team to work the checkpoint and a mounted patrol unit.",
        "rate": "$150,000.00",
        "rp": "1500",
        "difficulty": "Medium",
        "logo": "aaf"
    },
    {
        "id": "contract_M4",
        "sender": "Anika Sharapov, Astral Corp HR Dept.",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Kidnapped Executive Rescue",
        "body": "Security,<br><br>One of our executives has been kidnapped! The kidnappers have demanded a ransom.<br>We know approximately where the kidnappers are holding our executive.<br><br>The destination will be communicated to your map once you accept the contract.<br>Re-Acquire the executive and return him to C-12.",
        "rate": "$1,500,000.00",
        "rp": "850",
        "difficulty": "Medium / Hard",
        "logo": "astral"
    },
    {
        "id": "contract_M5",
        "sender": "Vlod Heironimus, Altis Armed Forces",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Compound Clearance",
        "body": "Greetings,<br><br>A rogue military unit has taken over a compund not far from your Operations HQ.<br>The AAF cannot directly engage the compound for politcal reasons.<br><br>Eliminate the rogue military unit, and clear the compound of all hostile forces.<br>The location will be communicated to your map once you accept the contract.",
        "rate": "$2,000,000.00",
        "rp": "2000",
        "difficulty": "Medium",
        "logo": "aaf"
    },
    {
        "id": "contract_M6",
        "sender": "Vlod Heironimus, Altis Armed Forces",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Terror Cell Elimination",
        "body": "Greetings,<br><br>The Altian Government requests assistance in dealing with a foreign terrorist cell that has taken over an entire city. The Altian Government cannot risk an international incident by stepping in, and the Altian police forces are unprepared and ill equipped to handle this situation. OPSG is hereby offered a contract to eliminate all terror cells operating in the city.<br><br>The location will be communicated to your map once you accept the contract.",
        "rate": "$2,000,000.00",
        "rp": "2000",
        "difficulty": "Medium",
        "logo": "aaf"
    },
    {
        "id": "contract_M7",
        "sender": "Sen. John McCain",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: NATO Team Rescue",
        "body": "Salutations,<br><br>N.A.T.O. has lost a fireteam in the Altis area, and U.S. SOCOM requires an immediate asset in the area to rendezvous with the N.A.T.O. team and provide support.<br><br>The location of the stranded team’s last known location will be communicated to your map once you accept the contract.",
        "rate": "$1,500,000.00",
        "rp": "900",
        "difficulty": "Medium",
        "logo": "nato"
    },
    {
        "id": "contract_M8",
        "sender": "Anika Sharapov, Astral Corp HR Dept.",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Facility Security Shift",
        "body": "Security,<br><br>Please arrange for a group to conduct a premise security shift at the T9 facility.<br><br>Do not let any harm come to the facility or the workers!<br><br>The destination will be communicated to your map once you accept the contract.",
        "rate": "$750,000.00",
        "rp": "1000",
        "difficulty": "Low / Medium",
        "logo": "astral"
    },
    {
        "id": "contract_M9",
        "sender": "Anika Sharapov, Astral Corp HR Dept.",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Cyberterrorism Raid",
        "body": "Security,<br><br>A special assignment exists in Dorida. Altis ISP SatNet informed the AAF that someone was stealing internet services and committing acts of cyberterrorism.<br><br>AAF has contracted OPSG to raid the hacker den and retrive the logs and stolen data from the hacker’s server rack.<br><br>The destination will be communicated to your map once you accept the contract.",
        "rate": "$750,000.00",
        "rp": "950",
        "difficulty": "Low / Medium",
        "logo": "astral"
    },
    {
        "id": "contract_M10",
        "sender": "Anika Sharapov, Astral Corp HR Dept.",
        "recipient": "OPSG Contact Department",
        "subject": "Contract: Dignitary Protection",
        "body": "Security,<br><br>A foreign dignitary is scheduled to speak to the Altian populous. OPSG has been contracted to provide security to the dignitary during his speech. Secure the venue, ensure no threats breach the perimiter. In the event of an attack, keep the dignitary alive at all costs.<br><br>The venue location will be communicated to your map once you accept the contract.",
        "rate": "$1,500,000.00",
        "rp": "2000",
        "difficulty": "Medium / Hard",
        "logo": "astral"
    }
];
