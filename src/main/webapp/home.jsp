<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Election Monitor</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <!-- Add this to the <head> section of your HTML file -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet" />
    
</head>

<body class="bg-gray-50">

    <!-- Header Section -->
    <header class="fixed top-0 left-0 w-full flex justify-between items-center p-3 bg-white shadow-md z-10">
     <style>
    nav a {
    transition: color 0.3s ease; /* Smooth color transition */
}

nav a:hover {
    color: #ff5733; /* Highlight color on hover */
    font-weight: bold; /* Optional: Make text bold on hover */
}
     </style>

        <div class="flex items-center space-x-4">
            <img src="/images/ec.png" alt="Logo" class="h-14 mr-4" />
            <div class="text-2xl font-bold">Election Monitor</div>
        </div>
        <nav class="space-x-8">
            <a href="#home" class="text-blue-500 cursor-pointer">Home</a>
            <a href="#about" class="text-blue-500 cursor-pointer">About Us</a>
            <a href="#our-team" class="text-blue-500 cursor-pointer">Our Team</a>
            <a href="#feedback" class="text-blue-500 cursor-pointer">Feedback</a>
        </nav>
        <div class="flex items-center space-x-4">
            <!-- Modify the button to link to the signin.jsp -->
<!-- Sign Up Button (this will trigger the modal) -->
   <a href="javascript:void(0);" onclick="openSignInModal()" class="bg-white border border-gray-300 rounded-full px-4 py-2 text-blue-500 hover:bg-blue-500 hover:text-white">Sign Up</a>
        </div>
    </header>

    <!-- Hero Section -->
    <main id="home" class="text-center py-16 bg-white relative z-0 pt-24">
        <div class="absolute top-0 right-0 w-1/2 h-full bg-blue-200 rounded-bl-full"></div>
        <div class="relative z-10">
            <p class="text-gray-700 text-lg">Ready for Change?</p>
            <h1 class="text-5xl font-bold text-gray-900 mt-2">Monitor Elections for Transparency</h1>
            <p class="text-gray-500 mt-4">Stay informed about the latest election processes, monitor fairness, and ensure transparency in every step.</p>
            <div class="mt-8 space-x-4">
                <button class="bg-blue-500 text-white px-6 py-3 rounded-full">Track Elections</button>
                <button class="border border-gray-300 px-6 py-3 rounded-full">
                    Learn More <i class="fas fa-arrow-right ml-2"></i>
                </button>
            </div>
        </div>
    </main>

    <!-- Election Info Section -->
<section class="py-16 bg-white" id="our-tea">
    <style>
        .card-content {
            height: 110px; /* Adjust height for consistent alignment */
        }
    </style>
    <div class="container mx-auto px-6">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            <!-- Card 1 -->
            <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                <img src="/images/b13.jpg" alt="Election Data Analysis" class="w-32 h-32 rounded-full mx-auto" />
                <h3 class="text-xl font-semibold mt-4">Election Data Analysis</h3>
                <div class="card-content">
                    <p class="text-gray-500 mt-2">Provides live updates on election data, allowing users to stay informed on election results and voting patterns as they happen.</p>
                </div>
                <div class="flex justify-between items-center mt-4">
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-full">Start Tracking</button>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                <img src="/images/g1.jpg" alt="Voter Engagement" class="w-32 h-32 rounded-full mx-auto" />
                <h3 class="text-xl font-semibold mt-4">Voter Engagement</h3>
                <div class="card-content">
                    <p class="text-gray-500 mt-2">Encourage voter participation and spread awareness of election processes.</p>
                </div>
                <div class="flex justify-between items-center mt-4">
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-full">Engage Voters</button>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                <img src="/images/g3.jpg" alt="Secure Monitoring" class="w-32 h-32 rounded-full mx-auto" />
                <h3 class="text-xl font-semibold mt-4">Secure Monitoring</h3>
                <div class="card-content">
                    <p class="text-gray-500 mt-2">Ensures data integrity and platform security, safeguarding sensitive election information and protecting against unauthorized access.</p>
                </div>
                <div class="flex justify-between items-center mt-4">
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-full">Check Integrity</button>
                </div>
            </div>
            <!-- Card 4 -->
            <div class="bg-white shadow-lg rounded-lg p-6 text-center">
                <img src="/images/g5.jpg" alt="Anomaly Detection" class="w-32 h-32 rounded-full mx-auto" />
                <h3 class="text-xl font-semibold mt-4">Anomaly Detection</h3>
                <div class="card-content">
                    <p class="text-gray-500 mt-2">Detects irregularities in voting patterns and other election processes, helping to identify and prevent potential fraud.</p>
                </div>
                <div class="flex justify-between items-center mt-4">
                    <button class="bg-blue-500 text-white px-4 py-2 rounded-full">View Reports</button>
                </div>
            </div>
        </div>
    </div>
