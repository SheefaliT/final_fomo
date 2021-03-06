final_fomo
==========

Team members: Chris Gray, Priya Sudendra, Sheefali Tewari

Description: Our project is a basic web application similar to Facebook. A user will be able to create an account, and login after their account is created. There will be multiple pages that the user can click on, including their profile page, news feed, interests, preferences, etc.

Models:
- Users: We will have a model of all users and their accounts.
- Interests: Interests that a user can add to their profiles will be another model.

Views:
 - Main Page: The main page will have the title of the website as well as the option to log in or create an account.
 - Logging in: This page will have a log in form. After signing in, the user will be taken to the newsfeed.
 - Creating an account: The user can create an account and then log in.
 - Newsfeed: All posts from a user and their friends will be listed.
 - Profile page: This page will have all information about the user, a wall where the user or friends can post information, and a list of the user's friends. It will only be viewable by the user and their friends.
 - Searching/Adding Friends: This will let users find others using the application and will let users send friend requests.
 - Profile Preferences: This page will let users add and change information that is listed on their profile page. It will also show a list of friends and the option to defriend them. This is only available to the user.

Controllers:
 - Users: User posts, activities
 - Home: Homepage controller which allows user to sign in. Once signed in, home controller controls newsfeed
 - Posts: Allows user to create post, add pictures, etc. to their profile
 - Comments: Allows user to comment on posts by other users
 - Application: Current user session
