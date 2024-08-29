// Define price ranges for each size
const prices = {
    small: 300,
    medium: 315,
    large: 320,
    xlarge: 325
};

function updatePrice() {
    const size = document.getElementById('size').value;
    const priceInput = document.getElementById('price');
    
    // Update price based on selected size
    priceInput.value = prices[size] || '0';
}

function validateForm() {
    const name = document.getElementById('name').value;
    const mobile = document.getElementById('mobile').value;
    const message = document.getElementById('message').value;
    const price = document.getElementById('price').value;

    const errorElement = document.getElementById('error-message');
    errorElement.innerText = '';

    // Name validation: Minimum 30 characters
    if (name.length > 30) {
        errorElement.innerText = 'Name must within 30 characters.';
        return false;
    }

    // Mobile validation: Only numbers and exactly 10 digits
    if (!/^\d{10}$/.test(mobile)) {
        errorElement.innerText = 'Mobile number must be exactly 10 digits long and only contain numbers.';
        return false;
    }

    // Message validation: Must not exceed 50 characters
    if (message.length > 50) {
        errorElement.innerText = 'Message must not exceed 50 characters.';
        return false;
    }

    // Price validation: Must be a positive number
    if (isNaN(price) || price <= 0) {
        errorElement.innerText = 'Price must be a positive number.';
        return false;
    }

    return true;
}

function processOrder() {
    if (!validateForm()) {
        return;
    }

    const name = document.getElementById('name').value;
    const mobile = document.getElementById('mobile').value;
    const message = document.getElementById('message').value;
    const size = document.getElementById('size').value;
    const color = document.getElementById('color').value;
    const address = document.getElementById('address').value;
    const price = document.getElementById('price').value;

    // Create a Person object and display its details
    const person = new Person(name, mobile);
    console.log(person.displayDetails());

    // Generate receipt
    const receiptContent = `
        <strong>Order Received:</strong><br>
        Name: ${name}<br>
        Mobile: ${mobile}<br>
        Message: ${message}<br>
        Size: ${size}<br>
        Color: ${color}<br>
        Price: $${price}<br>
        Address: ${address}<br>
    `;
    
    document.getElementById('receipt-content').innerHTML = receiptContent;
    document.getElementById('receipt').style.display = 'block';
}
