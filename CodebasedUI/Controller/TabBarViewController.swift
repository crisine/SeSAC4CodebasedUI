//
//  TabBarViewController.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundColor = .black
        tabBar.tintColor = .white
        
        configureViewControllers()
    }
    
    func configureViewControllers() {
        
        let mainVC = MainViewController()
        let mainNav = UINavigationController(rootViewController: mainVC)
        
        let searchVC = SearchViewController()
        let searchNav = UINavigationController(rootViewController: searchVC)
        
        let savedContentsVC = SavedContentsViewController()
        let savedContentsNav = UINavigationController(rootViewController: savedContentsVC)
        
        mainVC.title = "홈"
        mainNav.tabBarItem = UITabBarItem(title: "홈", image: EnumeratedImages.house.image, selectedImage: EnumeratedImages.houseFill.image)
        
        searchVC.title = "NEW & HOT 검색"
        searchNav.tabBarItem = UITabBarItem(title: "NEW & HOT", image: EnumeratedImages.playRectangle.image, selectedImage: EnumeratedImages.playRectangleFill.image)
        
        savedContentsVC.title = "저장한 콘텐츠 목록"
        savedContentsNav.tabBarItem = UITabBarItem(title: "저장한 콘텐츠 목록", image: EnumeratedImages.arrowDownCircle.image, selectedImage: EnumeratedImages.arrowDownCircleFill.image)
        
        
        [mainNav, searchNav, savedContentsNav].forEach {
            $0.navigationBar.backgroundColor = .black
            $0.navigationBar.titleTextAttributes =
            [.font: UIFont.boldSystemFont(ofSize: 18.0),
             .foregroundColor: UIColor.white]
            
            $0.navigationBar.tintColor = .white
        }
        
        self.viewControllers = [mainNav, searchNav, savedContentsNav]
        
    }

}
