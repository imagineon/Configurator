## ViewConfigurator

[![Platforms](https://img.shields.io/cocoapods/p/ViewConfigurator.svg)](https://cocoapods.org/pods/ViewConfigurator)
[![License](https://img.shields.io/cocoapods/l/ViewConfigurator.svg)](https://raw.githubusercontent.com/imagineon/ViewConfigurator/master/LICENSE)

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/ViewConfigurator.svg)](https://cocoapods.org/pods/ViewConfigurator)

[![Travis](https://img.shields.io/travis/imagineon/ViewConfigurator/master.svg)](https://travis-ci.org/imagineon/ViewConfigurator/branches)
[![JetpackSwift](https://img.shields.io/badge/JetpackSwift-framework-red.svg)](http://github.com/JetpackSwift/FrameworkTemplate)

The clean way to setup your views!

- [Motivation and Usage](#motivation-and-usage)
- [Requirements](#requirements)
- [Installation](#installation)
- [TODOs](#todos)
- [Current Issues](#current-issues)
- [License](#license)

## Motivation and Usage
Some iOS developers like to use storyboards, some like to create all their views and constraints in code.
While we don't want to favor one approach over the other, this library is for the latter.

When creating and configuring views in code there's many lines to be written.
And doing it all in `viewDidLoad()` makes for one behemoth of a method.

Swift allows to instantiate and configure our views right where we declare them.
There even is the possibility to use instance variables, if you declare the Views lazy.
For Example:

```swift
struct ExampleColorModel {
    let primaryColor: UIColor
    let secondaryColor: UIColor
}

class ExampleViewController: UIViewController {
    let model: ExampleColorModel = ExampleColorModel(primaryColor: .yellow, secondaryColor: .blue)

    let myView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.alpha = 0.8
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.borderWidth = 0.5
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return view
    }()

    lazy var someLazyView: UIView = {
        let view = UIView()
        view.backgroundColor = self.model.primaryColor
        view.alpha = 0.8
        view.layer.cornerRadius = 8
        view.layer.borderColor = self.model.secondaryColor.cgColor
        view.layer.borderWidth = 0.5
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        return view
    }()
}
```

With this libary we want to achieve an even higher level of 'swiftiness'.

The idea is to create reusable ConfigurationSets and then either apply them on instances.

With ViewConfigurator our example now looks like this:

```swift
struct ExampleColorModel {
    let primaryColor: UIColor
    let secondaryColor: UIColor
}

struct ExampleConfigurations {
    static let standard = UIView.config
        .alpha(0.8)
        .cornerRadius(8)
        .borderWidth(0.5)
        .backgroundColor(.blue)
        .borderColor(UIColor.red.cgColor)
        .frame(CGRect(x: 0, y: 0, width: 50, height: 50))
}

class ExampleViewController: UIViewController {
    let model: ExampleColorModel = ExampleColorModel(primaryColor: .yellow, secondaryColor: .blue)

    let myView = UIView()
        .apply(ExampleConfigurations.standard)

    lazy var modelConfiguration = UIView.config
        .backgroundColor(self.model.primaryColor)
        .borderColor(self.model.secondaryColor.cgColor)

    lazy var someLazyView = UIView()
        .apply(ExampleConfigurations.standard)
        .apply(self.modelConfiguration)
}

```

If you have a configuration which is only used once you can also do this directly without creating an configuration object beforehand.

```swift
lazy var anotherView = UIView().config
    .backgroundColor(self.model.primaryColor)
    .borderColor(self.model.secondaryColor.cgColor)
    .finish()
```


Also the grouping of configurations is possible:

```swift
struct ExampleConfigurations {
    static let standard = UIView.config
        .alpha(0.8)
        .cornerRadius(8)
        .borderWidth(0.5)

    static let shadow = UIView.config
        .shadowColor(UIColor.yellow.cgColor)
        .shadowOffset(CGSize(width: 3, height: 3))

    static let standardWithShadow = standard
        .append(shadow)
}
```

If your UIView Subclasses have custom Properties and you want to configure them you can use the generic set method.
This will invoke a custom closure during Configuration.
Be careful while using this. There is nothing stoping you from introducing sideeffects through this, and it is strongly discouraged.

```swift
static let custom = MyCustomView.config
    .alpha(0.8)
    .set({
        $0.customProperty = "i am special"
    })
```

A better solution would be to extend ConfigurationSet to support your custom properties.

```swift
class MyViewSubclass: UIView {
    var anotherConfiguration: Bool = false
}

extension ConfigurationSet where Base: MyViewSubclass  {
    func anotherConfiguration(_ newValue: Bool) -> Self {
        return set { (configurable: MyViewSubclass) in
            configurable.anotherConfiguration = newValue
        }
    }
}
```

## Requirements

- iOS 8.0+
- Xcode 9.0+
- Swift 4+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build ViewConfigurator 0.1.0+.

To integrate ViewConfigurator into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'ViewConfigurator', '~> 0.3.0'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate ViewConfigurator into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "ImagineOn/ViewConfigurator" ~> 0.3.0
```
### Swift Package Manager

To use Configurator as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following in your Package.swift file.

``` swift
import PackageDescription

let package = Package(
    name: "ViewConfigurator",
    dependencies: [
        .Package(url: "https://github.com/imagineon/ViewConfigurator.git", "0.3.0")
    ]
)
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate Configurator into your project manually.

#### Git Submodules

- Open up Terminal, `cd` into your top-level project directory, and run the following command if your project is *not* initialized as a git repository:

```bash
$ git init
```

- Add Configurator as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

```bash
$ git submodule add https://github.com/imagineon/ViewConfigurator.git
$ git submodule update --init --recursive
```

- Open the new `ViewConfigurator` folder, and drag the `ViewConfigurator.xcodeproj` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `ViewConfigurator.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `ViewConfigurator.xcodeproj` folders each with two different versions of the `ViewConfigurator.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from.

- Select the `ViewConfigurator.framework`.

- And that's it!

> The `ViewConfigurator.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

## TODOs

In the future we want to provide some convenice configurations, like using UIColor for CGColor configurations, a shadow configuration set and extensions for third party libraries like ReactiveCocoa.
We also want to provide a version which will generate on every build and enable configuration of properties added by custom UIView subclasses.
At the moment the Base of the ConfigurationSet has to be the same Type as the View it is applied on. It would be convinient to allow application of configurations on Subclasses.

## Attributions

Most of the library is generated with the help of Sourcery (https://github.com/krzysztofzablocki/Sourcery/), SourceKitten (https://github.com/jpsim/SourceKitten) frameworks and Stencil template language (https://github.com/kylef/Stencil).
A big help was the Framework https://github.com/sidmani/Chain where we got the solution to enable SourceKitten to analyse UIKit.

## Code Generation

Most parts of the library are generated with the help of Sourcery by analysing Swift interfaces of UIKit. These interfaces are created with the help of SourceKitten.
We choose not to regenerate during every Build for several reasons. At the moment we can't distinguish between readOnly Properties and settable Properties, so a lot of generated Code will not compile.

## Current Issues

Cannot filter out get-only properties during the library generation process.
Generation of code for Functions is based on function with certain prefixes ("set", "add", "remove"), there may be others which could be usefull. For "set" prefix we try to remove it from the generated Function, but the filter capabilities of Stencil allow only replacement. 
The list of UIView Subclasses is not generated at the moment.
At the moment Interoperability between ConfigurationSets of related Types, is constraint to applying superclass Configuration to subclasses. There is no functionality to combine two ConfigurationSets at the moment.

## License

ViewConfigurator is released under the MIT license. See [LICENSE](https://github.com/imagineon/ViewConfigurator/blob/master/LICENSE) for details.
