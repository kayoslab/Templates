import XCTest
@testable import GMR

/**
  Tests the `___VARIABLE_sceneName:identifier___Configurator's` implementation.
 */
class ___VARIABLE_sceneName:identifier___ConfiguratorTests: XCTestCase {

    // MARK: - Subject under test

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var sut: ___VARIABLE_sceneName:identifier___ViewController!

    // MARK: - Test lifecycle

    override func setUp() {
        super.setUp()

        sut = StoryboardScene.___VARIABLE_sceneName:identifier___.<#T##identifier#>.instantiate()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Tests

    func testOutputSetter() {
        XCTAssertNotNil(sut.output, "View controller output not set")
    }
}
