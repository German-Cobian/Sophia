![](https://img.shields.io/badge/Microverse-blueviolet)

# Sophia

 A Ruby on Rails blog app where the user can create and share articles relating to the pre-defined topics in Philosophy (Metaphysics, Gnoseology, Logic and Ethics being the initial ones seeded into the app). Interact with other Philosophy content creators, and create events for Philosophy enthusiasts.

![Homepage](app/assets/images/Sophia.jpg?raw=true "Homepage")

* Homepage:
  - Links in the Navigation bar allow the user to sign up, sign in (by typing his/her username, e-mail, and password), or sign out, according to his session status,
  - A featured article with image and title is displayed at the top. This is the article with the biggest number of votes.
  - A list of all Philosophy categories available to browse or to contribute articles to is displayed at the bottom. Each category is displayed as a square with its name on the top and its most recent article's title in the bottom. The background image is that of the most recent article in this category.

* Philosophy Topics page:
  - Navigate to a Philosophy category either by selecting it from the Navigate Sophia menu or by clicking on its link in the Homepage.
  - When the user selects a category, they can see all articles in that category, sorted by most recent.

* Article page
  Each article displays:
  - An image, title, text and author's basic info.
  - A button to "like" the article of his choice (each user allotted one "like" per article). The user can also choose to "un-like" an article previously "liked".
  - A form to input a comment on the article or to comment other user's comments on the article. The user can edit or delete his/her comments.
  - A link to view the article creator's profile.
  - When the user clicks Create Article in the Navigation bar, a form with all necessary fields is provided.

* Profile page:
  - The User can create a Profile for him/herself, including his/her date of birth, location, date of joining the site, number of followers and followings, and a biography. The Profile page will list all articles created by the user. A link in the profile page allows the user to edit his/her profile.
  - When a user visits an article creator's page, he/her can choose to "follow" the creator. The user can see a listing of all users he/her is following by clicking on the "following" link in his/her own profile. This listing will include a link to that followed user's profile.

* Search page:
  - From the Navigation Sophia menu, the user can navigate to the Search page.
  The Search page will initially display a listing of all the articles published on the site, and the user can choose to browse them ordered by Title, Article Content, Creator (in alphabetical or revers alphabetical order) or Date Created at (by most recent or most.)
  - Two search bars are provided, for the user to search for a specific article, either by a keyword in the title or in the article's content. The Search results will be displayed at the bottom of the page.

* Events page:
  - From the Navigate Sophia menu, the user can navigate to Events.
  - The Events page displays all events published, Upcoming and Past in two separate columns. Each event listed shows an image, title, event creator, date, location and a (truncated) description, plus a link to see more. This page, as well as all other Events related pages, includes a Navigate Events menu in the top right corner.
  - When the user clicks the link to see more, he/she will be taken to that specific event's page, where all the previously detailed info is displayed plus the full description of the event as well as a
  - From the Navigate Events menu, the User can navigate to "My Hosted Events." There, the events hosted by the current user are listed at the top of the page. At the bottom of the page, in three separate columns, will appear a listing of all the user's invited to each event, a listing of those that have committed to attend and a listing of those that have declined to attend.
  - Again, from the Navigate Events menu, the User can navigate to "My Events Participation." There, the events that the current user has been invited to attend will be listed at the top of the page. At the bottom of the page, in three separate columns, will appear a listing of all the events that the user has not yet decided whether to attend or not, those that the user is enrolled to attend, and those that the user has previously attended.
  - When the user clicks Create Event in the Navigate Sophia menu, a form with all necessary fields is provided.

* Admin Privileges:
  - Besides the app's standard features, Admins can also create additional Philosophy Topics, or edit or destroy existing one's. They also have the privilege of being able to edit and destroy any other user's data.


## Video Demo

https://www.loom.com/share/ad353ec1b6f343e0a9fae6ca5444512f?sid=b3ddb066-9c9b-401e-9fa1-c952156d4bd3


## Getting Started

To get a local copy up and running follow these simple steps:


### Prerequisites

* Ruby 3.1.1
* Rails 7.0.6
* Postgres
* Node.js
* Yarn


### Setup and Install

* Open your terminal - Windows: `Win + R`, then type `cmd` | Mac: `Command + space`, then type `Terminal`
* Navigate to a directory of your choosing using the `cd` command
* Run this command in your OS terminal: `git clone git@github.com:German-Cobian/Sophia.git` to get a copy of the project
* Navigate to the project's directory using the `cd` command
* Install dependencies by running `bundle install`
* Run `rails yarn  install` to configure yarn for your environment
* Create the database in your environment by running `rails db:create`
* Migrate the database to your environment by running `rails db:migrate`
* Seed the app with data that is pre-packaged for its pages to display by running`rails db:seed`
* Execute `bin/dev` to fire up the server
* Visit `http://localhost:3000/` in your browser to get into the app
* If you obtain the error `ArgumentError in Categories#index` it means that the app did not get successfully seeded. Run `rails db:reset` to get it seeded
* Interact with the app using the links in the nav bar or included inside the pages.
* To close the server, enter `Ctrl + C` in your terminal


## Author

👤 **German Cobian**

* GitHub: [@German-Cobian](https://github.com/German-Cobian)
* Twitter: [@GermanCobian2](https://twitter.com/GermanCobian2)
* LinkedIn: [@german-cobian](https://www.linkedin.com/in/german-cobian/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/German-Cobian/Sophia/issues)


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

Guidelines for this project supplied by []Microverse](https://github.com/microverseinc/curriculum-rails).


## 📝 License

This project is [MIT](https://github.com/German-Cobian/Sophia/blob/main/LICENSE) licensed.
