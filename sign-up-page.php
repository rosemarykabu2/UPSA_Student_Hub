<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up | Create Account</title>
    <link rel="stylesheet" href="page.css">
</head>
<body>

    <main class="auth-container">
        <section class="auth-card">

            <div class="brand">
                <h1>Create Account</h1>
            </div>

            <form action="#" method="POST">

                <div class="form-group">
                    <label for="fullname">Full Name</label>
                    <input
                        type="text"
                        id="fullname"
                        name="fullname"
                        placeholder="Enter your full name"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="Enter your email"
                        required
                    >
                </div>

                 <div class="form-group">
                    <label for="email">Index Number</label>
                    <input
                        type="text"
                        id="email"
                        name="email"
                        placeholder="Enter your index number"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Create a password"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="confirm-password">Confirm Password</label>
                    <input
                        type="password"
                        id="confirm-password"
                        name="confirm_password"
                        placeholder="Confirm your password"
                        required
                    >
                </div>

                <button type="submit" class="auth-button">
                    Create Account
                </button>

            </form>

            <p class="auth-footer">
                Already have an account?
                <a href="login.html">Login</a>
            </p>

        </section>
    </main>

</body>
</html>