//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_sceneName___Routable {}

final class ___VARIABLE_sceneName___Router {

    private weak var view: ___VARIABLE_sceneName___Viewable?

    func bind(to view: ___VARIABLE_sceneName___Viewable?) {
        self.view = view
    }
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___Routable {}
