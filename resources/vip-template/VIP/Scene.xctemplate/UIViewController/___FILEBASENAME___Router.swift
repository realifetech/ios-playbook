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

    private weak var vc: UIViewController?

    func bind(to vc: UIViewController?) {
        self.vc = vc
    }
}

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___Routable {}
