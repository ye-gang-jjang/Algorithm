import Foundation

func solution(_ chicken:Int) -> Int {
    var coupon = chicken
    var remainCoupon = 0
    var result = 0
    
    while (coupon + remainCoupon >= 10) {
        var tmp1 = (coupon + remainCoupon) / 10
        var tmp2 = (coupon + remainCoupon) % 10
        
        coupon = tmp1
        remainCoupon = tmp2
        result += coupon
    }
    return result
}