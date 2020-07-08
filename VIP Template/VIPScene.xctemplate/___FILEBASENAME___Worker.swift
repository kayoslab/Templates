import UIKit

/**
 Data that will be directed towards the `___VARIABLE_sceneName:identifier___Worker` coming 
 from the `___VARIABLE_sceneName:identifier___Interactor`.
 */
protocol ___VARIABLE_sceneName:identifier___WorkerInput: class {

    // swiftlint:disable:next implicitly_unwrapped_optional
    var output: ___VARIABLE_sceneName:identifier___WorkerOutput! { get set }

    func doSomeWork()
}

/**
 Data that will be directed out of the `___VARIABLE_sceneName:identifier___Worker` to the
 `___VARIABLE_sceneName:identifier___Interactor`. This protocol is used to return data
 from the worker.
 */
protocol ___VARIABLE_sceneName:identifier___WorkerOutput: class {
    
    func didSomeWork()
}

/**
  The `___VARIABLE_sceneName:identifier___Worker` component will handle all the API/Data requests
  and responses. The Response struct will get the data ready for the
  `___VARIABLE_sceneName:identifier___Interactor`. It will also handle the success/error response,
  so the `___VARIABLE_sceneName:identifier___Interactor` knows how to proceed.
 */
class ___VARIABLE_sceneName:identifier___Worker: ___VARIABLE_sceneName:identifier___WorkerInput {

    // swiftlint:disable:next implicitly_unwrapped_optional
    weak var output: ___VARIABLE_sceneName:identifier___WorkerOutput!

    // MARK: - Initializers

    /// This will initialize the `___VARIABLE_sceneName:identifier___Worker` using
    /// a given `___VARIABLE_sceneName:identifier___WorkerOutput`.
    ///
    /// - Parameter output: A reference to the used output.
    init(output: ___VARIABLE_sceneName:identifier___WorkerOutput? = nil) {
        if let output = output {
            self.output = output
        }
    }

    func doSomeWork() {
        output.didSomeWork()
    }
}
