import XCTest
@testable import GMR

/**
  Tests the `___VARIABLE_sceneName:identifier___Workers's implementation.
 */
class ___VARIABLE_sceneName:identifier___WorkerTests: XCTestCase {

    // MARK: - Subject under test

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var sut: ___VARIABLE_sceneName:identifier___Worker!
    // swiftlint:disable:next implicitly_unwrapped_optional
    private var workerOutput: ___VARIABLE_sceneName:identifier___WorkerOutputMock!
    
    // MARK: - Test lifecycle

    override func setUp() {
        super.setUp()

        setupSUT()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Test setup

    private func setupSUT() {
        workerOutput = ___VARIABLE_sceneName:identifier___WorkerOutputMock()
        sut = ___VARIABLE_sceneName:identifier___Worker(output: workerOutput)
    }

    // MARK: - Tests

    // TODO: Add Worker tests
}

private class ___VARIABLE_sceneName:identifier___WorkerOutputMock: ___VARIABLE_sceneName:identifier___WorkerOutput {
    var didWork: Bool = false

    func didSomeWork() {
        didWork = true
    }
}
