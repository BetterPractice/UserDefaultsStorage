#UserDefaultsStorage

This is a Swift Package for adding a property wrapper `@UserDefaultsStored` and `@UserDefaultsStoredOptional`. There are plenty of other similar libraries that provide similar functionality, but I wanted one that behaved in ways that I wanted and I have the ability to update when I need. 

##Usage

```
@UserDefaultsStored(key: "launchCount", defaultValue: 0)
var launchCount: Int
```

OR

```
@UserDefaultsStoredOptional(key: "nickname")
var nickname: String?
```

