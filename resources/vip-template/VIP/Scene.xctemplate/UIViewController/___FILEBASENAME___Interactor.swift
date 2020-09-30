//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_sceneName___InteractorProtocol {
    // Replaced by view's output functions
}

final class ___VARIABLE_sceneName___Interactor {

    private let presenter: ___VARIABLE_sceneName___PresenterProtocol
    private let router: ___VARIABLE_sceneName___RouterProtocol
    private let worker: ___VARIABLE_sceneName___WorkerProtocol

    init(presenter: ___VARIABLE_sceneName___PresenterProtocol, router: ___VARIABLE_sceneName___RouterProtocol, worker: ___VARIABLE_sceneName___Worker) {
        self.presenter = presenter
        self.router = router
        self.worker = worker
    }
}

extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorProtocol { }
