import Foundation
import PackageA
import SwiftDate

public class SubProjectA {
    public static func printPackageA() {
        Test.printTest(string: "Sub Project A works")
        print(time())
    }
    
    static func time() -> String {
        let interval: TimeInterval = (2.hours.timeInterval) + (34.minutes.timeInterval) + (5.seconds.timeInterval)
        return interval.toClock()
    }
}
