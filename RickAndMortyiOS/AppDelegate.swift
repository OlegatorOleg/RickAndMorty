import UIKit
import Resolver
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true
        setupRegistrations()
        setNavBar()
        return true
    }
    
    private func setNavBar() {
        let appearance = UINavigationBarAppearance()
        
        appearance.titleTextAttributes = [.foregroundColor: UIColor.rickBlue]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.rickBlue]
        
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().tintColor = UIColor.rickBlue
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    

    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {  
    
}

extension AppDelegate: Resolving {
    private func setupRegistrations(){
        resolver.register { LocationsViewModel() }
        resolver.register { EpisodesViewModel() }
        resolver.register { CharactersViewModel() }
        resolver.register { NetworkService() }
    }
}

