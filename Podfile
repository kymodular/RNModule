# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

source 'https://github.com/kymodular/PrivatePods.git'
source 'https://github.com/CocoaPods/Specs.git'

use_frameworks!
target 'RNModule' do
    pod 'React', :subspecs => [
    'Core',
    'CxxBridge', # 如果RN版本 >= 0.47则加入此行
    'DevSupport', # 如果RN版本 >= 0.43，则需要加入此行才能开启开发者菜单
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket', # 调试功能需要此模块
    'RCTAnimation', # FlatList和原生动画功能需要此模块
    # 在这里继续添加你所需要的其他RN模块
  ]

  pod 'yoga', '0.59.9.React'
  # 如果RN版本 >= 0.45则加入下面三个第三方编译依赖
  pod 'DoubleConversion'
  pod 'glog'
  pod 'Folly'
end
