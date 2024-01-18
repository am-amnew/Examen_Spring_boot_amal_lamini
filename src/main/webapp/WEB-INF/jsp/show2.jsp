    <link rel="stylesheet" type="text/css" href="show.css">
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Dog" %>
<%@ page import="com.example.demo.repository.AdoptionRepository" %>

<%
    // Retrieve the adoptionRepository from the request
    AdoptionRepository adoptionRepository = (AdoptionRepository) request.getAttribute("adoptionRepository");
%>

            <nav>
                <ul>
                    
                </ul>
        
                <ul>
                    <li>
                        <a href="/catlist2" class="link"> Cats</a>
                        
                    </li>
        
                    <li>
                        <a href="/doglist2" class="link"> Dogs </a>
                    </li>
        
                    <li>
                        <a href="/habbithamsterlist2" class="link"> Rabbits/Hamsters </a>
                    </li>
                    <li>
                        <a href="/birdlist2" class="link"> Birds</a>
                    </li>
                    <li>
                        <a href="/listall" class="link"> All animals </a>
                    </li>
        
                   
                    <li>       
            
               </nav>
   
<script>
    function myFunction() {
        var x = document.getElementById("myDIV");
        if (x.style.display == "block") { // `=` to `==` or `===`
          x.style.display = "none";
        } else {
          x.style.display = "block";
        }
      }


  </script>
  
  <script>
    function openPopup() {
      window.open("https://www.youtube.com/watch?v=VyHV0BRtdxo", "popup", "width=400,height=400");
    }
    function openPopup2() {
      window.open("https://www.youtube.com/watch?v=jBltxS8HfQ4", "popup", "width=400,height=400");
    }
    
    function openPopup3() {
      window.open("https://www.youtube.com/watch?v=1ZdlAg3j8nI", "popup", "width=400,height=400");
    }
    function openPopup4() {
      window.open("https://www.youtube.com/watch?v=3EGojp4Hh6I", "popup", "width=400,height=400");
    }
    function openPopup11() {
      window.open("https://www.amazon.com/Harry-Potter-Sorcerers-Stone-Rowling/dp/059035342X", "popup", "width=400,height=400");
    }
    function openPopup22() {
      window.open("https://www.amazon.co.uk/Harry-Potter-Chamber-Secrets/dp/1408855666", "popup", "width=400,height=400");
    }
    
    function openPopup33() {
      window.open("https://www.amazon.com/Harry-Potter-Prisoner-Azkaban-Rowling/dp/0439136350", "popup", "width=400,height=400");
    }
    function openPopup44() {
      window.open("https://www.amazon.com/Harry-Potter-Goblet-Fire-Rowling/dp/0439139600", "popup", "width=400,height=400");
    }


    function openPopupb1() {
      window.open("https://www.youtube.com/watch?v=SDnYMbYB-nU", "popup", "width=400,height=400");
    }
    function openPopupb2() {
      window.open("https://www.youtube.com/watch?v=fnaojlfdUbs", "popup", "width=400,height=400");
    }
    function openPopupb3() {
      window.open("https://www.youtube.com/watch?v=iVAgTiBrrDA", "popup", "width=400,height=400");
    }
    function openPopupb11() {
      window.open("https://www.amazon.com/Hobbit-Unexpected-Journey-Activity-Book/dp/0547898711", "popup", "width=400,height=400");
    }
    
    function openPopupb22() {
      window.open("https://www.amazon.com/Smaug-Unleashing-Dragon-Hobbit-Desolation/dp/0062326090", "popup", "width=400,height=400");
    }
    function openPopupb33() {
      window.open("https://www.amazon.in/HOBBIT-BATTLE-FIVE-ARMIES/dp/B07BZZD1YV", "popup", "width=400,height=400");
    }


    function openPopuph1() {
      window.open("https://www.youtube.com/watch?v=PbA63a7H0bo", "popup", "width=400,height=400");
    }
    function openPopuph2() {
      window.open("https://www.youtube.com/watch?v=EAzGXqJSDJ8", "popup", "width=400,height=400");
    }

    function openPopuphh1() {
      window.open("https://www.amazon.com/Hunger-Games-Book/dp/0439023483", "popup", "width=400,height=400");
    }
    function openPopuphh2() {
      window.open("https://www.amazon.com/Catching-Fire-Hunger-Games-2/dp/0545586178", "popup", "width=400,height=400");
    }

    function myFunction2() {
      var y = document.getElementById("myDIV2");
      if (y.style.display == "block") { 
            y.style.display = "none";


      } else {
        y.style.display = "block";

      }
    }
  </script>
<script>

  function myFunction3() {
    var z = document.getElementById("myDIV3");
    if (z.style.display == "block") { 
      z.style.display = "none";
    } else {
      z.style.display = "block";
    }
  }
  
    
    </script>
       
 
  
  
  
<style>

    .abs,
h2:after,
.cards .card figcaption,
.cards .card:after,
.news .card figcaption,
.news .card:after,
.news .article figcaption {
  position: absolute;
}
.rel,
h2,
h2 strong,
.cards .card,
.news .card,
.news .article {
  position: relative;
}
.fix {
  position: fixed;
}
.dfix {
  display: inline;
}
.dib {
  display: inline-block;
}
.db {
  display: block;
}
.dn {
  display: none;
}
.df,
.cards,
.news {
  display: flex;
}
.dif {
  display: inline-flex;
}
.dg {
  display: grid;
}
.dig {
  display: inline-grid;
}
.vm,
h2,
h2 strong,
h2 span {
  vertical-align: middle;
}

