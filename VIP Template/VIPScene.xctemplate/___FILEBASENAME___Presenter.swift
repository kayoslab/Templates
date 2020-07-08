import UIKit

/**
  Data that will be directed out of the `___VARIABLE_sceneName:identifier___Presenter` to the
  `___VARIABLE_sceneName:identifier___ViewController`. This protocol stores the presentation
  logic methods.
 */
protocol ___VARIABLE_sceneName:identifier___PresenterOutput: class {

    /// Triggers an update with the new view model.
    ///
    /// - parameter viewModel: View model which will be applied. 
    func update(with viewModel: ___VARIABLE_sceneName:identifier___ViewModel)
}

/**
  Formats the response into a `___VARIABLE_sceneName:identifier___ViewModel` and pass the result back to
  the `___VARIABLE_sceneName:identifier___ViewController`. The `___VARIABLE_sceneName:identifier___Presenter` will be in charge
  of the presentation logic. This component decides how the data will be
  presented to the user. Also, when there is a need for transition, it will 
  communicate with the `___VARIABLE_sceneName:identifier___Router`.
 */
final class ___VARIABLE_sceneName:identifier___Presenter {

    private(set) unowned var output: ___VARIABLE_sceneName:identifier___PresenterOutput
    private(set) var router: ___VARIABLE_sceneName:identifier___RouterProtocol

    // MARK: - Initializers

    /// This will initialize the `___VARIABLE_sceneName:identifier___Presenter` using
    /// a given `___VARIABLE_sceneName:identifier___PresenterOutput` and `___VARIABLE_sceneName:identifier___Router`.
    ///
    /// - Parameter output: A reference to the used output.
    /// - Parameter rozter: A reference to the used router.
    init(output: ___VARIABLE_sceneName:identifier___PresenterOutput, router: ___VARIABLE_sceneName:identifier___RouterProtocol) {
        self.output = output
        self.router = router
    }
}

// MARK: - ___VARIABLE_sceneName:identifier___InteractorOutput

extension ___VARIABLE_sceneName:identifier___Presenter: ___VARIABLE_sceneName:identifier___InteractorOutput {

    // MARK: - Presentation logic

    func presentUpdateAfterLoading() {

        // TODO: Format the response from the Interactor
        // and pass the result back to the View Controller

        // TODO: Trigger navigation if needed 

        let viewModel = ___VARIABLE_sceneName:identifier___ViewModel()
        update(with: viewModel)
    }

    func update(with viewModel: ___VARIABLE_sceneName:identifier___ViewModel) {
        output.update(with: viewModel)
    }
}
