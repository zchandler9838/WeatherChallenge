# MCSWeatherApp

When I first started building this application. I started the UI first, I wanted it to be quick and simple with a Collection View to display the future forecast. I was having a lot of fun making the project but realized I was taking to much time and tied up some loose ends to make it functional.

My original idea was if you tapped on a CollectionViewCell, it would transition the sun from left to right, and display the future weather forecast. I used Hero as my animations to give the UX a better feel of transition, even though I didn’t want to use multiple pages. Each cell is composed of a day. I wanted a CITY to have DAYs and days to have WEATHER. I wanted my Data Singleton to parse information and have different cities available to pass to my view controller. I wanted Cities to have current weather, because that api response is more specific. 

I was originally also going to implement a search feature to parse through the list of city ids supplied by Open Weather API. I integrated GooglePlaces because I noticed the Open Weather Map API can search weather by coordinates. I was hoping to utilize the search functionality of GooglePlaces to send names of cities and if the user got even more specific about a location I could send the longitude and latitude. I didn’t have time to fully integrate this although I did build some functionality. I didn’t have time to process errors from responses to determine if I needed to send the longitude and latitude from the users search results ora simple implement current location weather. 

I wanted to implement a caching system for the icons. It useless time consumption to fetch that data every time, when they’re consistently the same icons. Also I originally was going to cache the json into CoreData so I could load previous weather without using a network request. For time, I just saved the name and fetch the info on launch. 

I planned on implementing a converter tool for the user to switch from Celsius to Fahrenheit, but decided I was already converting to from Kelvin, so maybe if I had more time. 

I ended up hacking out most of the parsing of json. I would of taken a modular approach, and fully transitioned into a MVVM architecture. I wanted to utilize class design to only use the View Controller as a View and the DataSingleton and ViewModel. By doing this I could of furthered the abstraction of my ViewController Class and created a list of controllers and had the user pick which city they wanted to view, similar to the default weather application. Due to time I did not get to fully abstract my implementation. Ideally I would of passes a City to the View and thats all. 

I enjoyed the project and wish I had more time, I would love to dive down the rabbit hole and implement all of my ideas. 
