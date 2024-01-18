  
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Login - CodeJava</title>
    
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/cat.css">
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
                height: 30px; /* Set the width according to your design */
        
        text-align: center; /* Center the text within the link */
        padding: 10px; /* Add padding for better aesthetics */
        text-decoration: none;
        background-color: #4CAF50; /* Add your desired background color */
        border-radius: 5px; /* Add rounded corners if desired */
            position: absolute;
            bottom: 100px;
            left: 50%;
            transform: translateX(-50%);
            margin-top: 40px; /* Adjust the margin-top as needed */
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
<div class="box">
  <div class="activator white"></div>
  <div class="activator black"></div>
  <div class="drop"></div>
  <svg class="cats" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300" height="300" width="300">
    <path d="M198.63 43.54c-8.535-4.018 3.727 22.035-12.55 45.9-20.702 30.36-48.977 21.085-41.787 33.538 6.11 10.582 14.963 5.18 22.04 1.094 14.174-8.184 27.137-10.15 28.113 3.987 1.042 15.096-20.733 19.503-38.7 21.456-14.98 1.746-26.072.598-39.257 7.506-7.503 3.93-12.945 8.577-11.272 16.88 1.543 7.663 6.38 9.685 14.245 8.033 14.377-3.02 29.986-17.01 35.77-5.653 5.19 10.192-17.612 11.026-28.038 18.733-13.19 9.75-18.697 22.952-23.197 36.583-1.806 5.473-6.094 20.647-2.37 25.047 11.313 2.326 21.947-8.24 31.515-4.824 9.426 3.366 18.753 8.822 24.982 16.656 6.99 8.79.88 29.34 11.896 31.524 91.172-57.992 104.09-103.495 104.09-139.778 0-46.43-24.75-92.793-75.48-116.68z" fill="#f2f2f2" />
    <path d="M101.38 256.46c8.535 4.018-3.726-22.035 12.55-45.9 20.703-30.36 48.978-21.085 41.788-33.538-6.11-10.582-14.963-5.18-22.04-1.094-14.174 8.184-27.138 10.148-28.113-3.987-1.042-15.096 20.732-19.503 38.7-21.456 14.978-1.746 26.072-.598 39.257-7.506 7.502-3.93 12.943-8.578 11.27-16.88-1.543-7.663-6.38-9.685-14.244-8.033-14.378 3.02-29.987 17.01-35.77 5.653-5.19-10.192 17.612-11.026 28.037-18.733 13.19-9.75 18.697-22.952 23.197-36.583 1.807-5.473 6.094-20.647 2.372-25.047-11.314-2.326-21.948 8.24-31.517 4.824-9.425-3.366-18.752-8.822-24.98-16.656-6.992-8.79-.88-29.34-11.897-31.524C38.82 57.99 25.9 103.495 25.9 139.778c0 46.43 24.75 92.793 75.48 116.68z" fill="#1a1a1a" />
    <path d="M110.677 57.635s-1.826 3.912 2.206 7.82c4.032 3.91 7.86.79 7.86.79M143.635 85.076s-1.826 3.912 2.206 7.82c4.032 3.91 7.86.79 7.86.79" fill="none" stroke="#ececec" stroke-width="6.774" stroke-linecap="round" />
    <path d="M104.733 80.926s3.077 8.615 6.49 10.237c3.416 1.623 10.488-1.248 10.488-1.248l3.996-4.744 5.243-.25-6.742-3.494 1.498 3.745-4.245 5.494s.47 8.58 2.997 10.736c2.53 2.157 8.74 1 8.74 1" fill="none" stroke="#ececec" stroke-width="6.774" stroke-linecap="round" stroke-linejoin="round" />
    <g stroke="#1a1a1a" fill="none" stroke-width="6" stroke-linecap="round">
      <path d="M189.063 252.215s1.826-3.912-2.206-7.82c-4.032-3.91-7.86-.79-7.86-.79M156.105 224.773s1.826-3.91-2.206-7.82c-4.033-3.91-7.862-.79-7.862-.79" stroke-width="6.77406" />
      <path d="M195.007 228.923s-3.077-8.614-6.492-10.236c-3.414-1.623-10.486 1.248-10.486 1.248l-3.996 4.744-5.243.25 6.742 3.494-1.498-3.745 4.245-5.494s-.47-8.58-2.997-10.736c-2.53-2.157-8.74-1-8.74-1" stroke-linejoin="round" stroke-width="6.77406" />
    </g>
  </svg>
</div>
<p style="color:white;">Adopted succesfully</p>
<a class="text-small-uppercase custom-button" style="color:yellow;"href="/listall" role="button">More Animals </a>
