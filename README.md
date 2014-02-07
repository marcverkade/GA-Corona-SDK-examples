GA-Corona-SDK-examples
======================

Sample code for GameAnalytics plugin for Corona SDK.

Use Corona build 1202 or above.

---------------------------------------------------------------------------------

Version history:

v.0.2.3
+ Optional use of "iosIdentifierForVendor" instead of "iosAdvertisingIdentifier"

IMPORTANT: If you are building for iOS and your app doesn't have ads in it, then you should 
set the GameAnalytics.iosIdentifierForVendor property to true - or Apple might reject the app!

v.0.2.2
+ Composer support.

v.0.2.1
+ Batch requests.
+ Built in reporting of average fps.
+ Built in reporting of critical fps.
+ Built in reporting of runtime errors and stack traces.
+ Built in reporting of memorywarnings ( iOS only)
+ Storyboard integration: Built in reporting of storyboard scene changes.
+ Optimizations and more.
