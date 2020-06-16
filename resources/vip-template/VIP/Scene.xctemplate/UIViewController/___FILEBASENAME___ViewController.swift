//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___ViewProtocol: class {
    var vc: ___VARIABLE_sceneName___ViewController? { get }
    var interactor: ___VARIABLE_sceneName___InteractorProtocol? { get set }
    var router: ___VARIABLE_sceneName___RouterProtocol? { get set }

    // Replaced by interactor's output functions and conform the protocol in presenter
}

class ___VARIABLE_sceneName___ViewController: UIViewController, ___VARIABLE_sceneName___ViewProtocol {

    weak var vc: ___VARIABLE_sceneName___ViewController? { self }
    var interactor: ___VARIABLE_sceneName___InteractorProtocol?
    var router: ___VARIABLE_sceneName___RouterProtocol?

    convenience init() {
        self.init()
        ___VARIABLE_sceneName___Composer.compose(view: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
