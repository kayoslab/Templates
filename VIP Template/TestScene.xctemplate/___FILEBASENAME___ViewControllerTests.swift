import XCTest
import SnapshotTesting
@testable import GMR

/**
  Tests the `___VARIABLE_sceneName:identifier___ViewController's` implementation. This will mostly use
  snapshot testing for the user interface. To fill the `___VARIABLE_sceneName:identifier___ViewController`
  with testable data, adapt the `___VARIABLE_sceneName:identifier___ViewModel's` implementation.
 */
class ___VARIABLE_sceneName:identifier___ViewControllerTests: XCTestCase {

    private let recordSnapshots = true

    // MARK: - Subject under test

    // swiftlint:disable:next implicitly_unwrapped_optional
    private var sut: ___VARIABLE_sceneName:identifier___ViewController!

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
        sut = StoryboardScene.___VARIABLE_sceneName:identifier___.<#T##identifier#>.instantiate()
    }

    // MARK: - Tests

    func testDisplaySomething() {

        // TODO: Test view controller

        let viewModel = ___VARIABLE_sceneName:identifier___ViewModel()
        sut.update(with: viewModel)

        assertSnapshot(matching: sut, as: .image(on: .iPhoneX), record: recordSnapshots)
    }

    func testViewControllerOutputSetter() {
        XCTAssertNotNil(sut.output, "View controller output not set")
    }
}
