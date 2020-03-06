# BeerDraft :beer:
Beer tracking Rails application

A Rails based app allowing users to add beers, add breweries, and rate/review beers to add to their personal collection. By [Jelena Stjepanovic](https://github.com/jelenastj) and [Matt Jagiello](https://github.com/mattjagiello)

![BeerDraft splash page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_User_page.png)

## Technologies
[Ruby](https://www.ruby-lang.org/en/)

[Rails](https://rubyonrails.org/)

[SQLite3](https://www.sqlite.org/version3.html)

## Getting Started
1. Be sure you have downloaded and [installed Ruby](https://www.ruby-lang.org/en/documentation/installation/) on your computer in order to run Ruby files.
2. Additionally you will want to [install Rails](http://installrails.com/) using the linked guides or another method of your choosing.
3. Clone this project repo down to your local computer.
4. Navigate to the folder where you downloaded the repo and run `bundle install` in your terminal to install the required gems and components for the app.
5. Run the command `rake db:migrate` in your terminal to create the local SQLite3 database.
6. Start the Rails server via CLI by running `rails s`.
7. Navigate to the application in your browser by going to: `http://127.0.0.1:3000`.

## Features
- Password-protected user accounts saved to the local SQLite3 database via Active Record.
- Beer information page with aggregated reviews from multiple users as well as ability to add 'likes' to beer.
![Beer information page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_Beer_reviews.png)
- CRUD functionality to add/remove/edit beer reviews from the SQLite3 database.
![Individual review page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_User_review.png)
- View list of beers that are associated with a brewery.
- View top 10 beers rated from user reviews.
![Top ten beers list](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_all_beers_top_ten.png)
- Analytics page offering numerous queries on the database data.
![Analytics page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_analytics.png)

## Interesting Notes

The play_song method was difficult to wrap our heads around. Would we be able to play music back in the CLI? Did we have to open up a browser with the song URI? After some initial research, we were able to find a [homebrew](https://brew.sh/) package called [‘shpotify’](https://github.com/hnarayanan/shpotify) that was designed specifically for Spotify interaction. Once we downloaded and set it up, all we had to do was add `window(command)` in our Ruby code and we achieved playback in the Spotify desktop app! :metal:

### What We Learned

1. While working on this project we found a plethora of [Ruby gems](https://rubygems.org/) on the web. Several times when attempting to install or configure a gem in the code, it ended up crashing the entire program execution. Our knowledge of working with these gems feels much more solid after this experience.

2. Github has been a looming shadow of hesitance lingering in the back of our collective consciousness since day one. The advantage of working with a partner was learning how to navigate Github and commit/update to the project without overwriting our repo with broken code. Our understanding of Github is still somewhat cloudy but thanks to this project it is starting to clear up.

3. Project planning was the most important factor in this project. Together we learned how to set up complex class and object associations correctly through ActiveRecord. Prioritizing and delegating our development tasks was also a valuable aspect of our process which we did well. We were able to set and complete stretch goals that we vowed not to start until our program was running as a minimum viable product.

### What We Would Change

The most glaring change we would make would be modifying the menu navigation in our program. When planning the project, we didn't fully take into account the user experience when clicking through the program. Additionally, we divided the work of building the methods and class functionality without setting a standard for how user navigation would work. The result of these decisions was a somewhat confusing experience using menu options such as going back to previous menus or stopping the execution of certain methods. Ultimately the program seems to be mostly intuitive as our beta testers and colleagues were able to use the app without great difficulty or assistance.

### Code Highlight
```
#The following code plays a song in spotify through a cli command and stores that song as current song.
    if artist == nil || song == nil
        return "Song is not in #{self.name} playlist"
    else
        system("spotify play #{song} #{artist}")
    end
    #can also accomplish by array index no.-1
    Song.current=(song)
    self.display_playlist_as_table
```
