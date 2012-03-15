SpreeNews
=========

This is an extension for Spree 1.0 that allows an Admin to create and manage posts in the admin panel. Posts that are marked as published will show up on the home page in a news ticker window that uses jquery to slide between posts. If there are no published posts, the news ticker window will not show up on the home page.


Installation
=======

$ rails new mystore
$ cd mystore
$ spree install (might require running 'gem install spree' first)

Then add the following to your Gemfile:
$ gem 'spree_news'
$ gem 'haml'

$ bundle install
$ rails g spree_news:install (select 'yes' to run migrations)
$ rails s


Installation
=======

To use, go to /admin and select the 'posts' tab. Create a new post with a title and description and select the 'published' check box to make it appear on the home page.

Once created, navigate to '/' to see the news ticker show up below the products.
