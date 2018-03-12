# MandrakeKit

BearyChat SDK for iOS.

## Install

Add the following line to the source field in your Podfile:

```ruby
source 'https://github.com/bearyinnovative/MandrakeKit'
```

Then use:

```ruby
pod 'MandrakeKit', '0.1.0.beta.1'
```

And run:

```
pod install
```

## Usage

#### Add the import statement

Open your **AppDelegate.swift** file and add the following import statement:

``` swift
import MandrakeKit
```

 #### Add the setup methods

Insert the following line to start the SDK in your app's **AppDelegate.swift** class in the `application(_:didFinishLaunchingWithOptions:)` method:

``` swift
MDKConfig.setup(tokenType: "bearer", token: "7313bbbdcef7826566ee2098ea85e7b7", domain: "wanketest")
MDKConfig.enableWaterMark(with: "万科")
```

####Final step

After setup the SDK, all to have to do is to instantiate `Messages.Recents.View`. It's a subclass of `UIViewController`. Add the instantiated object in wherever you want to integrate `MandrakeKit`.

#### Recap

Following code is a complete `MandrakeKit` usage example.

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
	window = UIWindow(frame: UIScreen.main.bounds)
	let tab = UITabBarController()
	MDKConfig.setup(tokenType: "bearer", token: "7313bbbdcef7826566ee2098ea85e7b7", domain: "wanketest")
	MDKConfig.enableWaterMark(with: "万科")
	let vc = Messages.Recents.View()
    tab.viewControllers = [
    	UINavigationController(rootViewController: UIViewController()),
		UINavigationController(rootViewController: vc)
    ]
	window?.rootViewController = tab
	window?.makeKeyAndVisible()
	return true
}
```

