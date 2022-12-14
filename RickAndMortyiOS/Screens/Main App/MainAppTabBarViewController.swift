import UIKit

class MainAppTabBarViewController: UITabBarController {
    
    let locationsVC = UINavigationController(rootViewController: LocationsViewController())
    let episodesVC = UINavigationController(rootViewController: EpisodesViewController())
    let charactersVC = UINavigationController(rootViewController: CharactersViewController())

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUITabBarItems()
        configureTabBar()
    }
    
    func configureUITabBarItems(){
        charactersVC.tabBarItem = UITabBarItem(title: "Characters", image: SFSymbols.charactersSymbol, tag: 0)
        locationsVC.tabBarItem = UITabBarItem(title: "Locations", image: SFSymbols.locationsSymbol, tag: 1)
        episodesVC.tabBarItem = UITabBarItem(title: "Episodes", image: SFSymbols.episodesSymbol, tag: 2)
    }
    
    func configureTabBar(){
        tabBar.tintColor = .rickBlue
        setViewControllers([charactersVC, locationsVC, episodesVC], animated: true)
    }

}
