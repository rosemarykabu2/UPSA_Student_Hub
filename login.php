<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Welcome Back</title>
    <link rel="stylesheet" href="page.css">
</head>
<body>

    <main class="auth-container">
        <section class="auth-card">

            <div class="brand">
                <h1>Welcome Back</h1>
                <p>Log in to continue to your account.</p>
            </div>

            <form action="#" method="POST">

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
                    <label for="password">Password</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Enter your password"
                        required
                    >
                </div>

                <div class="form-options">
                    <label class="remember">
                        <input type="checkbox" name="remember">
                        Remember me
                    </label>

                    <a href="#">Forgot password?</a>
                </div>

                <button type="submit" class="auth-button">
                    Login
                </button>

            </form>

            <p class="auth-footer">
                Don't have an account?
                <a href="signup.html">Sign up</a>
            </p>

        </section>
    </main>

</body>
</html>