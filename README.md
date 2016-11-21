# SMSLocalization: 

Note: This is just a helper class that lets you integrate multi language support in your app withing few minutes.

*This is Not a library.* 
 
**How to use**

1.Drag LanguageManager file to your project.

2.Create a new file of type string from File -> New -> Resources -> Strings file (name it exactly **Localizable.string**)

   *The tile Localizable.string will be holding all the translation of your app as key value pairs.*

3.Go to your project Info section and add the language under the Localization tab.
![screen shot 2016-11-21 at 3 10 36 pm](https://cloud.githubusercontent.com/assets/7752578/20482125/e85c7770-b012-11e6-817d-e077d41eba39.png)


4.Localize your strings file by selecting the strings file and selecting Localize button under inspector.

![screen shot 2016-11-21 at 3 04 05 pm](https://cloud.githubusercontent.com/assets/7752578/20482230/a58edc7a-b013-11e6-92ae-2d82e4a7f37f.png)

This way you will generate files with extension "lproj".Now you get strings from this bundle using following method

![screen shot 2016-11-21 at 5 55 28 pm](https://cloud.githubusercontent.com/assets/7752578/20482250/c80912b6-b013-11e6-9da6-3e501a4dde9e.png)

`NSLocalizedString("key", bundle: bundle, comment: "To help translator")`


5.There is no step 5.You  are all done.

**Features**

- Sets Language Intially according to the Language Settings of iphone/Simulator.
    If Language set in simulator is in Finnish, app displays in finnish.But If You localized your App only in Finnish and     English but set the Region to Germany default Localization will be in English.
 
- Persistence even if the app is closed.
