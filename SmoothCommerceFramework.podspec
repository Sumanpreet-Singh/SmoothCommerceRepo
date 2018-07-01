Pod::Spec.new do |s|
          #1.
          s.name               = "SmoothCommerceFramework"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'SmoothCommerceFramework' framework"
          #4.
          s.homepage        = "http://www.google.com"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Sumanpreet"
          #7.
          s.platform            = :ios, "11.0"
          #8.
          s.source              = { :git => "https://github.com/Sumanpreet-Singh/SmoothCommerceRepo.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "SmoothCommerceFramework", "SmoothCommerceFramework/**/*.{h,m,swift}"
    end