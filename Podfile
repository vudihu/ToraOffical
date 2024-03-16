# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ToraOffical' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ToraOffical
  pod 'ESTabBarController-swift'
  
  pod 'SwiftHEXColors'
  
  pod 'Alamofire'
  
  pod 'MBProgressHUD', '~> 1.2.0'
  
  pod 'XLPagerTabStrip', '~> 9.0'
  
  pod 'GoogleSignIn'
  
  pod 'ObjectMapper', '~> 3.5'
  
  pod 'KeychainSwift', '~> 20.0'
  
  pod 'Kingfisher', '~> 7.0'

end
post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      end
    end
  end
end
