# Life Is Expensive

## a Budgeting tool and expense tracker

Enter in expenses you expect to have, and see how much you have left over, then add items you would like to buy in the future to see if you will have enough to do so, and how much money you will have left over.

### Technology Used

HMTL, CSS, Ruby, Rails

The application's layout was created with HTML within ruby files, was styled with css, and the logic and navigation was build with rails.

###User Stories
As a user, I can Create an account

As a user, I can log in and update my account, or delete it if necessary, and set my budget

As a user, I can add new expenses, and see immediately how much of my budget remains

As a user, I can edit, add, and delete expenses as I see necessary.

As a user, I can see all of my expenses, but my expenses aren't accessible by anyone else

###Approach
I started out planning out my models and controllers in trello, then generated the models, controllers, and updated the router.

I made sure each of my models had full CRUD functioning step by step with basic static data, and tested out if anything had broken in the process.

Then I made my data dynamic, and made it so that all variables could access specific table values, and made sure all the shown values on the page were the correct type, such as currency, or names of categories, etc.

Then I moved everything around until everything was in about the spot that I wanted it to be in, and tested to make sure the functions were working properly

Finally I changed text colors, and added background boxes for divs, and a background gradient for the whole page

### Outstanding Challenges and Future Work

It was difficult creating dynamic variables with which my chart could access the amounts from.

Some of the elements on the page are taking up space that shift other elements down, and I would like to try to remove the empty space

I would like to make it so after signing up, that the user is automatically logged in

I would like to have a grid system implemented so that organization is cleaner and aligned

I would like to be able to add a profile image, and add a new list of items to save up for, along with a progress bar for saving enough to buy it, and expected time until having the funds to purchase.

I would like to be able to add expected income, and have expenses repeat, and have a calendar with when payments are due

I would like to give the user the ability to add links to pages where payments can be made, such as an amazon page for an item they want to save for, or a car insurance website url for insurance payments etc.

I would like to add an optional expenses table where if the funds are available, the first item is added to the corresponding category it belongs in