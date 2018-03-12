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

**Note in first:** For projects written in Objective-C, add a empty `.swift` file to your project. The bridge header is unnecessary.

#### Add the import statement

For Objective-C, open your **AppDelegate.m** file and add the following import statement:

```objective-c
#import "MandrakeKit/MandrakeKit-Swift.h"
```

For Swift, open your **AppDelegate.swift** file and add the following import statement:

``` swift
import MandrakeKit
```

#### Add the setup methods

For Objective-C, Insert the following line to start the SDK in your app's **AppDelegate.m** class in the `-application:didFinishLaunchingWithOptions:` method:

```objective-c
[MDKConfig setupWithTokenType:@"bearer" token:@"7313bbbdcef7826566ee2098ea85e7b7" domain:@"wanketest"];
[MDKConfig enableWaterMarkWith:@"watermark"];
```

For Swift, Insert the following line to start the SDK in your app's **AppDelegate.swift** class in the `application(_:didFinishLaunchingWithOptions:)` method:

``` swift
MDKConfig.setup(tokenType: "bearer", token: "7313bbbdcef7826566ee2098ea85e7b7", domain: "wanketest")
MDKConfig.enableWaterMark(with: "watermark")
```

#### Final step

For Objective-C, After setup the SDK, all to have to do is to instantiate `View`. It's a subclass of `UIViewController`. Add the instantiated object in wherever you want to integrate `MandrakeKit`.

For Swift, After setup the SDK, all to have to do is to instantiate `Messages.Recents.View`. It's a subclass of `UIViewController`. Add the instantiated object in wherever you want to integrate `MandrakeKit`.

#### Recap

Following code is a complete `MandrakeKit` usage example for Objective-C.

```objective-c
#import "MandrakeKit/MandrakeKit-Swift.h"

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [MDKConfig setupWithTokenType:@"bearer" token:@"7313bbbdcef7826566ee2098ea85e7b7" domain:@"wanketest"];
    [MDKConfig enableWaterMarkWith:@"watermark"];
    UITabBarController *tab = [UITabBarController new];
    tab.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:[UIViewController new]],  [[UINavigationController alloc] initWithRootViewController:[[View alloc] init]]];
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    return YES;
}
```

Following code is a complete `MandrakeKit` usage example for Swift.

```swift
import MandrakeKit

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
	window = UIWindow(frame: UIScreen.main.bounds)
	MDKConfig.setup(tokenType: "bearer", token: "7313bbbdcef7826566ee2098ea85e7b7", domain: "wanketest")
	MDKConfig.enableWaterMark(with: "watermark")
    let tab = UITabBarController()
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

