//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___Viewable: class {
    // Replaced by presenter's presentation output functions
}

final class ___VARIABLE_sceneName___ViewController: UIViewController {

    private var interactor: ___VARIABLE_sceneName___Interactable?
    private var router: ___VARIABLE_sceneName___Routable?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func bind(to interactor: ___VARIABLE_sceneName___Interactable?, and router: ___VARIABLE_sceneName___Routable) {
        self.interactor = interactor
        self.router = router
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___Viewable {}
