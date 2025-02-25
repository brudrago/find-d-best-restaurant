//
//  SettingsVC.swift
//  FindDBestRestaurant
//
//  Created by Guilherme Strutzki on 21/09/21.
//

import UIKit

class SettingsVC: UIViewController {
    
    private lazy var settingsScreen: SettingsScreen = {
        return SettingsScreen(self)
    }()
    
    override func loadView() {
        self.view = settingsScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SettingsVC: SettingsScreenDelegate {
    func didTappedUpdateName() {
        let modalVC = UpdateNameVC()
        self.present(modalVC, animated: true, completion: nil)
    }
	
	func didTappedLogout(_ sender: UIButton) {
		TokenUserDefaults.deleteToken()
		let initialVC = InitialVC()
		let navController = UINavigationController(rootViewController: initialVC)
		UIApplication.shared.windows.first?.rootViewController = navController
		UIApplication.shared.windows.first?.makeKeyAndVisible()
	}
}
