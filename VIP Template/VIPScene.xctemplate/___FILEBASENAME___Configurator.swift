import UIKit

/**
  Helper service that configures a `___VARIABLE_sceneName:identifier___ViewController` with the
  necessary CleanArchitecture reference classes.
 */
final class ___VARIABLE_sceneName:identifier___Configurator {

    /// Configures a given `___VARIABLE_sceneName:identifier___ViewController` with
    /// the necessary reference.
    ///
    /// - Parameter viewController: The view controller to be configured.
    static func configure(viewController: ___VARIABLE_sceneName:identifier___ViewController) {
        let router = ___VARIABLE_sceneName:identifier___Router(viewController: viewController)
        let presenter = ___VARIABLE_sceneName:identifier___Presenter(output: viewController, router: router)
        let interactor = ___VARIABLE_sceneName:identifier___Interactor(output: presenter)

        viewController.output = interactor
    }
}
