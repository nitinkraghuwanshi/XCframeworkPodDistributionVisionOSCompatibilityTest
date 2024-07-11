Pod::Spec.new do |spec|
  spec.name                   = 'SampleXCFramework'
  spec.version                = '1.0.0'
  spec.license                = { :type => 'MIT' }
  spec.homepage               = 'https://github.com/nitinkraghuwanshi'
  spec.authors                = { 'Nitin Raghuwanshi' => 'nitinkraghuwanshi@gmail.com' }
  spec.summary                = 'Sample XCFramework / cocoapods integration'
  spec.source                 = { :git => 'https://github.com/nitinkraghuwanshi/SampleXCFramework.git', :tag => '1.0.0' }
  spec.vendored_frameworks    = 'SampleXCFramework/xcframeworks/SampleXCFramework.xcframework'
  spec.ios.deployment_target  = '15.0'
end
