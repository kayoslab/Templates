import XCTest
@testable import GMR

/**
  Tests the `___VARIABLE_sceneName:identifier___Interactor's` implementation.
 */
class ___VARIABLE_sceneName:identifier___RouterTests: XCTestCase {

    // MARK: - Subject under test

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var sut: ___VARIABLE_sceneName:identifier___Router!
    // swiftlint:disable:next implicitly_unwrapped_optional
    private var viewController: ___VARIABLE_sceneName:identifier___ViewController!

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
        viewController = StoryboardScene.___VARIABLE_sceneName:identifier___.<#T##identifier#>.instantiate()
        sut = ___VARIABLE_sceneName:identifier___Router(viewController: viewController)
    }

    // MARK: - Tests

    func testViewControllerSetter() {
        XCTAssertEqual(
            sut.viewController,
            viewController,
            "View controller not set"
        )
    }
}
