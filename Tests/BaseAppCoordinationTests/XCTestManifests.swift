import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BaseViewControllerTests.allTests),
        testCase(SceneDelegateTests.allTests)
    ]
}
#endif
