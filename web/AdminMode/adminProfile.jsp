<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - Online Shopping</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .profile-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .profile-header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        .profile-header img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            object-fit: cover;
        }

        .profile-header .btn-add-image {
            position: absolute;
            bottom: 0;
            right: 0;
            background-color: #007bff;
            color: white;
            border-radius: 50%;
            border: none;
            padding: 10px;
            font-size: 18px;
            cursor: pointer;
            display: none; /* Initially hidden */
        }

        .profile-info {
            margin-top: 20px;
        }

        .profile-info dt {
            font-weight: bold;
        }

        .profile-info dd {
            margin-left: 0;
        }

        .file-input {
            display: none;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">ASTU Online Shopping (Admin)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="adminHomePage.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addProduct.jsp">Add Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="order.jsp">Orders</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <!-- Profile Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Profile
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                            <li><a class="dropdown-item" href="adminProfile.jsp">View Profile</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="../logout.jsp">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Profile Page -->
    <div class="profile-container">
        <div class="profile-header">
            <!-- Profile Picture -->
            <img id="profileImage" src="https://via.placeholder.com/150" alt="User Profile Picture">
            <!-- Button to Add/Change Image with + sign (Initially hidden) -->
            <button class="btn-add-image" onclick="document.getElementById('imageUpload').click()">+</button>
            <input type="file" id="imageUpload" class="file-input" accept="image/*" onchange="changeProfileImage(event)">
            <h2 class="mt-3" id="profileName">John Doe</h2>
            <p class="text-muted" id="profileJoinDate">Joined: January 15, 2024</p>
        </div>

        <!-- Profile Information -->
        <div class="profile-info" id="profileViewMode">
            <dl class="row">
                <dt class="col-sm-3">Full Name:</dt>
                <dd class="col-sm-9" id="fullName">John Doe</dd>

                <dt class="col-sm-3">Email:</dt>
                <dd class="col-sm-9" id="email">john.doe@example.com</dd>

                <dt class="col-sm-3">Phone:</dt>
                <dd class="col-sm-9" id="phone">+1 234 567 890</dd>

                <dt class="col-sm-3">Address:</dt>
                <dd class="col-sm-9" id="address">1234 Elm Street, Some City, Some Country</dd>

                <dt class="col-sm-3">Date of Birth:</dt>
                <dd class="col-sm-9" id="dob">March 10, 1990</dd>

                <dt class="col-sm-3">Payment Method:</dt>
                <dd class="col-sm-9" id="paymentMethod">Credit Card (**** **** **** 1234)</dd>
            </dl>
        </div>

        <!-- Profile Edit Mode -->
        <div class="profile-info" id="profileEditMode" style="display: none;">
            <form id="editProfileForm">
                <div class="mb-3">
                    <label for="editFullName" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="editFullName" value="John Doe" required>
                </div>
                <div class="mb-3">
                    <label for="editEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="editEmail" value="john.doe@example.com" required>
                </div>
                <div class="mb-3">
                    <label for="editPhone" class="form-label">Phone</label>
                    <input type="tel" class="form-control" id="editPhone" value="+1 234 567 890" required>
                </div>
                <div class="mb-3">
                    <label for="editAddress" class="form-label">Address</label>
                    <input type="text" class="form-control" id="editAddress" value="1234 Elm Street, Some City, Some Country" required>
                </div>
                <div class="mb-3">
                    <label for="editDob" class="form-label">Date of Birth</label>
                    <input type="date" class="form-control" id="editDob" value="1990-03-10" required>
                </div>
                <div class="mb-3">
                    <label for="editPaymentMethod" class="form-label">Payment Method</label>
                    <input type="text" class="form-control" id="editPaymentMethod" value="Credit Card (**** **** **** 1234)" required>
                </div>
                <button type="submit" class="btn btn-primary">Save Changes</button>
                <button type="button" class="btn btn-secondary ms-2" onclick="toggleEditMode()">Cancel</button>
            </form>
        </div>

        <!-- Button to Edit Profile -->
        <div class="text-center" id="editProfileButtonContainer">
            <button class="btn btn-primary" onclick="toggleEditMode()">Edit Profile</button>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- JavaScript to handle edit and image upload functionality -->
    <script>
        // Function to toggle between view and edit modes
        function toggleEditMode() {
            const profileViewMode = document.getElementById('profileViewMode');
            const profileEditMode = document.getElementById('profileEditMode');
            const editProfileButtonContainer = document.getElementById('editProfileButtonContainer');
            const btnAddImage = document.querySelector('.btn-add-image');

            // If we are in view mode, switch to edit mode
            if (profileViewMode.style.display === "none") {
                profileViewMode.style.display = "block";
                profileEditMode.style.display = "none";
                editProfileButtonContainer.style.display = "block";
                btnAddImage.style.display = "none";  // Hide the + sign when not editing
            } else {
                // Otherwise, switch to edit mode
                profileViewMode.style.display = "none";
                profileEditMode.style.display = "block";
                editProfileButtonContainer.style.display = "none";
                btnAddImage.style.display = "block";  // Show the + sign in edit mode
            }
        }

        // Handle form submission to save edited profile
        document.getElementById('editProfileForm').addEventListener('submit', function(e) {
            e.preventDefault();

            // Get the edited values
            const fullName = document.getElementById('editFullName').value;
            const email = document.getElementById('editEmail').value;
            const phone = document.getElementById('editPhone').value;
            const address = document.getElementById('editAddress').value;
            const dob = document.getElementById('editDob').value;
            const paymentMethod = document.getElementById('editPaymentMethod').value;

            // Update the profile view with the new data
            document.getElementById('fullName').textContent = fullName;
            document.getElementById('email').textContent = email;
            document.getElementById('phone').textContent = phone;
            document.getElementById('address').textContent = address;
            document.getElementById('dob').textContent = dob;
            document.getElementById('paymentMethod').textContent = paymentMethod;

            // Switch back to view mode
            toggleEditMode();
        });

        // Change profile image when user uploads a new image
        function changeProfileImage(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('profileImage').src = e.target.result;
                }
                reader.readAsDataURL(file);
            }
        }
    </script>
</body>
</html>
