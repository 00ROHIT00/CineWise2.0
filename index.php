    <!DOCTYPE html>
    <html lang="en">
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CineWise</title>
        <link rel="stylesheet" href="./styles.css"> <!--Custom CSS File-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@10..48,800&family=Poppins:wght@300&display=swap" rel="stylesheet"><!--GOOGLE FONTS-->
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'> <!--BOXICONS-->
        <link rel="icon" type="images/x-icon" href="./assets/favicon.ico">    <!--FAVICON ICON-->
    </head>
    <body>
        <?php
        session_start();
        if(isset($_SESSION['userName'])) {
            echo "The user is signed in!";
        } else {
            echo "Please Log in";
        }
        ?>
        <div class="mainbox">


        <section id="homePage" class="section">
            <div class="container">
                <div class="videoWrapper">
                    <video autoplay loop muted plays-inline class="bgClip"> 
                        <source src="./assets/live.mp4" type="video/mp4">
                        Browser Not Supported!
                    </video>
                </div>
                <div class="box"><H1 class="cw">CineWise</H1></div>
                    <form action="./php/search.php" method="post">
                        <input type="text" placeholder="Search The Movie / Genre" class="searchBar" name="searchInput" id="searchInput" required>
                    </form>
                    <a href="#secondPage"><i class='bx bxs-down-arrow' id="arrow" id="searchBtn"></i></a>
            </div>
        </section>


        <sections id="secondPage" class="section">
            <div class="container2">
                <div class="cw2">
                    <h1>CineWise</h1>
                </div>
                <div class="navbar">
                    <nav>
                        <ul>
                            <li><a href="#homePage"><b>Home</b></a></li>
                            <li><a href="#AboutUs"><b>About Us</b></a></li>
                            <li><a href="#ContactUs"><b>Contact</b></a></li>
                            <li><a href="http://localhost/cinewise2.0/signin.html" target="blank" id="signinButton"><b>Sign In</b></a></li>
                            <li><a href="./watch-later.html" class="watchLater"><b>Watch Later List</b></a></li>
                        </ul>
                    </nav>
                </div>
                <p class="cw-intro">Welcome to <span><b>CineWise</b></span>, your go-to destination for all things movies! With CineWise, finding your favorite films is as easy as pie. Whether you have a specific movie in mind or you're in the mood for a certain genre like action, romance, or comedy, we've got you covered.
                
                    Picture this: You're craving a thrilling adventure movie for your Friday night in. Simply type "adventure" into our search bar, and voilà! You'll be greeted with a curated list of exciting films that match your taste. No more aimless scrolling through endless options CineWise narrows it down for you.
                    
                    But that's not all! We know everyone's different, so CineWise offers personalized recommendations based on your past searches and preferences. It's like having a movie buddy who knows exactly what you love. Plus, our user-friendly interface ensures that you'll have a smooth and enjoyable experience every time you visit.
            
                    So, whether you're a movie buff or just looking for a fun night in, CineWise is here to make your movie-searching journey a breeze. Start exploring now and let the movie magic unfold!</p>
                    <h3>FAQs</h3>
                    <div class="faqbox">

                        <div class="faq">
                            <div class="left">
            
                                Q) How can I search for a specific movie on CineWise? <br>
                                - To search for a specific movie on CineWise, simply enter the movie's title in the search bar at the top of the homepage and hit enter. You can also search for a specific genre or year to narrow down your search result.<br> <br>
                                Q) Can I filter search results by release year or genre? <br>
                                - Yes, you can! When entering your search query, you can use the specified genre or release year to display all the details about the movies in that genre / released in that year.
                                <br></div>
                            
                            <div class="right">
                                
                                   Q) What movie information is available on CineWise? <br>
                                    - Cinewise provides a wealth of movie information, including <br> movie details  such as the movie's title, release year, genre, user ratings etc. <br>You can also find trailers for the same.
                                    <br><br>
            
                                    Q) Is it possible to create a watchlist of movies I want to see in the future? <br>
                                    - Yes, you can create a watchlist on Cinewise. Simply click on the watch later button on the movie card and you'll be able to save movies to your watchlist, making it easy to keep track of what you want to watch next.
                                    <br>
                               
                            </div>
                        </div>
                    </div>
            </div>
        </section>


        <section id="AboutUs" class="section">
            <div class="container3">
                <h1>About Us!</h1>
                <nav>
                    <ul>
                        <li><a href="#homePage"><b>Home</b></a></li>
                        <li><a href="#ContactUs"><b>Contact</b></a></li>
                        <li><a href="http://localhost/cinewise2.0/signin.html" target="blank" id="signinButton"><b>Sign In</b></a></li>
                        <li><a href="./watch-later.html" class="watchLater"><b>Watch Later List</b></a></li>
                    </ul>
                </nav>
                <p>Welcome to <span><b>CineWise</b></span>, where our shared love for the magic of cinema fuels our mission to be your ultimate destination for all things related to movies. At CineWise, we understand that movies are more than just a form of entertainment; they are a source of inspiration, a means of escapism, and a reflection of the human experience. Our passion for the world of cinema drives us to provide you with a comprehensive platform that caters to movie enthusiasts of all kinds.</p><br>

            <h3>Our Founding Vision</h3>
            <p>At CineWise, our founding vision extends beyond mere convenience. We are driven by a deep-rooted belief that movies hold the power to inspire, educate, and unite people from all walks of life. Our founders, a diverse group of passionate movie enthusiasts, envisioned a platform where the rich tapestry of cinematic storytelling could be woven together. Our aim is to foster a global community that celebrates the diversity of film, transcending language, culture, and geography.

                We believe that every film, whether it's a timeless classic or a contemporary masterpiece, has the potential to touch the hearts and minds of viewers. Our commitment to this vision is reflected in our dedication to inclusivity. CineWise is not just a website; it's a digital home for cinephiles, a space where you can immerse yourself in the world of movies, connect with fellow enthusiasts, and explore the art of storytelling through film.</p> <br>

            <h3>The Ultimate Movie Information Hub</h3>
            <p>CineWise is more than just a search engine for movie details; it's the ultimate movie information hub where every movie-related query finds its answer. We're not content with being a passive repository of facts; we're your gateway to the cinematic universe. Whether you're looking for obscure trivia about a cult classic, in-depth analyses of film techniques, or simply seeking to indulge your curiosity about the latest releases, CineWise is your trusted companion on this journey.

                Our commitment to being the "ultimate" hub means that we strive for excellence in every aspect of our platform. We invest in cutting-edge technology to ensure lightning-fast searches and user-friendly navigation. Our dedication to accuracy is unwavering, as we cross-reference information from multiple sources to provide you with the most reliable data available. We're not satisfied until you're satisfied, and our team of movie experts works tirelessly to make CineWise the definitive resource for movie enthusiasts worldwide.</p> <br>

            <h3>Comprehensive Movie Details</h3>
            <p>At CineWise, we take pride in offering movie details that go beyond the surface. Our commitment to comprehensiveness means that we leave no stone unturned when it comes to providing you with a holistic understanding of each film. Beyond the basic details like title and genre, we strive to deliver a rich tapestry of information.
                Our commitment to comprehensive movie details is a reflection of our respect for filmmakers, actors, and the countless artists who pour their hearts and souls into bringing stories to life on the silver screen. We're here to honor their work by ensuring that you, the viewer, have access to the fullest, most enriching movie-watching experience possible.
            </p>
            </div>
            
        </section>


        <section id="ContactUs" class="section">
            <div class="container4">
                <h1>Contact Us!</h1>
                <nav>
                    <ul>
                        <li><a href="#homePage"><b>Home</b></a></li>
                        <li><a href="#AboutUs"><b>About Us</b></a></li>
                        <li><a href="http://localhost/cinewise2.0/signin.html" target="blank" id="signinButton"><b>Sign In</b></a></li>
                        <li><a href="./watch-later.html" class="watchLater"><b>Watch Later List</b></a></li>
                    </ul>
                </nav>
                <p>We value your feedback, questions, and suggestions at CineWise. Our commitment to enhancing your movie experience extends to providing you with excellent customer support and assistance whenever you need it. Feel free to reach out to us using the following contact methods:</p> <br>
                <p>-> Customer Support Email: <span class="email">support@cinewise.com</span><br>
                    If you encounter any issues while using CineWise, have questions about our services, or need assistance with any aspect of the website, please don't hesitate to email our dedicated customer support team. We strive to respond to your inquiries promptly and provide solutions to ensure your movie-searching journey is seamless.</p> <br>
                    <p>-> General Inquiries: <span>info@cinewise.com</span>  <br>
                        For general inquiries, partnership proposals, or business-related matters, you can reach out to our information desk. We're open to collaborations that can enrich the movie experience for our users and the broader community.</p> <br>
                        <p>-> Social Media [Facebook,Twitter,Instagram] <br>
                            Stay connected with us on our social media platforms, where we share the latest updates, movie news, and engage with our community of movie enthusiasts. You can find us on Facebook, Twitter, Instagram, and LinkedIn. Don't forget to follow, like, and share your thoughts with us.</p> <br>
                            <p>
                                -> Feedback and Suggestions: <span>feedback@cinewise.com</span> <br>
                            We highly value your input and suggestions to make CineWise even better. If you have ideas for new features, improvements, or any feedback to share, please use the email to share. Your insights are instrumental in shaping the future of our platform.
                            </p> <br> <br>
                            <p>Thank you for choosing CineWise as your trusted movie information source. We're here to serve your movie-related needs and ensure that your cinematic journey is as enjoyable as possible. Your feedback and communication are essential in helping us achieve this goal. <br>

                                We look forward to hearing from you and continuing to provide you with the best movie details and experiences.</p>
            </div>
        </section>


    </div>
    </body>
    </html>