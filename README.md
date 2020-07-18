# iOS-WeatherApp
# What is MVVM Pattern?
* The purpose of this post is to provide an introduction to the Model-View-ViewModel (MVVM) pattern. While I’ve participated in lots of discussions online about MVVM, it occurred to me that beginners who are learning the pattern have very little to go on and a lot of conflicting resources to wade through in order to try to implement it in their own code. I am not trying to introduce dogma but wanted to pull together key concepts in a single post to make it easy and straightforward to understand the value of the pattern and how it can be implemented. MVVM is really far simpler than people make it out to be.
* MODEL
* These hold the app data. These are the structs and classes that you have created to hold the data you receive from a REST API or from some other data source.
* VIEW
* These display UI elements on the screen. These are usually classes that subclass UIView and use UIKit.
* VIEW MODELS
*These classes are where you take the information from the model classes and transform them into values that can be displayed in a particular view.

![mvvm](https://user-images.githubusercontent.com/58694754/87852677-b3b51100-c90c-11ea-8aca-f3be311be20c.png)




# ScreenShot
<img width="432" alt="Ekran Resmi 2020-07-18 13 54 05" src="https://user-images.githubusercontent.com/58694754/87851111-48644280-c8fe-11ea-97e7-0541609bae2b.png">
<img width="432" alt="Ekran Resmi 2020-07-18 13 53 50" src="https://user-images.githubusercontent.com/58694754/87851108-469a7f00-c8fe-11ea-840a-2edbcda845ad.png">
<img width="432" alt="Ekran Resmi 2020-07-18 13 02 43" src="https://user-images.githubusercontent.com/58694754/87850443-0389dd00-c8f9-11ea-8fb9-ae689c171fa8.png">
<img width="432" alt="Ekran Resmi 2020-07-18 13 30 57" src="https://user-images.githubusercontent.com/58694754/87851115-4e5a2380-c8fe-11ea-94c4-54153b39cab0.png">
<img width="432" alt="Ekran Resmi 2020-07-18 13 16 01" src="https://user-images.githubusercontent.com/58694754/87850448-0553a080-c8f9-11ea-954a-199cbc60fe2c.png">
<img width="432" alt="Ekran Resmi 2020-07-18 13 16 30" src="https://user-images.githubusercontent.com/58694754/87850449-05ec3700-c8f9-11ea-98b9-8a35741c3bd3.png">
<img width="432" alt="Ekran Resmi 2020-07-18 13 16 52" src="https://user-images.githubusercontent.com/58694754/87850450-071d6400-c8f9-11ea-856c-0a1f4beb3684.png">


