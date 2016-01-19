# OctopusKit
OctopusKit is a simplicity but graceful solution for invoke RESTful web service APIs,it can help coder develop app based MVC pattern, it can use for big team development; Another benift is that it also can be use to auto generate web service class file if use some M2T tools, save cost and raplidy the app develop progress.

##Motivation

 Almost all mobile app is iApp that will call backend web APIs pull or submit data, we want a grace solution suport the RESTfull APIs layer in our app, slipt the network API logic layer and  View layer, in other words, we want coder should change the tranditional thinking that coding the web call in View or Controller layer but should in SDK layer indeed. 

 All RESTfull APIs will be map to a static method, that will be easy maintenance, easy extendable also simply to apply in App development.
 
## Usage
To integrate in your project, just add in pod file:

  pod 'OctopusKit', '~> 0.1.0'


To run the example project, clone the repo, and run `pod install` from the Example directory first.

It based AFNetworking

##Notice

Please check the OpenCartService example also the TestCase file, understand the usage then enjoy the way~

## License

OctopusKit is available under the MIT license. See the LICENSE file for more info.
