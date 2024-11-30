<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css">
</head>
<body class="bg-gray-200 flex justify-center items-center h-screen">
   
    <div class="w-full max-w-xs mx-auto">
        <form action="checksuperadminlogin" method="POST" class="bg-gradient-to-r from-purple-400 to-blue-500 shadow-lg rounded-xl px-8 pt-6 pb-8 mb-4 text-white">
            <h2 class="text-center text-2xl font-bold mb-6">
                <i class="fas fa-sign-in-alt mr-2"></i> Sign In
            </h2>
            
            <!-- Aadhaar Number -->
            <div class="mb-4">
                <label class="block text-sm font-bold mb-2" for="aadhaar">Aadhaar Number</label>
                <input type="text" id="aadhaar" name="aadhaar" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-900 leading-tight focus:outline-none focus:shadow-outline" required />
            </div>
            
            <!-- Password -->
            <div class="mb-4">
                <label class="block text-sm font-bold mb-2" for="password">Password</label>
                <input type="password" id="password" name="password" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-900 leading-tight focus:outline-none focus:shadow-outline" required />
            </div>

            <!-- Role -->
            <div class="mb-4">
                <label class="block text-sm font-bold mb-2" for="role">Role</label>
                <select id="role" name="role" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-900 leading-tight focus:outline-none focus:shadow-outline" required>
                    <option value="">--Select Role--</option>
                    <option value="superadmin">Super Admin</option>
                    <option value="admin">Admin</option>
                    <option value="citizen">Citizen</option>
                    <option value="observer">Observer</option>
                    <option value="analyst">Analyst</option>
                </select>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="mt-4 bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Sign In</button>

            <!-- Register Button -->
            <div class="mt-4 text-center">
                <p class="text-sm text-white">Don't have an account? <a href="register.jsp" class="text-sm text-green-400 hover:text-blue-600 font-bold">Register</a></p>
            </div>
        </form>
    </div>
</body>
</html>
