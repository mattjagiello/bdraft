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

1. While working on this project, we have learned how to best implement associations, set up models and routes, and had a brief encounter with CSS styling. All of this combined experience have been instrumental in bulding a functional website.

2. Learning how to navigate Github and commit/update is has been somewhat of a challenge. We have also learned how to revert commits, but still there's a need for more clarity dealing with keeping track with different versions. 



### What We Would Change

We have acomplished to set up a basic functionallity that works well with the intended purpose. It has also a good visual design with the CSS styling we were able to add. For strech goals, having ability to add beer images, and as well additional insights such as top ten for other categories would improve the user experience.

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
