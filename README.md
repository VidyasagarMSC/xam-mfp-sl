# xam-mfp-sl
Hands-On Lab #5042A for InterConnect 2016 - Give Your C# Mobile App Super Powers with IBM MobileFirst Platform and Strongloop

This project contains files for all the components of the hands-on lab.

files - miscellaneous files including images, zips to install, db creation scripts
mfp - contains two subfolders, plenty and plentytest
  plenty - contains MFP project containing security config, two adapters (one for push notification, one for feed adapter which is used for testing that security config works)
  plenty-test - contains Cordova MFP project to test whether security is working both for the feed adapter and the SL API.  Launch with mfp cordova preview, once in browser login with any UID/PWD and then test the adapter button and then the protected API button.  Adapter will show message of feed items returned, API button will show data returned in log (turn on dev tools)
sl - contains plenty-api folder which contains the Strongloop/Loopback project that exposes API on mySQL database
xamarin - contains Xamarin app project which will access Strongloop API via MFP
