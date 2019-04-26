# Bookmark Manager

User stories:
--------
```
As the user,
I need a list of bookmarks,
So that I can view the list of bookmarks.
```
![Bookmark model](https://raw.githubusercontent.com/tsankhalpara/bookmark_manager/master/bookmark_list_model.jpg)
* When the user clicks on /bookmarks it creates a gets request to the controller.
* The controller calls the .list method from bookmark.rb model.
* The model sends back the bookmark array.
* The controller sends the array to bookmarks.erb.
* The view sends back HTML to the controller.
* The controller then sends the HTML response back to the user.

```
As the user,
I need an entry section,
So that I can add new bookmarks to the list.
```
* The user visits the bookmarks page.
* The user clicks button 'new'
* The controller calls the .add method from bookmark.rb model.
* The user is redirected to a form.
* The user completes the form.
* The information from the form is added to the bookmarks array.
* The user is redirected back to /bookmarks and can see the updated list.

Instructions:
--------
* How to create test database
* How to run psql commands
