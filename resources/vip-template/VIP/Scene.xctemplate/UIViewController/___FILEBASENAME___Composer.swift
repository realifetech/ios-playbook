//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

enum ___VARIABLE_sceneName___Composer {

    static func compose(view: ___VARIABLE_sceneName___ViewProtocol, router: ___VARIABLE_sceneName___RouterProtocol = ___VARIABLE_sceneName___Router()) {
        let worker = ___VARIABLE_sceneName___Worker()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let interactor = ___VARIABLE_sceneName___Interactor(presenter: presenter, router: router, worker: worker)
        view.bind(to: interactor)
        router.view = view
        presenter.view = view
    }
}
