class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'Crypto'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    data = 'test'.dataUsingEncoding(NSUTF8StringEncoding)
    ciphertext = RNEncryptor.encryptData(data, withSettings:KRNCryptorAES256Settings, password:'password', error:nil)

    puts ciphertext

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
