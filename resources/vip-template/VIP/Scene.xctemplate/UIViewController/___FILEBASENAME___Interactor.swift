//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_sceneName___Interactable {
    // Replaced by view's output functions
}

final class ___VARIABLE_sceneName___Interactor {

    private let presenter: ___VARIABLE_sceneName___Presentable
    private let worker: ___VARIABLE_sceneName___Workable

    init(presenter: ___VARIABLE_sceneName___Presentable, worker: ___VARIABLE_sceneName___Workable) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___Interactable {}
