#
# Be sure to run `pod lib lint XSTestModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XSTestModule'
  s.version          = '0.1.0'
  s.summary          = 'A test module for demonstrating CocoaPods configuration.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A test module for demonstrating CocoaPods configuration. This module is intended
   to help developers learn how to create and manage a podspec file.
   DESC

  s.homepage         = 'https://github.com/sxs123166/XSTestModule'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'beifengchuiluoyanlei' => '1752440588@qq.com' }
  s.source           = { :git => 'git@github.com:sxs123166/XSTestModule.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'XSTestModule/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XSTestModule' => ['XSTestModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  class << s
    # 给s添加一个子库的方法
    # @param name 字符串，子库的名字
    # @param dependencies 数组，依赖的库，没有填空数组[]
    def addSubspec(name, dependencies=[])
      self.subspec name do |ss|
      #子模块代码仅内部可访问
      ss.public_header_files = "XSTestModule/Classes/#{name}/**/*.h"
      ss.source_files        = "XSTestModule/Classes/#{name}/**/*.{h,m}"
      #其他依赖
      dependencies.each do |lib|
         ss.dependency lib
       end
      end
    end 
  end

  s.subspec "ATest" do |ss|
    ss.dependency  "XSTestModule/A"
    ss.dependency  "XSTestModule/bundle"
    ss.dependency  "XSTestModule/Reachability"
  end
  
  s.subspec "BTest" do |ss|
    ss.dependency  "XSTestModule/B"
    ss.dependency  "XSTestModule/bundle"
    ss.dependency  "XSTestModule/Reachability"
  end

  s.addSubspec("A", [])
  s.addSubspec("B", [])
  s.addSubspec("bundle", [])
  s.dependency("Reachability", [])

end
