import XCTest
@testable import GMR

/**
  Tests the `___VARIABLE_sceneName:identifier___Interactor's` implementation.
 */
class ___VARIABLE_sceneName:identifier___InteractorTests: XCTestCase {

    // MARK: - Subject under test

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var sut: ___VARIABLE_sceneName:identifier___Interactor!
    // swiftlint:disable:next implicitly_unwrapped_optional
    private var interactorOutput: ___VARIABLE_sceneName:identifier___InteractorOutputMock!
    // swiftlint:disable:next implicitly_unwrapped_optional
    private var workerMock: ___VARIABLE_sceneName:identifier___WorkerMock!

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
        interactorOutput = ___VARIABLE_sceneName:identifier___InteractorOutputMock()
        workerMock = ___VARIABLE_sceneName:identifier___WorkerMock()
        sut = ___VARIABLE_sceneName:identifier___Interactor(output: interactorOutput, worker: workerMock)
    }

    // MARK: - Tests

    func testDoSomething() {

        // TODO: Test interactor

        sut.viewLoaded()

        XCTAssert(
            interactorOutput.didPresentSomething,
            "Interactor output does not work properly"
        )
    }
}

private class ___VARIABLE_sceneName:identifier___InteractorOutputMock: ___VARIABLE_sceneName:identifier___InteractorOutput {
    
    var didPresentSomething = false
    var model: ___VARIABLE_sceneName:identifier___ViewModel?

    func presentUpdateAfterLoading() {
        didPresentSomething = true
    }

    func update(with model: ___VARIABLE_sceneName:identifier___ViewModel) {
        self.model = model
    }
}

private class ___VARIABLE_sceneName:identifier___WorkerMock: ___VARIABLE_sceneName:identifier___WorkerInput {

    // swiftlint:disable:next implicitly_unwrapped_optional
    var output: ___VARIABLE_sceneName:identifier___WorkerOutput!

    func doSomeWork() {

        // TODO: Mock worker response if needed
    }
}
