Mongrations
===========

Mongrations aims to be similar to ActiveRecord's data migrations, except
instead of worrying about schema changes, offering a way to change data when
necessary. 

Example: You decide after a few weeks of running an application that you want
to add timestamps, and want to display the created_at time for an application.

You could put a default timestamp into the model (and in this case that might
be appropriate), but you might also just want to say, "everything needs to get
a new timestamp that doesn't already have one, let's say when the US beat
Canada in hockey in the Olympics."


Example
=======

To generate a mongration, just do:

`script/generate mongration whatever_you_want_your_mongration_to_be`

To run it, do

`rake db:mongrate`

Other rake tasks added have been `db:mongrate:redo`, `db:mongrate:up`, `db:mongrate:down`, `db:mongrate:rollback`.


Dependencies
============

You need Mongo and MongoMapper for this to be of any use.

Also, this has only been tested on Rails 2.3.5. 

Disclaimer
==========

*This is not ready for production*

I just adapted this, at 10:30PM, half watching the Olympics. I'm not responsible 
for any damage to your data, your mongodb, your bongos, your cat, your wife, or 
your kids as a result of installing this plugin.

Give it a few days. Please report bugs. 

Credit
======
Original code is from Rails 2.3.5 and ActiveRecord 2.3.5, now adapted to work
with MongoMapper.

License
=======
Released under the MIT license
