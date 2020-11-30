# Description

Sample project to demonstate the CocoaPod issue outlined here:
https://github.com/CocoaPods/Xcodeproj/issues/743

- Issue occurs when the main app target has static library dependencies and these dependencies are using Cocoapods and SPM packages.

The issue is that when running `pod install` the following error is returned:

```
RuntimeError - Expected target or target_proxy, from which to fetch a uuid for target ''.Find and clear the PBXTargetDependency entry with uuid 'EBBF272C25753BE4005FF151' in your .xcodeproj.
```

### Additional Information

- `pod install` works if either of the static library targets are commented out from the pod file.
- If the swift packages are not marked as dependencies but are instead linked then `pod install` does work. However, my understanding is that we shouldn't link reused packages in multiple places to avoid duplicate symbol issues. So only the main app target should link to the swift package.