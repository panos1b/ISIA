<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ESTIASeek - Sign Up - Applicant</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Bootstrap JavaScript (Popper.js is required for dropdowns) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">EstiaSeek</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                </div>
            </div>
        </nav>
    </header>

    <div class="main" style="padding: 2%;">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign Up - Applicant</h2>
                        <form method="POST" class="register-form" id="register-form" action="signup_applicant_controller.jsp">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Username" />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Email" />
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
                            </div>
                            <div class="form-group">
                                <label for="shot_bio"><i class="zmdi zmdi-receipt"></i></label>
                                <input type="text" id="bio" name="bio" placeholder="Short bio" >
                            </div>
                            <div class="form-group">
                                <label for="location"><i class="zmdi zmdi-pin"></i></label> 
                                <select id="location" name="location" >
                                    <option  value="" disabled selected>Location</option>
                                    <option value="attica">Attica</option>
                                    <option value="makedonia-thraki">Macedonia and Thrace</option>
                                    <option value="epirus-makedonia">Epirus and Western Macedonia</option>
                                    <option value="thessalia-central">Thessaly and Central Greece</option>
                                    <option value="peloponisos-w">Peloponnese and Western Greece</option>
                                    <option value="aegean">Aegean</option>
                                    <option value="crete">Crete</option>
                                    <option value="mount-athos">Monastic community of Mount Athos</option>
                                </select>
            
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-wrench"></i></label>
                                <select id="experience" name="experience_level">
                                    <option value="" disabled selected>Experience Level</option>
                                    <option value="entry">Entry Level</option>
                                    <option value="intermediate">Intermediate</option>
                                    <option value="senior">Senior</option>
                                </select>
                            </div>

                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree to all
                                statements in <a href="tos.jsp" class="term-service">Terms of Service</a></label>

                             <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                            </div>

                            <% if(request.getAttribute("message") != null) { %>		
                                <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
                            <% } %>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.png" alt="sing up image"></figure>
                        <a href="signup_employer.jsp" class="signup-image-link">I am an Employer</a>
                        <a href="login.jsp" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>