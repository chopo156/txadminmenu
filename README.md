# txAdmin Menu!
This FiveM script doesnt use a framework, and it implements the txAdmin panel in game with the command /admin

# To give a player the hability of opening the menu insert the following line in your server.cfg
add_ace identifier.steam:steamidhere "txadmin.menu.perm" allow
# or
add_ace identifier.rockstar:licensehere "txadmin.menu.perm" allow

# Remember to change the config.lua, add your txAdmin link! (No it cant be localhost)

Also have in mind you cant use the FiveM login as they reject the iframe request.

To have the latest features always make sure you are using the LATEST (not latest recommended nor optional) version of FXServer artifacts.

No, i did not make txAdmin
# txAdmin is mantained and created by Tabarra, big props to you buddy https://github.com/tabarra/txAdmin

# When using some features that require inputs, u need to alt tab sometimes because the txAdmin popups are made in JS, so it creates an external window.
