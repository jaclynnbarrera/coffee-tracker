# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database: successfully created an active record DB and created multiple migrations
- [x] Include more than one model class (e.g. User, Post, Category): App has User and Review models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts): User has_many Reviews
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User): Review belongs_to User
- [x] Include user accounts with unique login attribute (username or email): yes homepage prompts user for login or sign up with username and password
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying: Reviews controller has all CRUD operations
- [x] Ensure that users can't modify content created by other users: Multiple checks throughout controller for matching session id to user id and if logged in
- [x] Include user input validations: POST forms check for empty values and redirects if found
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new): will add this after submitting if i can get to it! 
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
