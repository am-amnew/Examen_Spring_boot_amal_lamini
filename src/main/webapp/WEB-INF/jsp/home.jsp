
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Login - CodeJava</title>
    
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/c.css" />

    <title>Your Web Page</title>
    <!-- Linking to the CSS file -->
        <style>
        
         
        h1 {
            /* ... (your existing styles) ... */
            position: relative;
            margin-bottom: 60px; /* Add margin to create space for the button */
        }

      

        article {
            /* Add some margin to the top of the article to create space */
            margin-top: 40px; /* Adjust the margin-top as needed */
        }

        .panel img {
            /* Adjust the margin-top to move the image and title up */
            margin-top: -20px; /* Adjust the margin-top as needed */
        }
       
    .logo-container {
    position: fixed;
    top: 10px; /* Adjust the top position as needed */
    left: 10px; /* Adjust the left position as needed */
    z-index: 1000; /* Ensure the logo appears above other content */
}

   .text-small-uppercase.custom-button {
        display: block;
        width: 200px; /* Set the width according to your design */
        margin: 0 auto; /* Center the link horizontally */
                height: 60px; /* Set the width according to your design */
        
        text-align: center; /* Center the text within the link */
        padding: 10px; /* Add padding for better aesthetics */
        text-decoration: none;
        background-color: #4CAF50; /* Add your desired background color */
        
        border-radius: 5px; /* Add rounded corners if desired */
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            margin-top: 20px; /* Adjust the margin-top as needed */
    }
.logo {
    width: 100px; /* Adjust the width as needed */
    height: auto;
}

.logo-text {
          position: absolute;
            /* Adjust the top and left values as needed */
            top: 50%;
            left: 120px;
            transform: translateY(-60%);
            font-size: 16px;
            color: yellow;
        }
        
        
    </style>
</head>
<div class="logo-container">
    <img src="log.png" alt="Logo" class="logo">
        <span class="logo-text">Where Pets Party and Humans Find Companionship</span>
    
</div>

<section>
    <article>
        <ul class="panels">
         <li class="panel">
                <a href="about.jsp">
                    <span>
                        Dogs
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 510 513">
                <g fill="none" fill-rule="evenodd">
                 
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/24/fc/9f/24fc9ff8cafdc4d5ba4504453f81bde8.jpg" alt="image of hot air balloons" />
            </li>
            <li class="panel">
                <a href="register.jsp">
                    <span>
                        cats 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 442">
                <g fill="none" fill-rule="evenodd">
                 
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/81/ba/21/81ba219690805f2319ab3995edc0d029.jpg" alt="image of lions" />
            </li>
            <li class="panel">
                <a href="addModule.jsp">
                    <span>
                        Rabbits/Hamsters 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 452">
                <g fill="none" fill-rule="evenodd">
                  <g fill-rule="nonzero" class="fill">
                    
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/fd/7e/91/fd7e91875aae15d485fcd9d69ed07669.jpg" alt="Marthin Luther King" />
            </li>
            <li class="panel">
                <a href="addNote.jsp">
                    <span>
                        Birds 
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 449 480">
                <g fill="none" fill-rule="evenodd">
                  
                </g>
              </svg>
            </span>
                </a>
                <img src="https://i.pinimg.com/564x/87/de/1b/87de1ba7c48e5776931b19ca7cfe6017.jpg" alt="image of spaceship" />
            </li>
           
        </ul>
        <h1>
     
            <span class="gradient-text letter">F</span>
            <span class="gradient-text letter">u</span>
            <span class="gradient-text letter">r</span>
                        <span class="gradient-text letter">-</span>
            
            <span class="gradient-text letter">j</span>
            <span class="gradient-text letter">o</span>
                        <span class="gradient-text letter">y</span>
            
            <span class="gradient-text letter">-</span>
            <span class="gradient-text letter">h</span>
            <span class="gradient-text letter">u</span>
            <span class="gradient-text letter">b</span>
           
            <br>


<a class="text-small-uppercase custom-button" style="color:yellow;"href="/register" role="button">Register</a>

        </h1>

        <span style="margin-bottom: 80px"class="geo-square">
        <img src="log.png"  alt="image of butterfly, graphic purpose only" />
        </span>
        
        
    </article>
    
</section>
</html>
