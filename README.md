# XCframeworkPodDistributionVisionOSCompatibilityTest
This repo is created to test compatibility of xcframework for visionOS with cocoapod integration

# Generation of XCFramework
To generate XCFramework
1. Update Derived data folder for SampleXCFramework project to project relative base folder 
2. Build project for all target devices 
  1.1 Cross check .framework for all target devices got created under DerivedData folder
  ```python
  ./DerivedData/SampleXCFramework/Build/Products/
  ```
3. Open terminal 
4. Navigate to SampleXCFramework project folder
5. Run below command to generate new SampleXCFramework.xcframework file
```python
  xcrun xcodebuild -create-xcframework -framework ./DerivedData/SampleXCFramework/Build/Products/Debug-iphoneos/SampleXCFramework.framework -framework ./DerivedData/SampleXCFramework/Build/Products/Debug-iphonesimulator/SampleXCFramework.framework -framework  ./DerivedData/SampleXCFramework/Build/Products/Debug-xros/SampleXCFramework.framework -framework  ./DerivedData/SampleXCFramework/Build/Products/Debug-xrsimulator/SampleXCFramework.framework -framework  ./DerivedData/SampleXCFramework/Build/Products/Debug/SampleXCFramework.framework -output ./xcframeworks/SampleXCFramework.xcframework
```
 
 # Run TestApp with cocoapod integretion of xcframwork
 1. Open terminal 
 2. Navigate to TestApp project folder
 3. Run pod install
 4. Build Testapp for all target device i.e ios, ios-simulator, visionos, visionos-simulator, mac.
