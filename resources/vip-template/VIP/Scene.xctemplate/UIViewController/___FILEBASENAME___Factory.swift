//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

enum ___VARIABLE_sceneName___Factory {

    static func makeScene() -> ___VARIABLE_sceneName___ViewController {
        let vc = ___VARIABLE_sceneName___ViewController(nibName: String(describing: ___VARIABLE_sceneName___ViewController.self), bundle: .main)
        let presenter = ___VARIABLE_sceneName___Presenter()
        let worker = ___VARIABLE_sceneName___Worker()
        let interactor = ___VARIABLE_sceneName___Interactor(presenter: presenter, worker: worker)
        let router = ___VARIABLE_sceneName___Router()
        router.bind(to: vc)
        vc.bind(to: interactor, and: router)
        presenter.bind(to: vc)
        return vc
    }
}