</section>


    <!-- Why Choose Us Section -->
    <div class="bg-gray-50 py-16">
        <div class="container mx-auto text-center">
            <h1 class="text-4xl font-bold text-gray-900 mb-4">WHY CHOOSE US?</h1>
            <p class="text-gray-500 mb-12">We monitor elections to ensure fairness, transparency, and civic engagement.</p>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Card 1 -->
                <div class="bg-white p-8 rounded-lg shadow-md">
                    <div class="text-blue-500 text-4xl mb-4">
                        <i class="fas fa-gavel"></i>
                    </div>
                    <h2 class="text-xl font-semibold text-gray-900 mb-2">Transparent Election Process</h2>
                    <p class="text-gray-500">We provide a transparent election process to ensure that all votes are counted fairly.</p>
                </div>
                <!-- Card 2 -->
                <div class="bg-white p-8 rounded-lg shadow-md">
                    <div class="text-blue-500 text-4xl mb-4">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h2 class="text-xl font-semibold text-gray-900 mb-2">Secure Voting System</h2>
                    <p class="text-gray-500">Our system uses advanced security protocols to safeguard voters' data and election results.</p>
                </div>
                <!-- Card 3 -->
                <div class="bg-white p-8 rounded-lg shadow-md">
                    <div class="text-blue-500 text-4xl mb-4">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h2 class="text-xl font-semibold text-gray-900 mb-2">Real-Time Election Monitoring</h2>
                    <p class="text-gray-500">Track election progress in real-time with our intuitive dashboard and accurate reports.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- About Us Section -->
    <div id="about" class="bg-white text-gray-800">
        <div class="container mx-auto px-4 py-16 flex flex-col md:flex-row items-center">
            <div class="md:w-1/2">
                <img src="https://storage.googleapis.com/a1aa/image/g9b39YgV9qbxCxxEkYSbFRACeAw2xfJOGqUM3GCr9vnUSTvTA.jpg" alt="About Us" class="rounded-lg shadow-lg" />
            </div>
            <div class="md:w-1/2 md:pl-12 mt-8 md:mt-0">
                <h2 class="text-4xl font-bold mb-4">ABOUT US</h2>
                <div class="h-1 w-16 bg-blue-500 mb-4"></div>
                <p class="text-lg mb-6">
                    The Election Monitoring System is designed to foster transparency, security, and trust in the democratic process. Our platform ensures that every election is monitored fairly, allowing citizens, observers, and analysts to track and verify election activities in real-time. Our mission is to empower people by providing them with accurate, reliable, and accessible information on the electoral process.
                </p>
            </div>
        </div>
    </div>

    <!-- Our Team Section -->
        <section class="py-16 bg-white" id="our-team">
  <div class="bg-gray-100 font-['Roboto']">
    <div class="max-w-6xl mx-auto py-12">
      <h1 class="text-3xl font-bold text-green-600 mb-8">Our Team</h1>
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Team Member 1 -->
        <div class="bg-white p-6 rounded-lg shadow-lg">
          <img src="/images/manoj.jpg" alt="Kadambala Manoj" class="w-full h-64 object-cover rounded-t-lg" />
          <div class="mt-4">
            <h2 class="text-xl font-bold text-green-600">Kadambala Manoj</h2>
            <p class="text-gray-700 font-semibold">Principal & Creative Director</p>
            <p class="text-gray-600 mt-2">An avid runner, he pretty much keeps Brooks Running Shoes in business.</p>
            <div class="mt-4 text-gray-600 space-y-2">
              <p>
                <i class="fab fa-linkedin text-blue-600 mr-2"></i>
                <a href="https://www.linkedin.com/in/manoj-kadambala/" target="_blank" rel="noopener noreferrer" class="hover:underline">LinkedIn</a>
              </p>
              <p>
                <i class="fab fa-instagram text-pink-500 mr-2"></i>
                <a href="https://www.instagram.com/kadambala.manoj/" target="_blank" rel="noopener noreferrer" class="hover:underline">Instagram</a>
              </p>
              <p>
                <i class="fas fa-envelope text-red-500 mr-2"></i>
                <a href="mailto:manoj@example.com" class="hover:underline">manoj@example.com</a>
              </p>
              <p>
                <i class="fas fa-phone text-green-500 mr-2"></i>
                <a href="tel:+1234567890" class="hover:underline">+123-456-7890</a>
              </p>
            </div>
          </div>
        </div>

        <!-- Team Member 2 -->
        <div class="bg-white p-6 rounded-lg shadow-lg">
          <img src="/images/mhk1.jpg" alt="Kadambala Mahesh" class="w-full h-64 object-cover rounded-t-lg" />
          <div class="mt-4">
            <h2 class="text-xl font-bold text-green-600">Kadambala Mahesh</h2>
            <p class="text-gray-700 font-semibold">Principal & Managing Partner</p>
            <p class="text-gray-600 mt-2">His determination comes from years of eating poutine and skiing Goat’s Eye.</p>
            <div class="mt-4 text-gray-600 space-y-2">
              <p>
                <i class="fab fa-linkedin text-blue-600 mr-2"></i>
                <a href="https://www.linkedin.com/in/mahesh" target="_blank" rel="noopener noreferrer" class="hover:underline">LinkedIn</a>
              </p>
              <p>
                <i class="fab fa-instagram text-pink-500 mr-2"></i>
                <a href="https://www.instagram.com/mahesh" target="_blank" rel="noopener noreferrer" class="hover:underline">Instagram</a>
              </p>
              <p>
                <i class="fas fa-envelope text-red-500 mr-2"></i>
                <a href="mailto:mahesh@example.com" class="hover:underline">mahesh@example.com</a>
              </p>
              <p>
                <i class="fas fa-phone text-green-500 mr-2"></i>
                <a href="tel:+1234567891" class="hover:underline">+123-456-7891</a>
              </p>
            </div>
          </div>
        </div>

        <!-- Team Member 3 -->
        <div class="bg-white p-6 rounded-lg shadow-lg">
          <img src="/images/yes.jpg" alt="D D S Yeswanth" class="w-full h-64 object-cover rounded-t-lg" />
          <div class="mt-4">
            <h2 class="text-xl font-bold text-green-600">D D S Yeswanth</h2>
            <p class="text-gray-700 font-semibold">Digital Project Manager</p>
            <p class="text-gray-600 mt-2">A University of Kansas alum, he has a fondness for all things KC.</p>
            <div class="mt-4 text-gray-600 space-y-2">
              <p>
                <i class="fab fa-linkedin text-blue-600 mr-2"></i>
                <a href="https://www.linkedin.com/in/yeswanth" target="_blank" rel="noopener noreferrer" class="hover:underline">LinkedIn</a>
              </p>
              <p>
                <i class="fab fa-instagram text-pink-500 mr-2"></i>
                <a href="https://www.instagram.com/yeswanth" target="_blank" rel="noopener noreferrer" class="hover:underline">Instagram</a>
              </p>
              <p>
                <i class="fas fa-envelope text-red-500 mr-2"></i>
                <a href="mailto:yeswanth@example.com" class="hover:underline">yeswanth@example.com</a>
              </p>
              <p>
                <i class="fas fa-phone text-green-500 mr-2"></i>
                <a href="tel:+1234567892" class="hover:underline">+123-456-7892</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


    <!-- Feedback Section -->
    <div id="feedback" class="bg-gray-100 flex items-center justify-center min-h-screen">
        <div class="bg-white p-6 rounded-md shadow-md w-full max-w-6xl">
            <h1 class="text-2xl font-semibold mb-2">Feedback</h1>
            <p class="text-gray-600 mb-6">We value your feedback!</p>
            <form>
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1" for="name">Name <span class="text-red-500">*</span></label>
                    <input class="w-full px-3 py-2 border rounded-md text-gray-700 focus:outline-none focus:ring-2 focus:ring-blue-500" type="text" id="name" placeholder="Enter your full name" />
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 font-semibold mb-1" for="email">Email <span class="text-red-500">*</span></label>
                    <input class="w-full px-3 py-2 border rounded-md text-gray-700 focus:outline-none focus:ring-2 focus:ring-blue-500" type="email" id="email" placeholder="Enter your email address" />
                </div>
                <div class="mb-6">
                    <label class="block text-gray-700 font-semibold mb-1" for="message">Message</label>
                    <textarea class="w-full px-3 py-2 border rounded-md text-gray-700 focus:outline-none focus:ring-2 focus:ring-blue-500" id="message" rows="4" placeholder="Write your message..."></textarea>
                </div>
                <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    Submit Feedback
                </button>
            </form>
        </div>
    </div>

    <script>
        // Example of handling modal opening (for sign-up or sign-in)
        function openSignInModal() {
            alert('Sign Up Modal Triggered!');
        }
    </script>
    <!-- Sign-In Modal (Hidden initially) -->
