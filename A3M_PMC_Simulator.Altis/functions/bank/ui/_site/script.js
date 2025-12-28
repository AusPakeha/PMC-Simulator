// Function to send events to Arma
function sendEvent(eventType, data = {}) {
    const alert = {
        event: eventType,
        data: data,
    };
    if (window.A3API) {
        A3API.SendAlert(JSON.stringify(alert));
    } else {
        console.warn("A3API not found (testing mode?)", alert);
    }
}

// Elements
const viewLogin = document.getElementById('view-login');
const viewDashboard = document.getElementById('view-dashboard');
const btnSignIn = document.getElementById('btn-signin');
const btnSignOut = document.getElementById('btn-signout');
const btnSubmitTimesheet = document.getElementById('btn-submit-timesheet');
const btnExit = document.getElementById('btn-exit');

const elAccountBalance = document.getElementById('account-balance');
const elPendingBalance = document.getElementById('pending-balance');
const elDebitBalance = document.getElementById('debit-balance');

// State
let isProcessing = false;

// Event Listeners
btnSignIn.addEventListener('click', () => {
    sendEvent('bank::signin');
});

btnSignOut.addEventListener('click', () => {
    viewDashboard.classList.add('hidden');
    viewLogin.classList.remove('hidden');
    sendEvent('bank::signout');
});

btnSubmitTimesheet.addEventListener('click', () => {
    if (isProcessing) return;
    isProcessing = true;
    btnSubmitTimesheet.textContent = "Processing...";
    sendEvent('bank::submit_timesheet');
});

btnExit.addEventListener('click', () => {
    sendEvent('close');
});

// Handle Data from Arma
window.receiveBankData = function (response) {
    console.log('Received bank data:', response);
    const event = response.event;
    const data = response.data;

    if (event === 'bank::data::update') {
        // Update values
        elAccountBalance.textContent = formatMoney(data.balance);
        elPendingBalance.textContent = formatMoney(data.pending);
        elDebitBalance.textContent = formatMoney(data.debits);

        // Show dashboard if not already
        if (viewDashboard.classList.contains('hidden')) {
            viewLogin.classList.add('hidden');
            viewDashboard.classList.remove('hidden');
        }

        // Reset button state
        if (isProcessing) {
            isProcessing = false;
            btnSubmitTimesheet.textContent = "Submit Timesheet";
        }
    }
};

function formatMoney(amount) {
    return '$' + Number(amount).toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
}
