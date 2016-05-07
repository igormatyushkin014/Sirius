<p align="center" >
  <img src="https://github.com/igormatyushkin014/Sirius/blob/master/Logo/logo-1024-300.png" alt="Sirius" title="Sirius">
</p>

# At a Glance

Swift is still a brand new language, which, very often, does not relieve the developer from writing a lot of boilerplate code. The main goal of `Sirius` framework is to simplify work with fundamental things in modern programming: the objects. Framework includes set of extensions for Swift's native types and protocols, which makes programming easier and allows to save many lines of code.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Sirius` cocoapod

## Requirements

* iOS 8 and later
* Xcode 7 and later

## Usage

### Manipulation with objects

```swift
let object = SomeClass()

object.use { (object) in
    // Do several operations with object...
}

object.useAs(NSString.self) { (object) in
    // Do something with object casted to NSString type...
}
```

Both methods `use` and `useAs` support chain calls, so it's possible to write something like this:

```swift
object.use { (object) in
    // Do several operations with object...
}.useAs(NSString.self) { (object) in
    // Do something with object casted to NSString type...
}.useAs(NSNumber.self) { (object) in
    // Do something with object casted to NSNumber type...
}
```

Since two methods above return receiver's instance, you can use them with initializer like this:

```swift
let view = UIView().use { (object) in
    object --> .blueColor()
    object.clipsToBounds = true
}
```

This approach makes code more demonstrative and clear.

### Class name

```swift
let classNameIncludingNamespace = SomeClass.className(includeNamespace: true) // "com.domain.appName.SomeClass"
let classNameWithoutNamespace = SomeClass.className(includeNamespace: false) // "SomeClass"
```

### Real-life examples

Usually, when you want to set up view's layer, for example - make corners rounded, you write a code like this:

```swift
view.layer.backgroundColor = UIColor.whiteColor().CGColor
view.layer.borderColor = UIColor.blackColor().CGColor
view.layer.borderWidth = 1.0
view.layer.cornerRadius = view.bounds.size.width / 2.0
view.layer.masksToBounds = true
```

With `Sirius` you can forget about `view.` input on each line:

```swift
view.layer.use { (layer) in
    layer.backgroundColor = UIColor.whiteColor().CGColor
    layer.borderColor = UIColor.blackColor().CGColor
    layer.borderWidth = 1.0
    layer.cornerRadius = view.bounds.size.width / 2.0
    layer.masksToBounds = true
}
```

The same you can do on initialization of the view:

```swift
let view = UIView().use { (view) in
    view.frame = CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0)
    
    view.layer.use({ (layer) in
        layer.backgroundColor = UIColor.whiteColor().CGColor
        layer.borderColor = UIColor.blackColor().CGColor
        layer.borderWidth = 1.0
        layer.cornerRadius = view.bounds.size.width / 2.0
        layer.masksToBounds = true
    })
}
```

## License

`Sirius` is available under the MIT license. See the `LICENSE` file for more info.
