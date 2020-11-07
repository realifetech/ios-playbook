//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___Presentable: class {
    // Replaced by interactor's display output functions
}

final class ___VARIABLE_sceneName___Presenter {

    private weak var view: ___VARIABLE_sceneName___Viewable?

    func bind(to view: ___VARIABLE_sceneName___Viewable) {
        self.view = view
    }
}

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Presentable {}
