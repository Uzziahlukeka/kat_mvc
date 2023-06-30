<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Sign in example</title>
    <meta name="description" content="A minimalist layout for Login pages. Built with Pico CSS." />
    <link rel="shortcut icon" href="https://picocss.com/favicon.ico" />
    <link rel="canonical" href="https://picocss.com/examples/sign-in/" />

    <!-- Pico.css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css" />

    <!-- Custom styles for this example -->
    <link rel="stylesheet" href="custom.css" />
  </head>

  <body>
    <!-- Nav -->
    <nav class="container-fluid">
      <ul>
        <li>
          <a href="./" class="contrast" onclick="event.preventDefault()"><strong>Brand</strong></a>
        </li>
      </ul>
      <ul>
        <li>
          <details role="list" dir="rtl">
            <a href="profil.php">profil</a>
          </details>
        </li>
      </ul>
    </nav>
    <!-- ./ Nav -->

    <!-- Main -->
    <main class="container">
      <article class="grid">
        <div>
          <hgroup>
            <h1>Sign in</h1>
            <h2>to your site , my joy</h2>
          </hgroup>
          <form method="post" action="../controller/login.php">
            <input
              type="text"
              name="email"
              placeholder="email"
              aria-label="email"
              autocomplete="nickname"
              required
            />
            <input
              type="password"
              name="password"
              placeholder="Password"
              aria-label="Password"
              autocomplete="current-password"
              required
            />
            <button type="submit" name="submit" class="contrast">Login</button>
          </form>
          <a href="signup.php"><button >sign up</button></a>
        </div>
        <div></div>
      </article>
    </main>
    <script src="js/minimal-theme-switcher.js"></script>
  </body>
</html>
