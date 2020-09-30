//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___ViewProtocol: class {
    func bind(to: ___VARIABLE_sceneName___InteractorProtocol)
    func dismiss(animated: Bool, completion: (() -> Void)?)
    // Replaced by interactor's output functions
}

final class ___VARIABLE_sceneName___ViewController: UIViewController {

    private var interactor: ___VARIABLE_sceneName___InteractorProtocol = {
        fatalError("Please set an interactor through the bind function")
    }

    func bind(to interactor: ___VARIABLE_sceneName___InteractorProtocol) {
        self.interactor = interactor
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewProtocol { }
