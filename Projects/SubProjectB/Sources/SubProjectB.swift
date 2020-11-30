import Foundation
import PackageA

public class SubProjectB {
    public static func printPackageA() {
        Test.printTest(string: "Sub Project B works")
    }
}
