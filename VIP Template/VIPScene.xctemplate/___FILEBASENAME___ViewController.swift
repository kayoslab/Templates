import UIKit

/**
  Data that will be directed out of the `___VARIABLE_sceneName:identifier___ViewController`
  to the  `___VARIABLE_sceneName:identifier___Interactor`.
 */
protocol ___VARIABLE_sceneName:identifier___ViewControllerOutput {

    /// The `___VARIABLE_sceneName:identifier___ViewController`'s view finished loading.
    func viewLoaded()
}

/**
  The `___VARIABLE_sceneName:identifier___ViewController` communicates with the `___VARIABLE_sceneName:identifier___Interactor,
  and gets a response back from the `___VARIABLE_sceneName:identifier___Presenter`.
 */
final class ___VARIABLE_sceneName:identifier___ViewController: UIViewController {

    // swiftlint:disable:next implicitly_unwrapped_optional
    var output: ___VARIABLE_sceneName:identifier___ViewControllerOutput!

    // MARK: - Initializers

    /// This will initialise the `___VARIABLE_sceneName:identifier___ViewController` using a decoder object.
    /// To configure the relations in VIP, we'll use the default configure
    /// implementation using the `___VARIABLE_sceneName:identifier___Configurator`.
    ///
    /// - Parameter aDecoder: An unarchiver object.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        ___VARIABLE_sceneName:identifier___Configurator.configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewLoaded()
    }
}

// MARK: - ___VARIABLE_sceneName:identifier___PresenterOutput

extension ___VARIABLE_sceneName:identifier___ViewController: ___VARIABLE_sceneName:identifier___PresenterOutput {

    // MARK: - Display logic

    func update(with viewModel: ___VARIABLE_sceneName:identifier___ViewModel) {
        // TODO: Update UI
    }
}
