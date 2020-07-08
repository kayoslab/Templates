import UIKit

/**
  All the methods used for routing are kept under this protocol.
 */
protocol ___VARIABLE_sceneName:identifier___RouterProtocol: class {

    var viewController: ___VARIABLE_sceneName:identifier___ViewController? { get }

    func navigateToSomewhere()
}

/**
  The `___VARIABLE_sceneName:identifier___Router` takes care for the transition and passing
  data between view controllers.
 */
final class ___VARIABLE_sceneName:identifier___Router {

    weak var viewController: ___VARIABLE_sceneName:identifier___ViewController?

    // MARK: - Initializers

    /// This will initialize the `___VARIABLE_sceneName:identifier___Router` using
    /// an optional `___VARIABLE_sceneName:identifier___ViewController`.
    ///
    /// - Parameter viewController: A reference to the used view controller.
    init(viewController: ___VARIABLE_sceneName:identifier___ViewController?) {
        self.viewController = viewController
    }
}

// MARK: - ___VARIABLE_sceneName:identifier___RouterProtocol

extension ___VARIABLE_sceneName:identifier___Router: ___VARIABLE_sceneName:identifier___RouterProtocol {

    // MARK: - Navigation

    func navigateToSomewhere() {
      // TODO: Navigate to other view controller
    }
}
