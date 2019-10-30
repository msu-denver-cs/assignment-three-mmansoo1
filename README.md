# README

For this assignment, the biggest thing I learned was adding user login/verification. Luckily, it was mainly handled by the devise gem. Installing it was pretty standard, and it fit in perfectly with my application. The biggest problem I ran into was the unit testing. When I ran my tests, they would fail since every time a car was attempted to be destroyed/created the error message would state that it was redirected to the login page. What ended up fixing it was including Devise's test integrations into the controllers and system test files. 

Navigational links were also luckily easy to use. I ended up implementing simple-navigation. The documentation was helpful, and I was able to set up the links in my home pages. 
