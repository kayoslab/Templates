import UIKit

/**
  Data that will be directed out of the `___VARIABLE_sceneName:identifier___Interactor`
  to the `___VARIABLE_sceneName:identifier___Presenter`.
 */
protocol ___VARIABLE_sceneName:identifier___InteractorOutput {

    /// Updates the view controller after the view is loaded.
    func presentUpdateAfterLoading()

    /// Triggers an update with the new view model.
    ///
    /// - parameter viewModel: View model which will be applied. 
    func update(with viewModel: ___VARIABLE_sceneName:identifier___ViewModel)
}

/**
  This is the “mediator” between the `___VARIABLE_sceneName:identifier___Worker` and the `___VARIABLE_sceneName:identifier___Presenter`.
  First, it communicates with the `___VARIABLE_sceneName:identifier___ViewController` which passes all
  the request params needed for the `___VARIABLE_sceneName:identifier___Worker`. Before proceeding
  to the `___VARIABLE_sceneName:identifier___Worker`, a validation is done to check
  if everything is sent properly. The `___VARIABLE_sceneName:identifier___Worker` returns a response
  and the `___VARIABLE_sceneName:identifier___Interactor` passes that response towards the `___VARIABLE_sceneName:identifier___Presenter.
 */
final class ___VARIABLE_sceneName:identifier___Interactor {

    private let output: ___VARIABLE_sceneName:identifier___InteractorOutput
    private let worker: ___VARIABLE_sceneName:identifier___WorkerInput

    // MARK: - Initializers

    /// This will initialise the `___VARIABLE_sceneName:identifier___Interactor` using
    /// a given `___VARIABLE_sceneName:identifier___InteractorOutput` and `___VARIABLE_sceneName:identifier___Worker`.
    ///
    /// - Parameters:
    ///   - output: A reference to the used output.
    ///   - worker: A reference to the used worker
    ///
    /// - Note: The worker parameter's default value
    ///         is the `___VARIABLE_sceneName:identifier___Worker`.
    init(
        output: ___VARIABLE_sceneName:identifier___InteractorOutput,
        worker: ___VARIABLE_sceneName:identifier___WorkerInput = ___VARIABLE_sceneName:identifier___Worker()
    ) {
        self.output = output
        self.worker = worker
        self.worker.output = self
    }
}

// MARK: - ___VARIABLE_sceneName:identifier___ViewControllerOutput

extension ___VARIABLE_sceneName:identifier___Interactor: ___VARIABLE_sceneName:identifier___ViewControllerOutput {

    // MARK: - Business logic

    func viewLoaded() {
        output.presentUpdateAfterLoading()
    }

    func viewContentUpdated(with viewModel: ___VARIABLE_sceneName:identifier___ViewModel) {
        output.update(with: viewModel)
    }
}

extension ___VARIABLE_sceneName:identifier___Interactor: ___VARIABLE_sceneName:identifier___WorkerOutput {
    
    func didSomeWork() {
        // TODO: Fill with content
    }
}

