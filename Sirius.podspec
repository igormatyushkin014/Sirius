Pod::Spec.new do |s|
  s.name         = "Sirius"
  s.version      = "1.0"
  s.summary      = "View at Swift from another world."
  s.description  = <<-DESC
`Sirius` framework simplifies the fundamental things in modern programming: objects. Framework includes set of extensions for Swift's native types and protocols, which makes programming easier and allows to save many lines of code.
                   DESC

  s.homepage     = "https://github.com/igormatyushkin014/Sirius"
  s.screenshots  = "https://github.com/igormatyushkin014/Sirius/raw/master/Logo/logo-1024-300.png"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Igor Matyushkin" => "igormatyushkin014@gmail.com" }
  s.social_media_url   = "http://twitter.com/igormatyushkin1"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/igormatyushkin014/Sirius.git", :tag => s.version }
  s.source_files  = "Source", "Source/**/*"
end
