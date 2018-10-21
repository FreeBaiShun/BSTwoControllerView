Pod::Spec.new do |s|
s.name         = "BSTwoControllerView"
s.version      = "0.0.1"
s.summary      = "A short description of BSTwoControllerView."
s.description  = <<-DESC
两个controller切换
DESC
s.homepage     = "https://github.com/FreeBaiShun/BSTwoControllerView"
s.license      = "MIT"
s.author             = { "FreeBaiShun" => "851083075@qq.com" }
s.platform     = :ios, "8.0"
s.requires_arc = true
s.source       = { :git => "https://github.com/FreeBaiShun/BSTwoControllerView.git", :tag => "#{s.version}" }

s.subspec 'Core' do |s1|
s1.source_files  = "BSTwoControllerViewDemo", "BSTwoControllerViewDemo/BSTwoControllerView/*.{h,m}"

end
end