<div id="signinModal" class="fixed inset-0 bg-gray-500 bg-opacity-75 flex justify-center items-center z-50 hidden">
    <div class="bg-gradient-to-r from-purple-400 to-blue-500 shadow-lg rounded-xl w-full max-w-md px-8 pt-6 pb-8 mb-4 text-white">
        <button onclick="closeSignInModal()" class="absolute top-4 right-4 text-gray-300 text-2xl">&times;</button>
        <h2 class="text-2xl font-bold text-center mb-6">Sign In</h2>
        <form action="checksuperadminlogin" method="POST" class="space-y-6">
            <!-- Aadhaar Number -->
            <div>
                <label for="aadhaar" class="block text-sm font-semibold mb-2">Aadhaar Number</label>
                <input type="text" id="aadhaar" name="aadhaar" class="w-full px-4 py-2 border rounded-md bg-white text-gray-800 focus:outline-none focus:ring-2 focus:ring-blue-400" required />
            </div>
            <!-- Password -->
            <div>
                <label for="password" class="block text-sm font-semibold mb-2">Password</label>
                <input type="password" id="password" name="password" class="w-full px-4 py-2 border rounded-md bg-white text-gray-800 focus:outline-none focus:ring-2 focus:ring-blue-400" required />
            </div>
            <!-- Role -->
            <div>
                <label for="role" class="block text-sm font-semibold mb-2">Role</label>
                <select id="role" name="role" class="w-full px-4 py-2 border rounded-md bg-white text-gray-800 focus:outline-none focus:ring-2 focus:ring-blue-400" required>
                    <option value="">--Select Role--</option>
                    <option value="superadmin">Super Admin</option>
                    <option value="admin">Admin</option>
                    <option value="citizen">Citizen</option>
                    <option value="observer">Observer</option>
                    <option value="analyst">Analyst</option>
                </select>
            </div>
            <!-- Submit Button -->
            <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white py-2 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400">
                Sign In
            </button>
            <!-- Register Button -->
            <div class="mt-4 text-center">
                <p class="text-sm text-white">Don't have an account? <a href="register.jsp" class="text-sm text-green-400 hover:text-blue-600 font-bold">Register</a></p>
            </div>
        </form>
    </div>
</div>

    
</body>
<script>
//Smooth scrolling effect
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        target.scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        });
    });
});

</script>
<script>
    // Function to open the Sign-In modal
    function openSignInModal() {
        document.getElementById('signinModal').classList.remove('hidden');
    }

    // Function to close the Sign-In modal
    function closeSignInModal() {
        document.getElementById('signinModal').classList.add('hidden');
    }
    function openSignInModal() {
        document.getElementById('signinModal').classList.remove('hidden');
    }

    // Function to close the Sign-In modal
    function closeSignInModal() {
        document.getElementById('signinModal').classList.add('hidden');
    }

    // Close the modal when clicking on the background
    window.onclick = function(event) {
        var modal = document.getElementById('signinModal');
        if (event.target === modal) {
            closeSignInModal();
        }
    }
</script>
 <div>
 <h2> I am Manoj</h2>
 </div>
</html>
