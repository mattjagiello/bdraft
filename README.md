# BeerDraft :beer:

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
- Beer information page with aggregated reviews from multiple users as well as ability to add 'likes' to a beer.
![Beer information page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_Beer_reviews.png)
- CRUD functionality to add/remove/edit beer reviews from the SQLite3 database.
![Individual review page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_User_review.png)
- View list of beers that are associated with a brewery.
- View top 10 beers rated from user reviews.
![Top ten beers list](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_all_beers_top_ten.png)
- Analytics page offering numerous queries on the database data.
![Analytics page](https://github.com/mattjagiello/bdraft/blob/master/app/assets/images/Bdraft_analytics.png)

## Interesting Notes

In adding styling to the app via CSS files, we encountered a major crash that broke the Rails server from displaying any page correctly. We attempted to fix this issue via searching for common issues that others have had as well as reviewing the Rails development log, we were left without an answer of how to fix this issue. We ended up creating a new Github repo and copying over the application files and seemingly the project ended up working normally again. It is still a mystery as to what caused this major crash, but managing to recover from it was definitely a proud and relieving moment.

### What We Learned

1. This project taught us how to best implement associations between models in the MVC structure, setup routes associated with the controllers, and also the basics of using CSS to style our application. All of this combined experience have been instrumental in bulding a functional webapp.

2. Learning how to navigate Github and commit/update to different branches has been somewhat of a challenge. We have learned  a lot about the functionality of branches and individual commits, including how to revert commits, but there is still a need for more clarity in understanding the powerful version control functionality of Git.

3. We also learned about debugging and pushing through difficulties with broken code or major errors in using rails and Github. Several times we encountered major roadblocks or errors that caused us to refactor code or rollback changes that we made in the application. Even something as 'simple' as adding CSS styling pages to the application caused unfixable crashes in the Rails server. Knowing the stress of these debugging challenges and how to push past these challenges will undoubtedly be useful in our programming careers.

### What We Would Change

We have accomplished the major goals of the project including creating appropriate models, methods, and analytics for the app. It has a good visual design with the CSS styling that we were able to add. For strech goals we would like to include the ability to add images of individual beers, search for breweries by city and zip code, and provide additional insights such as top ranked breweries which would provide an improved user experience.

### Code Highlight
```
#The following code creates and authenticates users based on their individual logins and encrypted password.
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else  
      redirect_to login_path
    end
  end
```