.wrapper {
  padding: 15px;
}
h2 {
  padding: 10px;
  padding-left: 25px;
  color: #ccc;
  margin: 0;
}
h2 strong {
  z-index: 2;
  background: #24282f;
  padding: 4px 8px;
}
h2 span {
  font-size: 0.7em;
  color: #aaa;
  margin-left: 10px;
}
h2:after {
  content: '';
  z-index: 1;
  bottom: 50%;
  margin-bottom: -2px;
  height: 2px;
  left: 0;
  right: 0;
  background: #373d47;
}
.cards,
.news {
  flex-flow: row wrap;
}
.cards .card,
.news .card {
    margin: 20px;
    width: 350px;
    height: 450px;
    overflow: hidden;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.8);
    transform-origin: center top;
    transform-style: preserve-3d;
    transform: translateZ(0);
    transition: 0.3s;
}
.cards .card img,
.news .card img {
  width: 100%;
  min-height: 100%;
}
.cards .card figcaption,
.news .card figcaption {
  bottom: 0;
  left: 0;
  right: 0;
  padding: 20px;
  padding-bottom: 10px;
  font-size: 20px;
  background: none;
  color: #fff;
  transform: translateY(100%);
  transition: 0.3s;
}
.cards .card:after,
.news .card:after {
  content: '';
  z-index: 10;
  width: 200%;
  height: 100%;
  top: -90%;
  left: -20px;
  opacity: 0.1;
  transform: rotate(45deg);
  background: linear-gradient(to top, transparent, #fff 15%, rgba(255,255,255,0.5));
  transition: 0.3s;
}
.cards .card:hover,
.news .card:hover,
.cards .card:focus,
.news .card:focus,
.cards .card:active,
.news .card:active {
  box-shadow: 0 8px 16px 3px rgba(0,0,0,0.6);
  transform: translateY(-3px) scale(1.05) rotateX(15deg);
}
.cards .card:hover figcaption,
.news .card:hover figcaption,
.cards .card:focus figcaption,
.news .card:focus figcaption,
.cards .card:active figcaption,
.news .card:active figcaption {
  transform: none;
}
.cards .card:hover:after,
.news .card:hover:after,
.cards .card:focus:after,
.news .card:focus:after,
.cards .card:active:after,
.news .card:active:after {
  transform: rotate(25deg);
  top: -40%;
  opacity: 0.15;
}
.news .article {
  overflow: hidden;
  width: 350px;
  height: 235px;
  margin: 20px;
}
.news .article img {
  width: 100%;
  min-height: 100%;
  transition: 0.2s;
}
.news .article figcaption {
  font-size: 14px;
  text-shadow: 0 1px 0 rgba(51,51,51,0.3);
  color: #fff;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  padding: 40px;
  box-shadow: 0 0 2px rgba(0,0,0,0.2);
  background: rgba(6,18,53,0.6);
  opacity: 0;
  transform: scale(1.15);
  transition: 0.2s;
}
.news .article figcaption h3 {
  color: #3792e3;
  font-size: 16px;
  margin-bottom: 0;
  font-weight: bold;
}
.news .article:hover img,
.news .article:focus img,
.news .article:active img {
  filter: blur(3px);
  transform: scale(0.97);
}
.news .article:hover figcaption,
.news .article:focus figcaption,
.news .article:active figcaption {
  opacity: 1;
  transform: none;
}
.aa{
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #03e9f4;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: .5s;
    margin-top: 40px;
    letter-spacing: 4px
}
#myDIV {
    display: none;
  }
   .logo-container {
            position: fixed;
            top: 10px; /* Adjust the top position as needed */
            left: 10px; /* Adjust the left position as needed */
            z-index: 1000; /* Ensure the logo appears above other content */
        }

        .logo {
            width: 100px; /* Adjust the width as needed */
            height: auto;
        }
 .text-small-uppercase.custom-button {
        display: block;
        width: 150px; /* Set the width according to your design */
        margin: 0 auto; /* Center the link horizontally */
                height: 50px; /* Set the width according to your design */
        
        text-align: center; /* Center the text within the link */
        padding: 10px; /* Add padding for better aesthetics */
        text-decoration: none;
        background-color: #4CAF50; /* Add your desired background color */
        color: white; /* Set text color */
        border-radius: 5px; /* Add rounded corners if desired */
    }
</style>
<div class="logo-container">
    <img src="log.png" alt="Logo" class="logo">
</div>
<div class="wrapper" style="margin:60px">

	<h2><strong>All Dogs <span>( waiting for adoption )</span> (-_-)</strong></h2>

	<div class="cards">
	  <% List<Dog> dogList = (List<Dog>)request.getAttribute("dogList");
                for (int c=0; c<dogList.size(); c++){ %>
		<figure class="card" >

			<img src="<%= dogList.get(c).getImages() %>" />

			<figcaption>Nom: <%= dogList.get(c).getName() %>
			
			 <br>
			 Age: <%= dogList.get(c).getAge() %>
			 
			 <br>
       			 Gender: <%= dogList.get(c).getGender() %>
       			 
			
       			 
			 <br>
       			 Description: <%= dogList.get(c).getDescription() %>
       			 
			 <br>
<% if (adoptionRepository.findFirstByDogId(dogList.get(c).getId()).isPresent()) { %>
                <span style="color: red; font-weight: bold;">Adopted</span>
            <% } else { %>
			
			 <form  action="${pageContext.request.contextPath}/adoptions/adoptForm/<%=dogList.get(c).getId()%>" method="get">
    <button class="text-small-uppercase custom-button"type="submit">Adopt</button>
</form>
<% } %>
			 
         
       </figcaption>
       
          
		</figure>

		  <% } %>



	</div>
    <ul>
        <li>
         <a href="/dog" class="link" style="color: #e7d911; display: flex; justify-content: right;"<button type="button">search and contact us</button></a>

          </li>   
	</div>
</div>
  
        </li>
      </ul>
  



-

