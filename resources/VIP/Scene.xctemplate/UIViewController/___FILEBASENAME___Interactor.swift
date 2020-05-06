//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_sceneName___InteractorProtocol {
    // Replaced by interactor's output functions and conform the protocol in presenter
}

class ___VARIABLE_sceneName___Interactor {

    var presenter:  ___VARIABLE_sceneName___PresenterProtocol?
    let worker: ___VARIABLE_sceneName___WorkerProtocol

    init(worker: ___VARIABLE_sceneName___Worker) {
        self.worker = worker
    }
}

extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorProtocol {}
