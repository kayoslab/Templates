import XCTest
@testable import GMR

/**
  Tests the `___VARIABLE_sceneName:identifier___Presenter's` implementation.
 */
class ___VARIABLE_sceneName:identifier___PresenterTests: XCTestCase {

    // MARK: - Subject under test

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var sut: ___VARIABLE_sceneName:identifier___Presenter!
    // swiftlint:disable:next implicitly_unwrapped_optional
    private var presenterOutput: ___VARIABLE_sceneName:identifier___PresenterOutputMock!
    // swiftlint:disable:next implicitly_unwrapped_optional
    private var router: ___VARIABLE_sceneName:identifier___RouterMock!
    

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
        presenterOutput = ___VARIABLE_sceneName:identifier___PresenterOutputMock()
        router = ___VARIABLE_sceneName:identifier___RouterMock()
        sut = ___VARIABLE_sceneName:identifier___Presenter(output: presenterOutput, router: router)
    }

    // MARK: - Tests

    func testPresenterPresentSomething() {

        // TODO: Test presenter

        sut.presentUpdateAfterLoading()

        XCTAssert(
            presenterOutput.viewModel != nil,
            "Presenter's display something wasn't called"
        )
    }
}

private class ___VARIABLE_sceneName:identifier___PresenterOutputMock: ___VARIABLE_sceneName:identifier___PresenterOutput {
    
    var viewModel: ___VARIABLE_sceneName:identifier___ViewModel?

    func update(with viewModel: ___VARIABLE_sceneName:identifier___ViewModel) {
        self.viewModel = viewModel
    }
}

private class ___VARIABLE_sceneName:identifier___RouterMock: ___VARIABLE_sceneName:identifier___RouterProtocol {

    var viewController: ___VARIABLE_sceneName:identifier___ViewController?
    var navigatedToSomewhere = false

    func navigateToSomewhere() {
        navigatedToSomewhere = true
    }
}
