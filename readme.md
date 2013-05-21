Jon Morehouse Twitter Clone App
=

Overview
-

This is a quick code test that I began completing for StackSocial. I decided to go above and beyond. This is a ten hour project, where I wanted to get as much written out with the latest / greatest stuff I'm working on as possible. This is a work in progress so some controllers are not hammered out.

Features
-

-	Twitter Login
-	View other's profile
-	Tweet / Message people
-	Robust Tweet Search / People search

Technology Stack
-

-	Rails 3.2.13
-	MongoDB
-	Omniauth
-	Rspec Testing
-	Guard / Yeoman 
-	Angular.js / Require.js
-	Compass / Sass

Project Approach
-

Since alot of my time is spent hacking on Flashquest where our Rails API is proprietary, I decided to take a few hours here and there to hack this up. My approach when building a small one off solution like this is to get a basic app (front-end wise) running before tackling my backend. 

In terms of backend development, I start with my models and try to keep as much app logic in my models. I build my models outside in, based upon app logic that's needed and basic requirements. I prefer rspec model testing, cucumber end-to-end api testing (with rspec steps). I use concerns wherever possible to DRY up models as I go.







