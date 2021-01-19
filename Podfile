source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'

workspace 'cocoapodSDK'
project 'cocoapodSDK/cocoapodSDK.xcodeproj'
project 'DemoApp/DemoApp.xcodeproj'

target 'cocoapodSDK' do

	project 'cocoapodSDK/cocoapodSDK.xcodeproj'
	pod 'AFNetworking', '~> 3.0'
	pod 'Firebase/Auth'
	pod 'GoogleSignIn'
end

target 'DemoApp' do

	project 'DemoApp/DemoApp.xcodeproj'
end

post_install do |installer|
 installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
   config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
  end
 end
end