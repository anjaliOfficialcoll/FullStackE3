document.getElementById("registrationForm").addEventListener("submit", function(event) {
    event.preventDefault();

    let username = document.getElementById("username").value.trim();
    let email = document.getElementById("email").value.trim();
    let password = document.getElementById("pass").value;
    let confirmPassword = document.getElementById("CP").value;
    let errorMsg = document.getElementById("errorMsg");

    // Reset error message styles
    errorMsg.classList.remove("success");

    if (username === "" || email === "" || password === "" || confirmPassword === "") {
        errorMsg.textContent = "All fields are required";
        return;
    }

    if (password !== confirmPassword) {
        errorMsg.textContent = "Passwords do not match";
        return;
    }

    if (password.length < 6) {
        errorMsg.textContent = "Password must be at least 6 characters";
        return;
    }

    errorMsg.classList.add("success");
    errorMsg.textContent = "Registration successful!";
});